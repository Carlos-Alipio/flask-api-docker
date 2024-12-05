from flask import Flask, jsonify, request

app = Flask(__name__)

@app.route('/')
def home():
    return jsonify({"message": "Bem-vindo à API Flask!"})

@app.route('/echo', methods=['POST'])
def echo():
    data = request.get_json()
    return jsonify({"received": data})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5001)
