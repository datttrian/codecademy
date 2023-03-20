# Sharing Your Django App with Others

You’ve learned the basics of a Django app and built out core
functionality in Codecademy. Now it’s time to take the next step and
learn how to deploy your site to share it with the internet! The first
step would be to start working on a Django project on your local
computer. In this module, you’ll learn how to install Django and how to
use Python anywhere to deploy your site. When you’re ready, click next
to get started.

In this module, you’ll learn how to deploy a Django app on the internet!

# Installing Django

In this article, you will learn how to install a virtual environment
then install Django in the virtual environment all on your own computer!

## Setting Up

Django is a high-level web framework written in
<a href="https://www.codecademy.com/catalog/language/python"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Python</a>, used to quickly develop complex
database-heavy websites like Instagram, Robinhood, and Youtube.

Since Django is based on Python you’ll need to install both
<a href="https://www.codecademy.com/articles/install-python3"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Python and pip</a>, Python’s package-management software
which will allow us to install Django and other third-party packages.
Read through and follow our
<a href="https://www.codecademy.com/articles/install-python3"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Installing Python 3 and Python Packages</a> article if
you need some guidance. You can check to see if Python and pip are
installed by using the following commands in the command-line tool:

```bash
python3 --version
```

```bash
pip --version
```

If both were installed properly, the version that was installed will
display.

Now that you’ve made sure that your computer has Python and pip, there’s
still one more step you need to take before installing Django which is
installing a virtual environment.

## What’s a Virtual Environment?

Sometimes you’ll need to work on multiple projects on the same computer.
However, each project may require installing different third-party
packages and libraries. Since you don’t want these packages and
libraries from one project to spill over into all of your projects,
virtual environments allow you to keep your projects isolated from each
other. You can think of it as a protective bubble that allows you to
install packages or configure settings without affecting any other
projects. First, install a virtual environment and then install Django
in the virtual environment.

## Installing a Virtual Environment

In this walkthrough, you’ll go over how to install a virtual environment
in Windows and MacOS. The first step you’ll need to take is to launch
the <a href="https://www.codecademy.com/articles/command-line-interface"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">command line interface</a>.

On **Windows** it’s called the *Command Prompt*:

<img
src="https://static-assets.codecademy.com/skillpaths/django/deploying/ms_command_prompt.png"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="Windows Command Prompt" />

On **Mac** it’s called the *Terminal*: <img
src="https://static-assets.codecademy.com/skillpaths/django/deploying/mac_terminal_v2.png"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="MacOs Terminal" />

Depending on your operating system you can execute the following
commands to install a virtual environment:

1.  The first command you’ll need to run is:

    ```bash
    python3 -m venv project_env
    ```

    The `venv` is a module that expects an environment name followed
    after it. The environment name is what your virtual environment will
    be called, almost like naming a file. Make sure there are no spaces
    in the environment name as it wouldn’t be recognized later on,
    instead use camel case or `_` or `-` in place of space. In this
    case, the example’s environment name is `project_env`, but you can
    name it whatever you want.

2.  After the command is executed, your environment should be created in
    a few seconds. There will be no indication that the environment is
    created, however, you just need to activate it. Activation is a
    little different depending on what operating system you’re using:

    On Windows, you need to begin the command with your environment name
    followed by `Scripts\activate.bat` like so:

    ```bash
    project_env\Scripts\.activate.bat
    ```

    On Mac, you need to begin the command with `source` followed by your
    environment name followed by `bin/activate` like so:

    ```bash
    source project_env/bin/activate
    ```

    You can tell if you’re in the virtual environment because your
    command prompt/terminal will have the name of the environment in
    parenthesis before every directory like so: `(project_env)`. Same on
    both Windows and Mac.

    On Windows:

    ```bash
    (project_env) c:\Users\username>
    ```

    On Mac:

    ```bash
    (project_env) username ~ %
    ```

## Installing Django in our virtual environment

Now that you have your virtual environment installed and activated, you
can install Django. Installing Django uses the same steps for both
Windows and Mac.

