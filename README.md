# Places Remember

A web-app that will allow users to store their memories about certain places they have visited.

# Getting Started

First clone the repository from Github and switch to the new directory:

    $ git clone https://github.com/dattranvnu/places-remember
    $ cd places-remember/places_remember
    
Activate the virtualenv for your project.
    
Install project dependencies:

    $ pip install -r requirements/local.txt
    
    
Then simply apply the migrations:

    $ python manage.py migrate
    

Run the development server:

    $ python manage.py runserver

# Features

- [x] The app is implemented using the Django framework and written considering standards (PEP8, Django coding style).
- [x] Commit style follows https://chris.beams.io/posts/git-commit/.
- [x] For styles, the app uses Bootstrap.
- [ ] The app covers core functionality with unit tests (Memory creation and Memory list fetch).
- [ ] Tests execution on pushing new commits using Github actions.
- [ ] It is possible to start the project locally using docker/docker-compose.
- [ ] In the README you have a badge with current test coverage (https://coveralls.io/).
- [ ] You have a configuration for linters. Linters should run on commit/push using GitHub action.
- [ ] The app is deployed to any cloud service like https://www.heroku.com/.