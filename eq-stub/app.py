import datetime
import json
from flask import Flask, Response, request

app = Flask(__name__)

flush_requests = []


@app.route('/flush', methods=['POST'])
def flush():
    token = request.args['token']
    if not token:
        return Response(status=403)
    flush_requests.append({'timestamp': str(datetime.datetime.utcnow()), 'token': token})
    return Response(status=200)


@app.route('/log/flush', methods=['GET'])
def get_flush():
    return json.dumps(flush_requests), 200


@app.route('/log/reset', methods=['GET'])
def reset():
    flush_requests.clear()
    return {}, 200


if __name__ == '__main__':
    app.run(host="0.0.0.0")
