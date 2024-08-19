#trien khia Flask HTTP API

from flask import Flask

app = Flask(__name__)

@app.route('/')

def hello():
    return "hello thanh"

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port='5002', use_reloader=False)
    #thay doi nhanh b