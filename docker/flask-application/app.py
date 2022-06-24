from flask import Flask, abort
from subprocess import check_output, CalledProcessError

app = Flask(__name__)

@app.route('/healthcheck')
def healthcheck():
    return "health OK"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=3000)
