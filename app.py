from flask import Flask, request

app = Flask(__name__)

@app.route('/', methods=['GET'])
def hello():
    name = request.args.get('name') or 'World'
    return f'Hello, {name}!'

if __name__ == "__main__":
    print('Running in debug mode...')
    app.run(debug=True)