1.  The first command we’ll need to run is

    ```bash
    pip3 install django
    ```

    This command will automatically install the latest version of Django
    for use.

    However, if we want to install a specific version of Django we can
    use the following command:

    ```bash
    pip3 install Django==3.2
    ```

    This might be useful if you’re in a team and everyone needs to be in
    a specific version of Django.

2.  Whichever command you decide to use, it may take up to 30 seconds or
    longer to install Django depending on your internet speed. If Django
    was successfully installed you’ll get a message of
    `Successfully installed django-X.X`. Where the `X.X` is the version
    number, like `3.2`. <img
    src="https://static-assets.codecademy.com/skillpaths/django/deploying/django_successful_installation.png"
    class="img__1JGFO2nlisObc3KeOSGPRp"
    alt="Django Installation success Message" />

3.  You can further check what version of Django you’re on by using the
    command:

    ```bash
    django-admin --version
    ```

## Conclusion

Congratulations, you learned how to install a virtual environment so
that you can properly work on a project on your own computer! Then you
were able to install Django in your virtual environment and check what
version was installed. Well done on taking your first steps to master
Django, have fun creating amazing projects!

# Deploy Your App to PythonAnywhere

Learn how to use PythonAnywhere to deploy your Django app!

## Hosting your app on the web

Now that you’ve created your Django app locally, you may want to
*deploy* or publish it on the web to share with other people! There are
many hosting services available, and there is a wide range of features
and pricing among them. This article will walk you through deploying
your app on <a href="https://www.pythonanywhere.com/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">PythonAnywhere</a>, a site that
specializes in Python-based app deployments and provides a free tier
option.

### Requirements

Before proceeding, you should have the following:

-   A <a
    href="https://www.codecademy.com/courses/deploy-a-website/lessons/github-pages"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank">GitHub account</a>
-   An account on <a href="https://www.pythonanywhere.com/pricing/"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank" rel="noopener">PythonAnywhere</a>
    -   Select the “Create a Beginner account” option

## PythonAnywhere

If you’re not familiar with them, take the opportunity to learn about
PythonAnywhere’s service and set up an account. Login and take a look at
the dashboard options. Your deployed app will reside at the url
`<your username>.pythonanywhere.com` when you are finished.

### Setting Up Your Project

This article will use the app found at
<a href="https://github.com/Codecademy/djangovet"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Codecademy’s Django Example
repository</a>, this is the Vetoffice app that you’ve built during the
span of this Skill Path. Feel free to fork this repository to your own
GitHub account and follow along this article. You are also welcome to
use your own project if you like but you may have to modify some of
these steps.

**Note**: if using your own app, make sure to run the following command
before doing your last push:

```bash
$ pip freeze > requirements.txt
```

This command creates a **requirements.txt** file that can be used to
install the necessary project components on the hosting site. Make sure
you commit and push this file to your repo.

### Setting Up PythonAnywhere Dashboard

1\) Once logged in, navigate to your dashboard.

2\) Find the Console section on the left side of the dashboard and
launch a new bash console.

<img
src="https://static-assets.codecademy.com/skillpaths/django/deploying/pythonanywhere_console.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="PythonAnywhere&#39;s dashboard to show how to create a new console by clicking the $Bash button" />

3\) A console will launch in the same window. A `pwd` command at the
prompt will show you are in your home directory
`/home/<your account name>`

At the prompt clone the Github repo for the app.

```bash
$ git clone https://github.com/<github username>/<repo name>.git
```

A `tree <repo name>` at the command prompt will show your success.

4\) Navigate to your repo’s home directory:

```bash
$ cd <repo name>
```

5\) You will now have to create a virtual environment for your code to
run. PythonAnywhere prefers you use the script `mkvirtualenv` to create
and activate your virtual environment. At the time of this writing
PythonAnywhere’s latest version of Python is 3.8.

```bash
$ mkvirtualenv --python=python3.8 <some env name>
```

