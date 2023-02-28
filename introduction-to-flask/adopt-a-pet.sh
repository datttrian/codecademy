red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`
echo "${green}>>> Removing project directory if exists${reset}"
rm -rf env
echo "${green}>>> Creating virtualenv${reset}"
virtualenv env
echo "${green}>>> Activating the venv${reset}"
source env/bin/activate
echo "${green}>>> Upgrading pip version${reset}"
pip install -U  --upgrade pip
echo "${green}>>> Installing Django${reset}"
pip install flask
echo "${red}>>> Starting the Project${reset}"
project_name='adopt-a-pet'
rm -rf $project_name
django-admin startproject $project_name && cd $project_name
echo "${red}>>> Starting the App ${reset}"
app_name="routes"
# Install Flask
pip install Flask

# Create a Flask app
mkdir adopt-a-pet && cd adopt-a-pet

cat << 'EOF' >> helper.py
pets = {
    'dogs': [
        {
            'name': 'Spot',
            'age': 2,
            'breed': 'Dalmatian',
            'description': 'Spot is an energetic puppy who seeks fun and adventure!',
            'url': 'https://content.codecademy.com/programs/flask/introduction-to-flask/dog-spot.jpeg'
        },
        {
            'name': 'Shadow',
            'age': 4,
            'breed': 'Border Collie',
            'description': 'Eager and curious, Shadow enjoys company and can always be found tagging along at your heels!',
            'url': 'https://content.codecademy.com/programs/flask/introduction-to-flask/dog-shadow.jpeg'
        }
    ],
    'cats': [
        {
            'name': 'Snowflake',
            'age': 1,
            'breed': 'Tabby',
            'description': 'Snowflake is a playful kitten who loves roaming the house and exploring.',
            'url': 'https://content.codecademy.com/programs/flask/introduction-to-flask/cat-snowflake.jpeg'
        }
    ],
    'rabbits': [
        {
            'name': 'Easter',
            'age': 4,
            'breed': 'Mini Rex',
            'description': 'Easter is a sweet, gentle rabbit who likes spending most of the day sleeping.',
            'url': 'https://content.codecademy.com/programs/flask/introduction-to-flask/rabbit-easter.jpeg'
        }
    ]
}
EOF

# Add basic Flask code to app.py
cat << 'EOF' >> app.py
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
EOF

# Run the Flask app
export FLASK_APP=app.py
export FLASK_ENV=development
flask run
