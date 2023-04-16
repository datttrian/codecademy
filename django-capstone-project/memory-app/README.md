# Memory App

A web-app allows users to authenticate and store their text-based memories about certain places they have visited and share them with others.

# Description

The website allows users to create memories by logging in, granting access to basic information, and then adding places with comments. Users can view their memories on the homepage and add new ones. A logout button is available, and access to saved places is restricted to the user who created them. Upon re-login, the user can see all their added places.

# Packages Used

This project is built using the following packages:

- Django: A high-level Python web framework that enables rapid development of secure and maintainable websites.
- django-allauth: A Django package that provides authentication and registration functionality via various third-party providers.
- dj-places: A package for Django that provides a model field and form field for geographic data based on OpenStreetMap.

# Features

- [x] The app is implemented using the Django framework and written considering standards (PEP8, linters and Django coding style).
- [x] The app uses Bootstrap for styles.
- [ ] The app covers core functionality with unit tests (Memory creation and Memory list fetch).
- [ ] Tests execution on pushing new commits using Github actions.
- [ ] The project is started locally using docker/docker-compose.
