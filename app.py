from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/hello', methods=['GET'])
def hello_world():
    return jsonify({"message": "Hello World da minha API Flask!"}), 200

if __name__ == '__main__':
    # Aqui o host='0.0.0.0' é importante para o Docker
    app.run(host='0.0.0.0', port=5000, debug=True)
