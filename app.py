
from flask import Flask, jsonify, request
from flask_cors import CORS
import json, os

app = Flask(__name__, static_url_path='/static', static_folder='static')
CORS(app)

def load(file):
    return json.load(open(file)) if os.path.exists(file) else []

def save(file, data):
    with open(file, 'w') as f:
        json.dump(data, f, indent=2)

@app.route('/products', methods=['GET', 'POST'])
def products():
    if request.method == 'GET':
        return jsonify(load('products.json'))
    else:
        data = request.get_json()
        all_data = load('products.json')
        all_data.append(data)
        save('products.json', all_data)
        return jsonify({'message': 'Produkt gespeichert'}), 201

@app.route('/team', methods=['GET', 'POST'])
def team():
    if request.method == 'GET':
        return jsonify(load('team.json'))
    else:
        data = request.get_json()
        all_data = load('team.json')
        all_data.append(data)
        save('team.json', all_data)
        return jsonify({'message': 'Teammitglied gespeichert'}), 201

@app.route('/products/<name>', methods=['DELETE'])
def delete_product(name):
    all_data = [d for d in load('products.json') if d['name'] != name]
    save('products.json', all_data)
    return jsonify({'message': 'Produkt gelöscht'})

@app.route('/team/<name>', methods=['DELETE'])
def delete_member(name):
    all_data = [d for d in load('team.json') if d['name'] != name]
    save('team.json', all_data)
    return jsonify({'message': 'Mitglied gelöscht'})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
