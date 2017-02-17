import getopt
import sys
from flask import Flask, request, render_template
import cherrypy
import wsgiserver
from functools import wraps
from models import User, Account
from database import db_session
import simplejson as json
app = Flask(__name__)
DEFAULT_PORT = 8080
makejson = json.dumps




def error(text):
    return makejson({"error" : text})

def success(text):
    return makejson({"success" : text})


@app.route('/login', methods=['POST'])
def login():
    u = User.query.filter(User.username == request.form["username"]).first()
    #print u.username
    #print u.password
    print ( request.form["username"])
    if not u or u.password != request.form["password"]:
        return error("E1")
    
    return makejson(s.values)



@app.route('/transfer', methods=['POST'])
def transfer():
    a=request.form["from_account"]
    b=request.form["to_account"]
    print ( a )
    print ( b )
    from_account = Account.query.filter(Account.account_number == int(a)).first()
    to_account = Account.query.filter(Account.account_number == int(b)).first()
    total = int(request.form["amount"])
    #transfer money
    to_account.balance += total
    from_account.balance -= total
    db_session.commit()
    return success("S1")

def usage():
    print ( "Paladion Insecure Bank Application" )
    print ( "Options: " )
    print ( "  --portno p     Webserver runs on portno p with default as 8080" )
    print ( "  --help      	Usage Details" )


if __name__ == '__main__':
    port_no = DEFAULT_PORT
    ssl = False
    opts, args = getopt.getopt(sys.argv[1:], "", ["help", "port_no="])
    for o, a in opts:
        if o == "--help":
            usage()
            sys.exit(2)
        
        
        elif o == "--port_no":
            port_no = int(a)
# The following snippet let you run the Flask app on top of the WSGI server shipped with CherryPy at specified port
    d = wsgiserver.WSGIPathInfoDispatcher({'/': app})
    server = wsgiserver.CherryPyWSGIServer(('0.0.0.0', port_no), d, timeout=300)

    print ( "WebServer running on port %d %s" % (port_no, "(debug enabled)" if app.debug else "") )
    
    try:
        server.start()
    except KeyboardInterrupt:
        server.stop()
