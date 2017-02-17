

from drozer.modules import Module
class Info(Module):
	name="Daniel Francisco Tapia Rybertt"
	description="View info of android device"
	examples="run ex.device.info"
	author="danielftapiar"
	date="01-27-17"
	license="MIT"
	path=["ex", "device"]


	def execute(self, arguments):
		build = self.new("android.os.Build")
		self.stdout.write("Getting device info ..\n")
		self.stdout.write("[*] BOARD : %s \n " % (build.BOARD))
		self.stdout.write("[*] BOOTLOADER : %s \n " % (build.BOOTLOADER))
		self.stdout.write("[*] BRAND : %s \n " % (build.BRAND))
		self.stdout.write("[*] CPU_ABI : %s \n " % (build.CPU_ABI))
		self.stdout.write("[*] CPU_ABI2 : %s \n " % (build.CPU_ABI2))
		self.stdout.write("[*] DEVICE : %s \n " % (build.DEVICE))
		self.stdout.write("[*] DISPLAY : %s \n " % (build.DISPLAY))
		self.stdout.write("[*] FINGERPRINT : %s \n " % (build.FINGERPRINT))
		self.stdout.write("[*] HARDWARE : %s \n " % (build.HARDWARE))
		self.stdout.write("[*] MODEL : %s \n " % (build.MODEL))
		self.stdout.write("[*] ID : %s \n " % (build.ID))
		self.stdout.write("[*] MANUFACTURER : %s \n " % (build.MANUFACTURER))
		self.stdout.write("[*] PRODUCT : %s \n " % (build.PRODUCT))
		self.stdout.write("[*] RADIO : %s \n " % (build.RADIO))
		self.stdout.write("[*] SERIAL : %s \n " % (build.SERIAL))
		self.stdout.write("[*] TYPE : %s \n " % (build.TYPE))
		self.stdout.write("[*] USER : %s \n " % (build.USER))

