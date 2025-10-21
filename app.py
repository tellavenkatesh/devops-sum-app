from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/sum', methods=['GET'])
def get_sum():
    a = int(request.args.get('a', 0))
    print(a)
    b = int(request.args.get('b', 0))
    return jsonify({"sum": a + b})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
