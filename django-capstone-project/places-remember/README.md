# Places Remember

A web-app that will allow users to authenticate via Facebook and store their text-based memories about certain places they have visited and share them with others.

# Getting Started

- Clone the repository from Github and switch to this directory
- Activate a environment for the project
- Install project dependencies
- Apply the migrations
- Run the development server

```bash
rm -rf codecademy && git clone https://github.com/datttrian/codecademy
cd codecademy/django-capstone-project/places-remember
pip install -r requirements.txt
python manage.py makemigrations && python manage.py migrate
python manage.py runserver
```

# Features

- [x] The app is implemented using the Django framework and written considering standards (PEP8, Django coding style).
- [x] Commit style follows https://chris.beams.io/posts/git-commit/.
- [x] For styles, the app uses Bootstrap.
- [ ] The app covers core functionality with unit tests (Memory creation and Memory list fetch).
- [ ] Tests execution on pushing new commits using Github actions.
- [ ] It is possible to start the project locally using docker/docker-compose.
- [ ] README has a badge with current test coverage (https://coveralls.io/).
- [ ] The app is configured for linters.
- [ ] The app is deployed to any cloud service like https://www.heroku.com/.