Make a note of the environment name you chose. You’ll need to enter the
name in the web app settings later.

6\) Confirm your **requirements.txt** is present in the directory using
`ls`. If it is you may run the next command.

```bash
$ pip install -r requirements.txt
```

**Note**: If you didn’t create a **requirements.txt** you can also
install the latest Django version manually by running

```bash
$ pip install django
```

7\) PythonAnywhere requires a few configuration items in its web
application console. You will need to have the following handy for the
next steps:

• Your application’s root folder (where **manage.py** is) • The project
root folder (where **settings.py** is) • Your virtual environment name

8\) In the web page where you’re using the PythonAnywhere console you’ll
notice a main menu toggle in the upper right corner. Click that and
choose **Web**.

<img
src="https://static-assets.codecademy.com/skillpaths/django/deploying/pythonanywhere_console_menu.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="PythonAnywhere&#39;s console&#39;s main menu toggle which expands to many options, select the &quot;Web&quot; option" />

You will now set up the Web application.

9\) Click the blue buttons saying **Add a New Web App**

<img
src="https://static-assets.codecademy.com/skillpaths/django/deploying/pythonanywhere_add_new_web_app.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="PythonAnywhere&#39;s button that says &quot;Add a new web app&quot;" />

10\) The next screen will give you a choice for a hosting web address.
Choose the domain name, `<your-user-name>.pythonanywhere.com`.

11\) Once you have chosen your web address, click **Next**. The next
screen will show you various frameworks to configure. It may be tempting
to choose Django but this menu option is only for new projects. Your app
should be already created, so choose **Manual Configuration**:

<img
src="https://static-assets.codecademy.com/skillpaths/django/deploying/pythonanywhere_select_framework.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="PythonAnywhere&#39;s prompt to select a Python Web framework, select &quot;Manual Configuration&quot;" />

12\) Once you choose **Manual Configuration**, you’ll be presented with
various versions of Python. Choose the newest version of Python
available in the list (At the time of this article it would be **Python
3.8**)

Once you choose your Python version you’ll see a blurb about WSGI files.
Read this; it will make sense later. Click **Next** when finished.

13\) The next screen is where you have to enter details about your
project. The areas on this page you need to modify appear in:

```html
<span style="color:red">_`red italic`_</span>
```

For now, skip down to the `virtualenv` path.

<img
src="https://static-assets.codecademy.com/skillpaths/django/deploying/pythonanywhere_virtualenv.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="PythonAnywhere&#39;s virtualenv section which allows you to add in the path to a virtualenv" />

Configure it to be
`/home/<your username>/.virtualenvs/<your virtualenv name>`. **Tip**: if
you just type the name of your virtual environment, PythonAnywhere will
automatically add the rest of the path.

14\) Next, scroll down to the **Static Files** area. If you are using
static files in the provided
<a href="https://github.com/Codecademy/djangovet"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">GitHub repo</a>, you will create an entry
and set the “URL” to be `/static/` and the “Directory” to be the full
path to your static directory on PythonAnywhere:
`/home/yourname/djangovet/vetoffice/static`.

Notice there is a **Security** section. You will return to this later
when you secure your site.

Now scroll up above to the **Code** section.

<img
src="https://static-assets.codecademy.com/skillpaths/django/deploying/pythonanywhere_source_code.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="PythonAnywhere&#39;s code section which allows you to add the path to your web app" />

Set the working directory for your code to be
`/home/<your username>/<your repo name>`. **Tip**: If you just type the
name of your repo PythonAnywhere will automatically fill in your home
path.

15\) The last entry in the **Code** area is a link to the WSGI file
PythonAnywhere created for you. This is different from the one in your
project root. Go ahead and click it so it opens in an editor.

Delete all sections except the one starting with:

```
# +++++++++++ DJANGO +++++++++++
```

