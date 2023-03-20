from flask import Flask
from helper import pets

app = Flask(__name__)


@app.route('/')
def index():
    return '''
  <h1>Adopt a Pet!</h1>
  <p>Browse through the links below to find your new furry friend: </p>
  <ul><li><a href = '/animals/dogs'>Dogs</a></li>
  <li><a href="/animals/cats">Cats</a></li>
  <li><a href="/animals/rabbits">Rabbits</a></li>
  </ul>
  '''


@app.route('/animals/<pet_type>')
def animals(pet_type):
    html = f'<h1>List of {pet_type}</h1>'
    html += "<ul>"
    index = 0
    for pet in pets.get(pet_type):
        html += f"<li><a href='/animals/{pet_type}/{index}'>{pet.get('name')}</a></li>"
        index = index + 1
    html += "</ul>"
    return html


@app.route('/animals/<pet_type>/<int:pet_id>')
def pet(pet_type, pet_id):
    new_pet = pets.get(pet_type)[pet_id]
    return f'''
  <h1>{new_pet.get('name')}</h1>
  <img src={new_pet.get('url')}>
  <p>{new_pet.get('description')}</p>
  <ul>
  <li>Breed: {new_pet.get('breed')}</li>
  <li>Age: {new_pet.get('age')}</li>
  '''


app.run('0.0.0.0', debug=True)