and then uncomment the lines of Python code in this block starting with
`import os`. Tip: To toggle the comments off in one step, select from
`import os` through `application = get_wsgi_application()` and press
<span class="kbd">Cmd</span>+<span class="kbd">/</span> on your keyboard
(Mac) or <span class="kbd">Ctrl</span>+<span class="kbd">/</span> on
Windows.

Here’s how your file should look like afterward, but, make sure to
change `yourname` to your PythonAnywhere account name and rename
`mysite` in the code to be the name of your project!

```python
import os
import sys
#
## assuming your django settings file is at '/home/yourname/mysite/mysite/settings.py'
## and your manage.py is is at '/home/yourname/mysite/manage.py'
path = '/home/yourname/mysite'
if path not in sys.path:
    sys.path.append(path)
#
os.environ['DJANGO_SETTINGS_MODULE'] = 'mysite.settings'
#
## then:
from django.core.wsgi import get_wsgi_application
application = get_wsgi_application()
```

16\) Click Save.

17\) Return to the PythonAnywhere’s web app console, by clicking the
right-corner menu. Your PythonAnywhere configuration’s now set up! Let’s
now touch up your project to make it safe and deployable.

## Security Configuration

At this point, your web app could launch but it wouldn’t work correctly
and it wouldn’t be secure. You have some items to clean up in
**settings.py**. From this point forward, **settings.py** will be
different in production (what users interact with) from what it is in
development.

1\) Because of this, if you are using your own repo, in your local
development environment, add **/projectname/settings.py** to your
**.gitignore** file. After you complete this step, open **settings.py**
in your local development environment. You will need to copy information
from this file for the next step. If you are using
<a href="https://github.com/Codecademy/django-example/tree/main"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Codecademy’s repo</a> just refer to the
**settings.py** in your PythonAnywhere directory.

2\) Now, back in your PythonAnywhere web console, you’ll find the “Go to
Directory” link next to your “Working directory” setting. Click that and
you will open a file browser with context at the root of your home
folder.

On the left side of the screen navigate to your project folder (where
manage.py resides). You will create a new file here named **keys.json**.

3\) In the Files area on the right half of the screen, enter
**keys.json** into the file name entry box. Then click **New empty
file**.

<img
src="https://static-assets.codecademy.com/skillpaths/django/deploying/pythonanywhere_new_empty_file.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Creating a new file in the Files area" />

Before you enter the code in this file, you will need to copy your
`SECRET_KEY` value out of your local **settings.py** or take this
opportunity to generate another random string to use.

Open the **keys.json** file you just created and enter the following:

```
{
   "SECRETKEY": "<paste in the long cryptic key you took from the settings.py file or make up a random string>"
}
```

Now, it’s important to remove the secret key in the *production* version
of **settings.py**. This will be fixed soon.

With **keys.json** you now have a file for any other keys and
credentials your app might need later.

Click **Save** to save your changes.

Use the path breadcrumbs in the upper left to return to the directory in
the file browser.

4\) In the PythonAnywhere file browser, you will now navigate to the
**settings.py** file in your app folder and open it so it’s available in
the editor.

Add these two lines at the top of **settings.py**:

```python
import json
from django.core.exceptions import ImproperlyConfigured
```

You will soon need this code to help hide some settings info in the file
system rather than exposing it in **settings.py**.

5\) Add the following code which will pull secure information from
**keys.json** which you created earlier. This key file will be loaded as
a Python dictionary with key:value pairs courtesy of the `json.loads()`
method. Then, we’ll define the function `getKey()` to retrieve a
particular key.

```python
KEYSDIR = str(BASE_DIR)+"/keys.json"
 
with open(KEYSDIR) as k:
    project_keys = json.loads(k.read())
 
def getKey(setting,project_keys=project_keys):
    try:
        return project_keys[setting]
    except KeyError:
        errorMessage = "Set the {} env var".format(setting)
        raise ImproperlyConfigured(errorMessage)
```

6\) Find the `SECRET_KEY` setting. This is the first thing you need to
hide. Change this line to read:

```python
SECRET_KEY = getKey("SECRETKEY")
```

You are invoking the `getKey()` function to return the value associated
with the “SECRETKEY” in the JSON file.

7\) Let’s continue fixing **settings.py**.

Find the `ALLOWED_HOSTS` global variable and inside the list, add the
string, making sure to change `accountname` to your PythonAnywhere
account name:

```python
'accountname.pythonanywhere.com'
```

This line tells Django to trust the PythonAnywhere site to run your
project.

8\) Next, find `DEBUG = True` and change it to

```python
DEBUG = False
```

In production, you don’t want Django’s helpful `DEBUG` mode to expose
the inner workings of your app!

**NOTE**: We are using SQLite as our database which is an insecure
database platform. Therefore we don’t have any database credentials to
secure. However, if you were using another database, such as
PostgreSQL/PostGIS, you would also want to use `get_key()` to retrieve
those values as well, for example:

```python
DATABASES = {
    'default': {
        'ENGINE': 'django.contrib.gis.db.backends.postgis',
        'NAME': myprojdb,
        'USER': get_key("DBUSER"),
        'PASSWORD': get_key("DBPASSWORD"),
        'HOST': get_key("DBHOST"),
        'PORT': '5432',
    }
```

Click **Save** to save your changes.

9\) Finally, return to the web console and scroll down to the
**Security** section. Note that PythonAnywhere provides you with an
HTTPS certificate automatically. HTTPS gives you an extra layer of
protection and you get this for free!

You will also want to **Force HTTPS** by clicking the slider to
**Enabled**:

<img
src="https://static-assets.codecademy.com/skillpaths/django/deploying/pythonanywhere_source_code.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="PythonAnywhere&#39;s console which allows you to turn on HTTPS by sliding the toggle" />

10\) You might also want to consider password-protecting your site until
your development work is complete. If so you can do so here:

<img
src="https://static-assets.codecademy.com/skillpaths/django/deploying/pythonanywhere_password_protect.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="PythonAnywhere&#39;s option to enable/disable password protection" />

## Launch!

Scroll to the top of the web console and click the green **Reload**
button. You should find your app at `<your username>.pythonanywhere.com`
in your browser. Great job! You’ve worked through the deployment steps
and can now share the results of your hard work on the internet!

## (Optional) Admin Site Adjustments

Right now your app should be running and look similar to how it did in
development. However, if you try to load the admin site at
`yourname.pythonanywhere.com/admin` you may notice it looks a little…
off. When you log in with your admin account, it might look something
like this:

<img
src="https://static-assets.codecademy.com/skillpaths/django/deploying/unstylized_admin.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="display of the admin page without CSS" /> Note: If you are working
with the repo, the admin credentials are

Username: vetadmin Password: il0vepets (where the ‘o’ in love is a zero)

You may recognize this page as missing its CSS styling. The built-in CSS
is provided by the Django framework and loads easily while you’re in
development, but now that you have published your site to production,
you will need to gather up this CSS and make it part of your web app. To
do this follow these steps.

The first thing you will need to do is create and assign a new variable
in **settings.py**. It’s best to put this variable immediately below
`STATIC_URL` to stay organized. This setting needs to be the absolute
path for the static files on PythonAnywhere’s server. The example is
what you’d use if you are using Codecademy’s repo:

```python
STATIC_ROOT = '/home/accountname/djangovet/vetoffice/static'
```

Next, in PythonAnywhere you’ll want to navigate to your bash shell, or
start a new one. Change your directory to be in the
`home/username/djangovet` folder (or wherever your project’s manage.py
file resides) and type:

```bash
$ python3.8 manage.py collectstatic
```

This will be followed by a confirmation question. Type `yes` and
proceed.

You’ll see warnings when the command finished and may ignore them. There
is no need to reload your site in the web console. Simply refresh your
admin page and it should look like the pretty page you remember.

<img
src="https://static-assets.codecademy.com/skillpaths/django/deploying/stylized_admin.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="display of the admin page with CSS" />

Congratulations! You are now fully deployed with a working and stylized
admin panel!
