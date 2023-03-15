# Introduction: Git and GitHub, Part I

See what you’ll be learning in the Git and GitHub, Part I Unit.

The goal of this unit is to introduce you to the Git versioning
technology. Understanding Git is a crucial tool in your developer
toolkit—but don’t worry if it doesn’t stick right away! Practice is
crucial with Git, which is why we’re introducing it early in the Path.
Additionally, you’ll understand how to take the repositories on your
computer and put them online with GitHub. Having your work on Github
will be important when you apply for jobs, and crucial to that will be
having a solid README.md, which you’ll write with markdown.

After this unit, you will be able to:

- Version control projects using Git
- Backtrack in Git
- Host a codebase online using GitHub repositories
- Use markdown to author a good README.md file

You will put all of this knowledge into practice with an upcoming
Portfolio Project. You can complete the Portfolio Project either in
parallel with or after taking the prerequisite content—it’s up to you!

Learning is social. Whatever you’re working on, be sure to connect with
the Codecademy community in the
<a href="https://discuss.codecademy.com/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">forums</a>. Remember to check in with the
community regularly, including for things like asking for code reviews
on your project work and providing code reviews to others in the
<a href="https://discuss.codecademy.com/c/project/1833"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">projects category</a>, which can help to
reinforce what you’ve learned.

# The Power of Git and GitHub

[Power of Git/Github](https://www.youtube.com/watch?v=zOZwEe9XW9s)

In this video we explore some of the capabilities found with Git and
Github, and take a look at how they’re used together in a project. The
video includes examples of using cloning repositories, Git terminal
commands such as \`git log\`, \`git commit\`, and \`git add\`, as well
as GitHub features like pull requests, pull request reviews, and adding
collaborators to repositories.

# Basic Git Workflow

## Hello Git

Git is a software that allows you to keep track of changes made to a
project over time. Git works by recording the changes you make to a
project, storing those changes, then allowing you to reference them as
needed.

We’ll learn Git by using it to help us write a screenplay called *Harry
Programmer and the Sorcerer’s Code*.

### Instructions

**1.**

We’ll get started by taking a look at the screenplay project.

In **scene-1.txt**, add this text:

    Harry Programmer and the Sorcerer’s Code: Scene 1

Then press `enter` to create a new empty line. Once you’ve created the
new line, click Run.

### Solution

    Harry Programmer and the Sorcerer’s Code: Scene 1
    Dumblediff: I should've known you would be here, Professor McGonagit.
    Harry Programmer and the Sorcerer’s Code: Scene 1

## git init

Now that we have started working on the screenplay, let’s turn the
**sorcerers-code** directory into a Git project. We do this with:

``` git
git init
```

The word `init` means *initialize*. The command sets up all the tools
Git needs to begin tracking changes made to the project.

### Instructions

**1.**

In the terminal, initialize a new Git project.

Notice the output:

    Initalized empty Git repository in /home/ccuser/workspace/sorcerers-code/.git/

The Git project was created. Click Next to continue.

### Solution

``` git
git init
```

    Reinitialized existing Git repository in /home/ccuser/workspace/sorcerers-code/.git/

## Git Workflow

Nice! We have a Git project. A Git project can be thought of as having
three parts:

1.  A *Working Directory*: where you’ll be doing all the work: creating,
    editing, deleting and organizing files
2.  A *Staging Area*: where you’ll list changes you make to the working
    directory
3.  A *Repository*: where Git permanently stores those changes as
    different *versions* of the project

The Git workflow consists of editing files in the working directory,
adding files to the staging area, and saving changes to a Git
repository. In Git, we save changes with a *commit*, which we will learn
more about in this lesson.

### Instructions

Take a look at the diagram. Before we move on, it will help to be
familiar with the three parts of the Git workflow. Click Next to
continue.

### Solution

<img src="https://content.codecademy.com/courses/learn-git/revised-git-diagram/git%20workflow_fullwidth.svg" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## git status

As you write the screenplay, you will be changing the contents of the
working directory. You can check the status of those changes with:

``` git
git status
```

### Instructions

**1.**

From the terminal, check the status of the **sorcerers-code** project.

In the output, notice the file in red under `untracked files`. Untracked
means that Git sees the file but has not started tracking changes yet.

### Solution

``` git
git status
```

    On branch master
    Changes not staged for commit:
      (use "git add <file>..." to update what will be committed)
      (use "git checkout -- <file>..." to discard changes in working directory)

            modified:   scene-1.txt

    Untracked files:
      (use "git add <file>..." to include in what will be committed)

            add_test.rb
            add_tracked_test.rb
            commit_test.rb
            init_test.rb
            wd_change_test.rb

    no changes added to commit (use "git add" and/or "git commit -a")

## git add

In order for Git to start tracking **scene-1.txt**, the file needs to be
added to the staging area.

We can add a file to the staging area with:

``` git
git add filename
```

The word `filename` here refers to the name of the file you are editing,
such as **scene-1.txt**.

### Instructions

**1.**

Add **scene-1.txt** to the staging area in Git. Recall that you will
need to identify the file by its name.

**2.**

Check the status of the project in Git.

In the output, notice that Git indicates the changes to be committed
with “new file: scene-1.txt” in green text. Here Git tells us the file
was added to the staging area.

### Solution

``` git
git add scene-1.txt
git status
```

    On branch master

    Initial commit

    Changes to be committed:
      (use "git rm --cached <file>..." to unstage)

            new file:   scene-1.txt

    Untracked files:
      (use "git add <file>..." to include in what will be committed)

            add_test.rb
            

## git diff

Good work! Now you know how to add a file to the staging area.

Imagine that we type another line in **scene-1.txt**. Since the file is
tracked, we can check the differences between the working directory and
the staging area with:

``` git
git diff filename
```

Here, `filename` is the actual name of the file. If the name of my file
was **changes.txt** the command would be

``` git
git diff changes.txt
```

### Instructions

**1.**

In the code editor, add this text to **scene-1.txt**:

    Dumblediff: I should've known you would be here, Professor McGonagit.

Click Run.

**2.**

From the terminal, use the new command to check the difference between
the working directory and the staging area.

Notice the output:

- “Harry Programmer and the Sorcerer’s Code: Scene 1” is in the staging
  area, as indicated in white.
- Changes to the file are marked with a `+` and are indicated in green.

**3.**

Add the changes to the staging area in Git. Recall that you will need to
identify the file by its name.

### Solution

    Harry Programmer and the Sorcerer’s Code: Scene 1
    Dumblediff: I should've known you would be here, Professor McGonagit.

``` git
git diff scene-1.txt
```

    diff --git a/scene-1.txt b/scene-1.txt
    index c33ce4c..d14d170 100644
    --- a/scene-1.txt
    +++ b/scene-1.txt
    @@ -1 +1,2 @@
     Harry Programmer and the Sorcerer’s Code: Scene 1
    +Dumblediff: I should've known you would be here, Professor McGonagit.

## git commit

A *commit* is the last step in our Git workflow. A commit permanently
stores changes from the staging area inside the repository.

`git commit` is the command we’ll do next. However, one more bit of code
is needed for a commit: the *option* `-m` followed by a message. Here’s
an example:

``` git
git commit -m "Complete first line of dialogue"
```

Standard Conventions for Commit Messages:

- Must be in quotation marks
- Written in the present tense
- Should be brief (50 characters or less) when using `-m`

### Instructions

**1.**

Make your first commit! From the terminal, type the command along with a
commit message. The message should describe the point of the commit.

If you’re having trouble thinking of a good commit message, reflect on
how the project has changed since it began.

### Solution

``` git
git commit -m "Add Dumblediff first Dumblediff dialogue to scene-1.txt"
```

## git log

Often with Git, you’ll need to refer back to an earlier version of a
project. Commits are stored chronologically in the repository and can be
viewed with:

``` git
git log
```

### Instructions

**1.**

From the terminal, log a list of your commits.

In the output, notice:

- A 40-character code, called a *SHA*, that uniquely identifies the
  commit. This appears in orange text.
- The commit author (you!)
- The date and time of the commit
- The commit message

Click “Next” to continue.

### Solution

``` git
git log
commit e3e591e72f556058d64192d68b8cc2792afe3f00
Author: codecademy <ccuser@codecademy.com>
Date:   Sun Mar 12 17:59:02 2023 +0000

    Add Dumblediff first Dumblediff dialogue to scene-1.txt
```

    commit e3e591e72f556058d64192d68b8cc2792afe3f00
    Author: codecademy <ccuser@codecademy.com>
    Date:   Sun Mar 12 17:59:02 2023 +0000

        Add Dumblediff first Dumblediff dialogue to scene-1.txt

## Generalizations

You have now been introduced to the fundamental Git workflow. You
learned a lot! Let’s take a moment to generalize:

- Git is the industry-standard version control system for web developers
- Use Git commands to help keep track of changes made to a project:
  - `git init` creates a new Git repository
  - `git status` inspects the contents of the working directory and
    staging area
  - `git add` adds files from the working directory to the staging area
  - `git diff` shows the difference between the working directory and
    the staging area
  - `git commit` permanently stores file changes from the staging area
    in the repository
  - `git log` shows a list of all previous commits

### Instructions

Click Next to complete the lesson!

# Manhattan Zoo

Ready to try out some of your new Git knowledge?

In this project, you’ll use Git to keep track of meal guidelines for
animals at the Manhattan Zoo.

If you get stuck during this project or would like to see an experienced
developer work through it, click “**Get Unstuck**“ to see a **project
walkthrough video**.

### Instructions

Mark the tasks as complete by checking them off

## Manhattan Zoo

1\.

Initialize a new Git repository.

2\.

Check the status of the repository.

3\.

Add **meal-regimens.txt** to the staging area.

4\.

Make a commit.

5\.

Include this new info in **meal-regimens.txt**.

``` git
3. Long-Tailed Chinchillas
Meal: 1 bag animal pellets, 1 bag dried fruit, 1/2 bag cashews, 5 carrots, 3 stalks kale
Times: 8:00 am
Directions: disperse contents throughout Chinchilla habitat
```

Click Save.

6\.

Add **meal-regimens.txt** to the staging area.

7\.

Check the status of the Git project.

You should see **meal-regimens.txt** listed as “modified”.

8\.

Make a commit.

9\.

View your Git commit history.

If your cursor is stuck in Git log mode, press “q” on your keyboard to
escape.

10\.

Here’s two more animal reports. Include each in **meal-regimens.txt**,
making a new commit for each animal added.

``` git
4. Poison Dart Frogs
Meal: 1 bag small crickets
Times: 6:00 am
Directions: empty bag in frog habitat once daily. Do not touch frogs! Extremely poisonous.
 
5. Western Lowland Gorilla
Meal: (Morning) 20 lbs. kale, 10 lbs. celery, 10 lbs. green beans, 5 lbs. carrots, 1 bag sweet potatoes. (Evening) 10 Bananas, 10 apples, 5 oranges, 5 mango, 20 lbs. grapes, 10 lbs. turnips, 5 lbs. white potatoes
Times: 6:30 am, 12:00 pm, 7:00 pm
Directions: feed Gorillas in the morning as group, spread forage items during noon meal, and divide quantities for individual feeding in evening
```

### [Solution](manhattan-zoo)

    meal-regimens.txt
    ========================================================================
    Manhattan Zoo
    Zookeeper Intern Onboarding:
    Meal Guidelines

    1. California Sea Lions
    Meal: 40 lbs. salmon, 40 lbs. herring, 20 lbs. Northern Anchovy, 20 lbs. Octupus
    Times: 6:00 am, 9:00 am, 12:00 pm, 3:00 pm, 6:00 pm, 9:00 pm
    Directions: Leave buckets for trainer at 12:00 pm and 3:00 pm, otherwise, follow standard protocol.

    2. Ring-tailed Lemurs
    Meal: 10 bags Tamarind pods
    Times: 6:00 am, 3:00 pm, 8:00 pm
    Directions: Empty bags over meadow area during designated times

    3. Long-Tailed Chinchillas
    Meal: 1 bag animal pellets, 1 bag dried fruit, 1/2 bag cashews, 5 carrots, 3 stalks kale
    Times: 8:00 am
    Directions: disperse contents throughout Chinchilla habitat

    Manhattan Zoo
    Zookeeper Intern Onboarding:
    Meal Guidelines

    1. California Sea Lions
    Meal: 40 lbs. salmon, 40 lbs. herring, 20 lbs. Northern Anchovy, 20 lbs. Octupus
    Times: 6:00 am, 9:00 am, 12:00 pm, 3:00 pm, 6:00 pm, 9:00 pm
    Directions: Leave buckets for trainer at 12:00 pm and 3:00 pm, otherwise, follow standard protocol.

    2. Ring-tailed Lemurs
    Meal: 10 bags Tamarind pods
    Times: 6:00 am, 3:00 pm, 8:00 pm
    Directions: Empty bags over meadow area during designated times

    4. Poison Dart Frogs
    Meal: 1 bag small crickets
    Times: 6:00 am
    Directions: empty bag in frog habitat once daily. Do not touch frogs! Extremely poisonous.

    5. Western Lowland Gorilla
    Meal: (Morning) 20 lbs. kale, 10 lbs. celery, 10 lbs. green beans, 5 lbs. carrots, 1 bag sweet potatoes. (Evening) 10 Bananas, 10 apples, 5 oranges, 5 mango, 20 lbs. grapes, 10 lbs. turnips, 5 lbs. white potatoes
    Times: 6:30 am, 12:00 pm, 7:00 pm
    Directions: feed Gorillas in the morning as group, spread forage items during noon meal, and divide quantities for individual feeding in evening

``` git
$ git init
Initialized empty Git repository in /home/ccuser/workspace/manhattan-zoo-1/.git/  
$ git status                                   
On branch master                                                                         
Initial commit                                                                               
Untracked files:                               
  (use "git add <file>..." to include in what will be committed)                                                                            
        meal-regimens.txt                                                                    
nothing added to commit but untracked files present (use "git add" to track)
$ git add meal-regimens.txt
$ git commit -m "First Commit"                 
[master (root-commit) 8fd7649] First Commit    
 1 file changed, 14 insertions(+)              
 create mode 100644 meal-regimens.txt 
$ git add meal-regimens.txt
$ git status                                   
On branch master                               
Changes to be committed:                       
  (use "git reset HEAD <file>..." to unstage)                                         
        modified:   meal-regimens.txt 
$ git commit -m "Second Commit"                                         
[master e9d5308] Second Commit                 
 1 file changed, 4 insertions(+)               
$ git log                                      
commit e9d530896c7199324040efc9c2ecbe66dac3b89c
Author: codecademy <ccuser@codecademy.com>     
Date:   Thu Apr 7 22:19:04 2016 -0400                                          
    Second Commit                                                                         
commit 8fd764938c156fb5c0a5a1905053f814e0d1fed0
Author: codecademy <ccuser@codecademy.com>     
Date:   Thu Apr 7 22:11:52 2016 -0400                                                        
    First Commit 
$ git add meal-regimens.txt                    
$ git status                                   
On branch master                               
Changes to be committed:                       
  (use "git reset HEAD <file>..." to unstage)                                             
        modified:   meal-regimens.txt                                                        
$ git commit -m "Third Commit"                 
[master 62e0c0a] Third Commit                  
 1 file changed, 10 insertions(+)              
$ git log                                      
commit 62e0c0a9be659aa877f12ef314965a084cb4ecd8
Author: codecademy <ccuser@codecademy.com>     
Date:   Thu Apr 7 22:26:25 2016 -0400                                                        
    Third Commit                                                                           
commit e9d530896c7199324040efc9c2ecbe66dac3b89c
Author: codecademy <ccuser@codecademy.com>     
Date:   Thu Apr 7 22:19:04 2016 -0400                                                       
    Second Commit                                                                            
commit 8fd764938c156fb5c0a5a1905053f814e0d1fed0
Author: codecademy <ccuser@codecademy.com>     
Date:   Thu Apr 7 22:11:52 2016 -0400                                                        
    First Commit    
```

# SnapFit Robots, Inc.

Now that you’ve had more practice with the Git workflow, let’s solidify
your new skills even more.

In this project, you will be working on assembly instructions for
Snap-Fit Robots Inc., a build-it-yourself robot company.

If you get stuck during this project or would like to see an experienced
developer work through it, click “**Get Unstuck**“ to see a **project
walkthrough video**.

### Instructions

Mark the tasks as complete by checking them off

## SnapFit Robots Inc.

1\.

Initialize a new Git project.

2\.

Check the status of the Git project.

You will see multiple files listed in the output as “Untracked”.

3\.

Add each file to the Git staging area.

4\.

Check the status of the Git project again.

5\.

Make a commit.

6\.

View your Git commit log.

If your cursor is stuck in Git log mode, press “q” on your keyboard to
escape.

7\.

Include this line in **disclaimer.txt**:

``` git
Warning: For best battery life, do not leave robot battery charging overnight.
```

Click Save.

8\.

Add the file to the staging area.

9\.

Now make a commit.

10\.

View your Git commit log again to identify your commit.

11\.

Revise each file in whatever ways you’d like. Then add your changes to
the staging area and make another commit.

### [Solution](snapfit-robots)

    disclaimer.txt
    ==========================================================================
    SNAPFIT ROBOTS PRODUCT DISCLAIMER

    Your Snapfit Robot Model i075 is provided with guarantee of limited 1-year warranty only. Outside of maintenance and malfunction descriptions covered in the warranty, customer shall make no claims of any kind, either express or implied, including but not limited to warranties of sellability, fitness for specific usage, of title, or of noninfringement of third and fourth party rights, and/or rights to attend robot parties. Use of the product by uninformed user is at the users risk.
    ==========================================================================
    1.Initialize a new Git project. 
    $ git init                                     
    Initialized empty Git repository in /home/ccuser/workspace/snapfit-robots/.git/    
    2.Check the status of the Git project.
    You will see multiple files listed in the output as “Untracked”.       
    $ git status                                   
    On branch master                                                                             
    Initial commit                                                                              
    Untracked files:                               
      (use "git add <file>..." to include in what will be committed)                                                                          
            disclaimer.txt                         
            instructions.txt                       
            warranty.txt                                                                         
    nothing added to commit but untracked files present (use "git add" to track) 
    3.Add each file to the Git staging area.             
    $ git add disclaimer.txt                       
    $ git add instructions.txt                     
    $ git add warranty.txt   
    4.Check the status of the Git project again.                  
    $ git status                                   
    On branch master                                                                            
    Initial commit                                                                              
    Changes to be committed:                       
      (use "git rm --cached <file>..." to unstage)                                             
            new file:   disclaimer.txt             
            new file:   instructions.txt           
            new file:   warranty.txt    
    5.Make a commit.                                                       
    $ git commit -m "First Commit"   
    [master (root-commit) 44104f4] First Commit    
     3 files changed, 70 insertions(+)             
     create mode 100644 disclaimer.txt             
     create mode 100644 instructions.txt           
     create mode 100644 warranty.txt      
    6.View your Git commit log.If your cursor is stuck in Git log mode, press "q" on your keyboard to escape.
    $ git log                                      
    commit 44104f45807f12aec6bf742b9ce33f8ab0e3723c
    Author: codecademy <ccuser@codecademy.com>     
    Date:   Thu Apr 7 22:35:47 2016 -0400 
                 First Commit     
    7.Include this line in disclaimer.txt:
    =========================================================================

    Warning: For best battery life, do not leave robot battery charging overnight


    =========================================================================
    8.Add the file to the staging area. 
    $ git add disclaimer.txt  
    9.Now make a commit. 
    $ git commit -m "Second Commit"                
    [master b42ec23] Second Commit                 
     1 file changed, 2 insertions(+), 2 deletions(-)                                              
    10.View your Git commit log again to identify your commit. 
    $ git log                                      
    commit b42ec23be3890be52b086e0a1237f1636127dcf5
    Author: codecademy <ccuser@codecademy.com>     
    Date:   Thu Apr 7 22:42:26 2016 -0400                                                       
        Second Commit                                                                          
    commit 44104f45807f12aec6bf742b9ce33f8ab0e3723c
    Author: codecademy <ccuser@codecademy.com>     
    Date:   Thu Apr 7 22:35:47 2016 -0400                                                        
        First Commit      
    11.Revise each file in whatever ways you'd like. Then add your changes to the staging area and make another commit. 
    $ git add disclaimer.txt 
    $ git commit -m "Third Commit"                 
    [master a503e44] Third Commit                  
     1 file changed, 2 insertions(+)               
    $ git log                                      
    commit a503e44a442628c7555cf09371cdaaefff196648
    Author: codecademy <ccuser@codecademy.com>     
    Date:   Thu Apr 7 22:55:19 2016 -0400                                                      
        Third Commit                                                                            
    commit b42ec23be3890be52b086e0a1237f1636127dcf5
    Author: codecademy <ccuser@codecademy.com>     
    Date:   Thu Apr 7 22:42:26 2016 -0400                                                       
        Second Commit                                                                            
    commit 44104f45807f12aec6bf742b9ce33f8ab0e3723c
    Author: codecademy <ccuser@codecademy.com>     
    Date:   Thu Apr 7 22:35:47 2016 -0400                                                        
        First Commit                               

# How to Backtrack

## Backtracking Intro

When working on a Git project, sometimes we make changes that we want to
get rid of. Git offers a few eraser-like features that allow us to undo
mistakes during project creation. In this lesson, we’ll learn some of
these features.

To start out, let’s review the basic Git workflow.

### Instructions

**1.**

You are in a Git project titled **hamlet-prince-of-denmark**. In the
code editor, you’ll be working on **scene-5.txt**. Here, Hamlet
encounters the ghost of his father. Add this text to the file:

    Ghost: 
    My hour is almost come,
    When I to sulphurous and tormenting flames
    Must render up myself.

**2.**

From the terminal, add **scene-5.txt** to the staging area.

<a
href="https://www.codecademy.com/en/courses/learn-git/lessons/git-workflow/exercises/git-add?action=lesson_resume"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Here’s a hint</a> on how to do it.

**3.**

Commit the changes to the repository with a good commit message.

<a
href="https://www.codecademy.com/en/courses/learn-git/lessons/git-workflow/exercises/git-commit?action=lesson_resume"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Here’s a hint</a> on how to do it.

### Solution

    Hamlet: Act 1, Scene 5

    Enter Ghost and Hamlet

    Hamlet:
    Where wilt thou lead me? speak; I'll go no further

    Ghost:
    Mark me.

    Hamlet:
    I will.

    Ghost: 
    My hour is almost come,
    When I to sulphurous and tormenting flames
    Must render up myself.

    Ghost: 
    My hour is almost come,
    When I to sulphurous and tormenting flames
    Must render up myself.

``` git
git add scene-5.txt
git commit -m "Add a Ghost dialogue to scene-5.txt"
```

    [master 9ffc5cb] Add a Ghost dialogue to scene-5.txt
     1 file changed, 4 insertions(+)

## head commit

In Git, the commit you are currently on is known as the `HEAD` commit.
In many cases, the most recently made commit is the `HEAD` commit.

To see the `HEAD` commit, enter:

``` git
git show HEAD
```

The output of this command will display everything the <a
href="https://www.codecademy.com/en/courses/learn-git/lessons/git-workflow/exercises/git-log"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">git log command</a> displays for the `HEAD` commit, plus
all the file changes that were committed.

### Instructions

**1.**

Enter the command to show the `HEAD` commit.

Notice the output. The ghost’s most recently added line is in green
text.

### Solution

``` git
$ git show HEAD
```

    commit 9ffc5cb594055d74f538de9f34ab52c765e359ab
    Author: codecademy <ccuser@codecademy.com>
    Date:   Sun Mar 12 18:02:44 2023 +0000

        Add a Ghost dialogue to scene-5.txt

    diff --git a/scene-5.txt b/scene-5.txt
    index b12dd97..0d89aae 100644
    --- a/scene-5.txt
    +++ b/scene-5.txt
    @@ -11,4 +11,12 @@ Mark me.
     Hamlet:
     I will.
     
    +Ghost: 
    +My hour is almost come,
    +When I to sulphurous and tormenting flames
    +Must render up myself.
     
    +Ghost: 
    +My hour is almost come,
    +When I to sulphurous and tormenting flames
    +Must render up myself.
    :...skipping...
    commit 9ffc5cb594055d74f538de9f34ab52c765e359ab
    Author: codecademy <ccuser@codecademy.com>
    Date:   Sun Mar 12 18:02:44 2023 +0000

        Add a Ghost dialogue to scene-5.txt

    diff --git a/scene-5.txt b/scene-5.txt
    index b12dd97..0d89aae 100644
    --- a/scene-5.txt
    +++ b/scene-5.txt
    @@ -11,4 +11,12 @@ Mark me.
     Hamlet:
     I will.
     
    +Ghost: 
    +My hour is almost come,
    +When I to sulphurous and tormenting flames
    +Must render up myself.
     
    +Ghost: 
    +My hour is almost come,
    +When I to sulphurous and tormenting flames
    +Must render up myself.
    \ No newline at end of file

## git checkout

What if you decide to change the ghost’s line in the working directory,
but then decide you wanted to discard that change?

You could rewrite the line how it was originally, but what if you forgot
the exact wording? The command

``` git
git checkout HEAD filename
```

will restore the file in your working directory to look exactly as it
did when you last made a commit.

Here, `filename` again is the actual name of the file. If the file is
named **changes.txt**, the command would be

``` git
git checkout HEAD changes.txt
```

### Instructions

**1.**

Change the ghost’s words in some way. Here’s a fun suggestion:

    Ghost: 
    My hour is almost come,
    When I to sulphurous and tormenting balloons
    Must render up myself. 

**2.**

From the terminal, use `git diff` to see the difference between
**scene-5.txt** as it appears in the working directory vs. how it
appears in your last commit.

You may need to press `q` on your keyboard to restore the terminal.

**3.**

Use the new Git command to restore the file in your working directory to
look as it did when you last made a commit.

Close the **scene-5.txt** file and then re-open it to see that the
changes you had previously made to the ghost’s line have been discarded.

### Solution

``` git
git diff
```

    diff --git a/scene-2.txt b/scene-2.txt
    index f77a4da..868392e 100644
    --- a/scene-2.txt
    +++ b/scene-2.txt
    @@ -1,7 +1,5 @@
     Hamlet: Act 1, Scene 2
     
    -A room of state in the castle.
    -
     Enter KING CLAUDIUS, QUEEN GERTRUDE, HAMLET, POLONIUS, LAERTES, VOLTIMAND,
     CORNELIUS, Lords, and Attendants
     
    diff --git a/scene-3.txt b/scene-3.txt
    index b112525..be3867d 100644
    --- a/scene-3.txt
    +++ b/scene-3.txt
    @@ -2,9 +2,9 @@ Hamlet: Act 1, Scene 3
     
     A room in Polonius' house.
     
    -Enter LARRY and OPHELIA
    +Enter LAERTES and OPHELIA
     
    -LARRY
    +LAERTES
     My necessaries are embark'd: farewell:
     And, sister, as the winds give benefit
     And convoy is assistant, do not sleep,
    @@ -13,7 +13,7 @@ But let me hear from you.
     OPHELIA
     Do you doubt that?
     
    -LARRY
    +LAERTES
     For Hamlet and the trifling of his favour,
     Hold it a fashion and a toy in blood,
     A violet in the youth of primy nature,
    diff --git a/scene-5.txt b/scene-5.txt
    index 0d89aae..dd018b9 100644
    --- a/scene-5.txt
    +++ b/scene-5.txt
    @@ -18,5 +18,5 @@ Must render up myself.

``` git
git checkout HEAD filename
```

## more git add

The **hamlet** repository we are working on contains five files. In Git,
it’s common to change many files, add those files to the staging area,
and commit them to a repository in a single commit.

For example, say you want to change the character “LARRY” to “LAERTES”
in the script. The name currently appears in two files. After you change
the name in both files, you could add the changed files to the staging
area with:

``` git
git add filename_1 filename_2
```

Note the word `filename` above refers to the name of the file you are
adding to the staging area, such as **scene-3.txt**.

### Instructions

**1.**

The code editor is open to **scene-3.txt** and **scene-7.txt**. In
**scene-3.txt**, everywhere you see the name “LARRY” change it to
“LAERTES.”

**2.**

Now change all instances of “LARRY” to “LAERTES” in **scene-7.txt**.

**3.**

Add the files to the staging area together using a single git command.

### Solution

    Hamlet: Act 1, Scene 3

    A room in Polonius' house.

    Enter LAERTES and OPHELIA

    LAERTES
    My necessaries are embark'd: farewell:
    And, sister, as the winds give benefit
    And convoy is assistant, do not sleep,
    But let me hear from you.

    OPHELIA
    Do you doubt that?

    LAERTES
    For Hamlet and the trifling of his favour,
    Hold it a fashion and a toy in blood,
    A violet in the youth of primy nature,
    Forward, not permanent, sweet, not lasting,
    The perfume and suppliance of a minute; No more.

    OPHELIA
    No more but so?

    Hamlet: Act 4, Scene 7

    Another room in the castle.

    Enter KING CLAUDIUS and LAERTES

    KING CLAUDIUS
    Now must your conscience my acquaintance seal,
    And you must put me in your heart for friend,
    Sith you have heard, and with a knowing ear,
    That he which hath your noble father slain
    Pursued my life.

    LAERTES
    It well appears: but tell me
    Why you proceeded not against these feats,
    So crimeful and so capital in nature,
    As by your safety, wisdom, all things else,
    You mainly were stirr'd up.

    KING CLAUDIUS
    O, for two special reasons;
    Which may to you, perhaps, seem much unsinew'd,
    But yet to me they are strong. The queen his mother
    Lives almost by his looks; and for myself--
    My virtue or my plague, be it either which--
    She's so conjunctive to my life and soul,
    That, as the star moves not but in his sphere,
    I could not but by her. The other motive,
    Why to a public count I might not go,
    Is the great love the general gender bear him;
    Who, dipping all his faults in their affection,
    Would, like the spring that turneth wood to stone,
    Convert his gyves to graces; so that my arrows,
    Too slightly timber'd for so loud a wind,
    Would have reverted to my bow again,
    And not where I had aim'd them.

    LAERTES
    And so have I a noble father lost;
    A sister driven into desperate terms,
    Whose worth, if praises may go back again,
    Stood challenger on mount of all the age
    For her perfections: but my revenge will come.

``` git
git add scene-3.txt  scene-7.txt
```

## git reset I

Great! The files you’ve added to the staging area belong in the same
commit.

What if, before you commit, you accidentally delete an important line
from **scene-2.txt**? Unthinkingly, you add **scene-2.txt** to the
staging area. The file change is unrelated to the Larry/Laertes swap and
you don’t want to include it in the commit.

We can *unstage* that file from the staging area using

``` git
git reset HEAD filename
```

This command *resets* the file in the staging area to be the same as the
`HEAD` commit. It does not discard file changes from the working
directory, it just removes them from the staging area.

### Instructions

**1.**

To try out the new command, let’s make a mistake on purpose!

The code editor is open to **scene-2.txt**. Delete any line from the
file and click Run.

**2.**

From the terminal, add **scene-2.txt** to the Git staging area.

**3.**

Now check the `status` of the Git project.

In the output, notice **scene-2.txt** under “Changes to be committed”.

**4.**

Use the new Git command to *unstage* **scene-2.txt** from the staging
area.

Notice in the output, “Unstaged changes after reset”:

``` git
M    scene-2.txt
```

- `M` is short for “modification”

**5.**

Now that changes made to **scene-2.txt** have been booted out of the
staging area, you’re ready to commit. From the terminal, make a commit
to save the Larry/Laertes name swap in **hamlet**.

### Solution

    Hamlet: Act 1, Scene 2

    Enter KING CLAUDIUS, QUEEN GERTRUDE, HAMLET, POLONIUS, LAERTES, VOLTIMAND,
    CORNELIUS, Lords, and Attendants

    KING CLAUDIUS
    Though yet of Hamlet our dear brother's death
    The memory be green, and that it us befitted
    To bear our hearts in grief and our whole kingdom
    To be contracted in one brow of woe,
    Yet so far hath discretion fought with nature
    That we with wisest sorrow think on him,
    Together with remembrance of ourselves.
    Therefore our sometime sister, now our queen,
    The imperial jointress to this warlike state,
    Have we, as 'twere with a defeated joy,--
    With an auspicious and a dropping eye,
    With mirth in funeral and with dirge in marriage,
    In equal scale weighing delight and dole,--
    Taken to wife: nor have we herein barr'd
    Your better wisdoms, which have freely gone
    With this affair along. For all, our thanks.
    Now follows, that you know, young Fortinbras,
    Holding a weak supposal of our worth,
    Or thinking by our late dear brother's death
    Our state to be disjoint and out of frame,
    Colleagued with the dream of his advantage,
    He hath not fail'd to pester us with message,
    Importing the surrender of those lands
    Lost by his father, with all bonds of law,
    To our most valiant brother. So much for him.
    Now for ourself and for this time of meeting:
    Thus much the business is: we have here writ
    To Norway, uncle of young Fortinbras,--
    Who, impotent and bed-rid, scarcely hears
    Of this his nephew's purpose,--to suppress
    His further gait herein; in that the levies,
    The lists and full proportions, are all made
    Out of his subject: and we here dispatch
    You, good Cornelius, and you, Voltimand,
    For bearers of this greeting to old Norway;
    Giving to you no further personal power
    To business with the king, more than the scope

``` git
git add scene-2.txt
```

``` git
git reset HEAD scene-2.txt
```

    Unstaged changes after reset:
    M       scene-2.txt

``` git
git status
```

    git status
    On branch master
    Changes to be committed:
      (use "git reset HEAD <file>..." to unstage)

            modified:   scene-3.txt
            modified:   scene-7.txt

    Changes not staged for commit:
      (use "git add <file>..." to update what will be committed)
      (use "git checkout -- <file>..." to discard changes in working directory)

            modified:   scene-2.txt

``` git
git commit -m "Swap the Larry/Laertes name"
```

    [master b54dbfe] Swap the Larry/Laertes name
     2 files changed, 6 insertions(+), 6 deletions(-)

## git reset II

Creating a project is like hiking in a forest. Sometimes you take a
wrong turn and find yourself lost.

Just like retracing your steps on that hike, Git enables you to rewind
to the part before you made the wrong turn. You can do this with:

``` git
git reset commit_SHA
```

This command works by using the first 7 characters of the SHA of a
previous commit. For example, if the SHA of the previous commit is
`5d692065cf51a2f50ea8e7b19b5a7ae512f633ba`, use:

``` git
git reset 5d69206
```

`HEAD` is now set to that previous commit.

### Instructions

**1.**

From the terminal, print out your Git commit log.

**Note**: If your cursor gets stuck in “git log” mode in the terminal,
press “q” on your keyboard to escape.

**2.**

From the terminal, enter the command to `reset` to a previous commit,
using the first 7 characters of one of the past commit SHAs in your Git
log.

Next, print the Git commit log again.

Notice anything interesting? The commits that came after the one you
reset to are gone. The `HEAD` commit has been reassigned. You just
changed history.

### Solution

``` git
git log
```

    commit b54dbfed708bdb4099b45c206a96671439581db1
    Author: codecademy <ccuser@codecademy.com>
    Date:   Sun Mar 12 18:14:37 2023 +0000

        Swap the Larry/Laertes name

    commit d640dc3b22b3ee1d0a6e87477a35fd5e75c0712e
    Author: codecademy <ccuser@codecademy.com>
    Date:   Thu Nov 5 13:19:17 2015 -0500

        Complete ghost line of dialogue

    commit 7be7ec672af73cf31ef72c92e3374fd4e29c675a
    Author: danasselin <johndoe@example.com>
    Date:   Tue Nov 3 17:15:05 2015 -0500

        Add first page of scene-7.txt

    commit 83f7b3591f4ab7aedb3160388b59e65ee1cd94a2
    Author: danasselin <johndoe@example.com>
    Date:   Tue Nov 3 17:14:48 2015 -0500

        Add first page to scene-5.txt

    commit 5d692065cf51a2f50ea8e7b19b5a7ae512f633ba
    Author: danasselin <johndoe@example.com>
    Date:   Tue Nov 3 17:14:30 2015 -0500

        Add first page to scene-3.txt

    commit 27a3bfe282808aefe69d04f4d111e7a6a0c652dd
    Author: danasselin <johndoe@example.com>
    Date:   Tue Nov 3 17:14:08 2015 -0500

        Add first page to scene-2.txt

    commit 96f1625d347d599e6f0f13f23022b3f852d5b116
    Author: danasselin <johndoe@example.com>
    Date:   Tue Nov 3 17:13:38 2015 -0500

        Add .gitignore
    $ git reset d640dc3
    Unstaged changes after reset:
    M       scene-2.txt
    M       scene-3.txt
    M       scene-7.txt

``` git
git reset d640dc3
```

    Unstaged changes after reset:
    M       scene-2.txt
    M       scene-3.txt
    M       scene-7.txt

## git reset review

To better understand `git reset commit_SHA`, notice the diagram on the
right. Each circle represents a commit.

**Before reset**:

- `HEAD` is at the *most recent commit*

**After resetting**:

- `HEAD` goes to a *previously made commit* of your choice
- The gray commits are no longer part of your project
- You have in essence rewound the project’s history

### Solution

<img src="https://content.codecademy.com/courses/learn-git/git-diagram-3.svg" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Generalizations

Congratulations! You’ve learned three different ways to backtrack in
Git. You can use these skills to undo changes made to your Git project.

Let’s take a moment to review the new commands:

- `git checkout HEAD filename`: Discards changes in the working
  directory.
- `git reset HEAD filename`: Unstages file changes in the staging area.
- `git reset commit_SHA`: Resets to a previous commit in your commit
  history.

Additionally, you learned a way to add multiple files to the staging
area with a single command:

``` git
git add filename_1 filename_2
```

### Instructions

Click Next to finish the lesson!

# Poem Fiasco

Let’s get some practice with Git backtracking.

In this project, changes have been made to a series of poems and you
want to change them back.

If you get stuck during this project or would like to see an experienced
developer work through it, click “**Get Unstuck**“ to see a **project
walkthrough video**.

### Instructions

Mark the tasks as complete by checking them off

## Poems Fiasco

1\.

The file **road-not-taken.txt** doesn’t look right at all! Perhaps a
rival poet snuck in and changed it while you were getting coffee. Good
thing you’ve been committing often.

- Checkout the `HEAD` version of **road-not-taken.txt** to discard
  changes made to the working directory.
- Close and re-open the file to see the result.

2\.

Now, finish the poem by adding a line. Here’s a suggestion:

``` git
And that has made all the difference.
```

Then click Save.

3\.

Take a look at **oven-bird.txt** to see if it has also been tampered
with.

Indeed it has! We’ll want to discard changes in the working directory
again.

There’s a commonly used shortcut for this command:

``` git
git checkout -- filename 
```

It does the same exact thing that `git checkout HEAD filename` does. Try
it with **oven-bird.txt**.

4\.

Now, finish “Oven Bird” by adding a line. Here’s a suggestion:

``` git
Is what to make of a diminished thing.
```

Then click Save.

5\.

Click on **fire-and-ice.txt**.

This file has *not* been altered, but just to be sure, check the diff
for this file.

Then, add these last two lines to the poem:

``` git
Is also okay
And would suffice.
```

6\.

Now that you’ve restored and completed **road-not-taken.txt** and
**oven-bird.txt** and added a line to **fire-and-ice.txt**, add all
three of the files to the staging area with a single command.

7\.

**fire-and-ice.txt** could be better. Before you commit, remove this
file from the staging area.

8\.

Now that you’ve removed **fire-and-ice.txt**, make a commit.

9\.

You get the crazy idea to change your poems in a big way.

Make some drastic changes to each of the three poems. Remember to click
Save after each file change.

10\.

Now add all three files to the staging area.

11\.

Make a commit.

12\.

A little later you take a look at the current state of your poems and
regret your last commit.

Reset your Git project to the commit before you made those drastic
changes.

13\.

There’s a problem: you reset `HEAD` to a previous commit, but the
changes you want to get rid of are still in the working directory.

What Git backtracking command that you already know can discard changes
to the working directory, restoring the files to the way they look in
the `HEAD` commit?

Stuck? Here’s a <a
href="https://www.codecademy.com/en/courses/learn-git/lessons/git-backtracking/exercises/git-checkout-1"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">hint</a>.

### [Solution](poem-fiasco)

    road-not-taken.txt
    ==========================================================================
    I Took All the Roads, by Robert Forks

    Two roads went exactly the same way
    And I was happy to travel them both
    And be one traveler, I figured it out quick
    blah blah blah
    blah blah blah blah

    blah blah blah blah
    Both had terrible claims
    Because it was smooth and boring
    blah blah blah blah
    This poem is terrible, Rob.

    blah blah blah blah
    In leaves no step had trodden blah
    Oh, blah blah blah BLAAAAHHH
    WEEEEEEEE!! This road is awesome.
    I'm definitely coming back here!

    Hahahahahahahhaha
    Two roads diverged in a hahahahaha
    HAHAHAHAHAHAHHAHAHAHAH! Gotcha.
    ==========================================================================
    1.The file road-not-taken.txt doesn’t look right at all! Perhaps a rival poet snuck in and changed it while you were getting coffee. Good thing you’ve been committing often.
    Checkout the HEAD version of road-not-taken.txt to discard changes made to the working directory.
    $ git checkout HEAD road-not-taken.txt  
    2.Now, finish the poem by adding a line. Here's a suggestion:
    ==========================================================================

    And that has made all the difference.

    ==========================================================================
    Then  Save.
    3.Take a look at oven-bird.txt to see if it has also been tampered with.
    Indeed it has! We’ll want to discard changes in the working directory again.
    There’s a commonly used shortcut for this command:

    $ git checkout -- filename


    It does the same exact thing that git checkout HEAD filename does. Try it with oven-bird.txt.
    $ git checkout -- oven-bird.txt
    4.Now, finish "Oven Bird" by adding a line. Here's a suggestion:
    ==========================================================================

    Is what to make of a diminished thing.

    ==========================================================================
    Then  Save.
    5.Click on fire-and-ice.txt.
    This file has not been altered, but just to be sure, check the diff for this file.
    Then, add these last two lines to the poem:
    ==========================================================================

    Is also okay
    And would suffice.

    ==========================================================================
    $ git diff  
    6.Now that you’ve restored and completed road-not-taken.txt and oven-bird.txt and added a line to fire-and-ice.txt, add all three of the files to the staging area with a single command.
    $ git add road-not-taken.txt oven-bird.txt fire-and-ice.txt
    7.fire-and-ice.txt could be better. Before you commit, remove this file from the staging area. 
    $ git reset HEAD fire-and-ice.txt 
    8.Now that you've removed fire-and-ice.txt, make a commit.
    $ git commit -m "Ying Yu Commit"
    9.You get the crazy idea to change your poems in a big way.
    Make some drastic changes to each of the three poems. Remember to click Save after each file change.
    10.Now add all three files to the staging area.
    $ git add road-not-taken.txt oven-bird.txt fire-and-ice.txt 
    11.Make a commit
    $ git commit -m "Becky 2nd Commit" 
    12.A little later you take a look at the current state of your poems and regret your last commit.
    Reset your Git project to the commit before you made those drastic changes.
    $ git log
    $ git reset d7722af 
    13.There’s a problem: you reset HEAD to a previous commit, but the changes you want to get rid of are still in the working directory.
    What Git backtracking command that you already know can discard changes to the working directory, restoring the files to the way they look in the HEAD commit?
    $ git checkout HEAD road-not-taken.txt oven-bird.txt fire-and-ice.txt

# ASCII Portfolio

ASCII art is art made from only the letters, numbers and symbols you can
type on your keyboard.

In this project, you’ll use Git backtracking commands to undo mistakes
made to an ASCII art portfolio!

If you get stuck during this project or would like to see an experienced
developer work through it, click “**Get Unstuck**“ to see a **project
walkthrough video**.

### Instructions

Mark the tasks as complete by checking them off

## ASCII Portfolio

1\.

The ASCII face in **portrait.txt** had a goatee in the last commit, but
it was deleted in the working directory. Taking a second look, you want
the goatee back.

Discard changes in the working directory for **portrait.txt**.

Close and reopen **portrait.txt** to see the result.

2\.

That’s much better! Now, give your portrait some eyebrows. It’s up to
you how to do it. One way is to use a few `=` symbols on the line above
the eyes, like this:

``` git
  ===       ===
  O           O 
```

Click Save.

3\.

Add the file to the staging area.

4\.

Make a commit.

5\.

It looks like every file has its date written incorrectly.

Change the completion dates on every file, clicking Save after each
change.

6\.

Next, add all your changes to the staging area with a single command.

7\.

Make a commit.

8\.

You forgot to add your “artist name” to each file. Under the date,
include the name:

``` git
L. Da Vinci
```

Or whatever name you’d like. Click Save after each file change.

9\.

If you know you want to add every file in the working directory to the
staging area, instead of adding each file individually, you can use a
shortcut:

``` git
git add .
```

The `.` means “all files”. Adding files to the staging area with `.` is
faster than specifying each file individually, but it’s easy to
accidentally add files you don’t want there. Make sure you always know
what you’re adding.

10\.

It turns out that **house.txt** is an experiment and doesn’t belong in
the commit you’re staging. Reset the staging area to remove
**house.txt**.

11\.

Now make a commit.

### [Solution](ascii-portfolio)

    1.The ASCII face in portrait.txt had a goatee in the last commit, but it was deleted in the working directory. Taking a second look, you want the goatee back.
    Discard changes in the working directory for portrait.txt.
    $ git checkout HEAD portrait.txt
    2.That’s much better! Now, give your portrait some eyebrows. It’s up to you how to do it. One way is to use a few = symbols on the line above the eyes, like this: 

      ===       ===
      O           O


    Save.
    3.Add the file to the staging area.
    $ git add portrait.txt 
    4.Make a commit.
    $ git commit -m "First Commit"
    5.It looks like every file has its date written incorrectly.
    Change the completion dates on every file, clicking Save after each change.
    6.Next, add all your changes to the staging area with a single command.
    $ git add portrait.txt house.txt tree.txt 
    7.Make a commit.
    $ git commit -m "Second Commit"
    8.You forgot to add your “artist name” to each file. Under the date, include the name:

    L. Da Vinci

    Save
    9.If you know you want to add every file in the working directory to the staging area, instead of adding each file individually, you can use a shortcut:

    git add .


    The . means “all files”. Adding files to the staging area with . is faster than specifying each file individually, but it's easy to accidentally add files you don’t want there. Make sure you always know what you’re adding.
    $ git add.
    10.It turns out that house.txt is an experiment and doesn’t belong in the commit you’re staging. Reset the staging area to remove house.txt. 
    $ git reset HEAD house.txt
    11.Now make a commit. 
    $ git commit -m "Third Commit"

# Handy Git Operations

Git provides us with a vast number of different commands that are listed
on the documentation which can be intimidating at first. We will break
down a couple that are powerful for daily tasks.

## Introduction

Git provides us with a vast number of different commands that are listed
on the <a href="https://git-scm.com/docs"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">documentation</a> which can be
intimidating at first. We will break down a couple that are powerful for
daily tasks.

### Git stash

Let’s say you’re working on experimental code on a fresh branch and
realize that you forgot to add something to a previous commit in order
to continue your work. In order to go to a different branch, one must
always be at a clean commit point. In this case you don’t want to commit
your experimental code since it’s not ready but you also don’t want to
lose all the code you’ve been working on.

A good way to handle this is by using `git stash`, which allows you to
get back to a clean commit point with a synchronized working tree, and
avoid losing your local changes in the process. You’re “stashing” your
local work temporarily in order to update a previous commit and later on
retrieve your work.

The flow when using `git stash` might look something like this:

<img
src="https://static-assets.codecademy.com/Courses/learn-git-github/handy-git-operations/git-stash-pop-diagram.svg"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="In this diagram, a coworker asks the programmer if they can work on something else while they have their current code open. Git stash allows their current code to be stashed as they finish the other update. Git stash pop puts the code changes back into the working directory." />

While working on a file, you find a small bug in a separate file from a
previous commit that needs to be fixed before you continue.

``` git
$ git stash
```

Running the command above will store your work temporarily for later use
in a hidden directory.

At this point, you can switch branches and do work elsewhere.

Once the bug is fixed, you want to retrieve the code you were working on
previously, you can “pop” the work that was stored when you used
`git stash`.

``` git
$ git stash pop
```

From here, you can continue your work and commit it when ready.

Coming up we have a short video demo’ing this in action.

[Handy Git Operations Git
Stash](https://www.youtube.com/watch?v=7gL3Safgahk)

## Git log

At this point you might be familiar with the command `git log`, which
allows you to view the commit history of the branch you currently have
checked out:

<img
src="https://static-assets.codecademy.com/Courses/learn-git-github/handy-git-operations/git-log.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Git Log output shows recent commit history" />

There are other ways you can use `git log` in order to view recorded
changes. Here are a few examples:

- `git log --oneline` shows the list of commits in one line format.

<img
src="https://static-assets.codecademy.com/Courses/learn-git-github/handy-git-operations/git-log-oneline-2.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Git Log online output shows recent commit history all in one line" />

- `git log -S "keyword"` displays a list of commits that contain the
  keyword in the message. In the screenshot below, we use
  `git log -S "Add"` to find any commits with “Add” in the message.

<img
src="https://static-assets.codecademy.com/Courses/learn-git-github/handy-git-operations/git-log-S.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="In the screenshot, the output of `git log -S &quot;Add&quot;` finds a commit with &quot;Add&quot; in the message." />

- `git log --oneline --graph` - `--graph` Displays a visual
  representation of how the branches and commits were created in order
  to help you make sense of your repository history. When used alone,
  the description can be very lengthy, so you can combine the command
  with `--oneline` in order to shorten the description.

<img
src="https://static-assets.codecademy.com/Courses/learn-git-github/handy-git-operations/git-log-oneline-graph.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Git log --online --graph outputs a graphical representation of commits, showing where branches were created earlier and merged." />

## Git commit amend

Git’s `--amend` flag is extremely useful when updating a commit, it
allows you to correct mistakes and edit commits easily instead of
creating a completely new one.

Let’s say you finish working on a lengthy feature and everything seems
to be working fine so you commit your work. Shortly after, you realize
you missed a few semicolons in one of your functions. You could
technically create a new commit, but ideally, you want to keep all
commits specific, clean, and succinct. To avoid creating a new one, you
could create your changes, stage them with `git add` and then type the
command `git commit --amend` to update your previous commit.

It’s important to note that although it seems like `--amend` is simply
updating the commit, what Git actually does is replace the whole
previous commit. For this reason, when you execute the command
`git commit --amend`, your terminal editor asks you to update your
commit message:

<img
src="https://static-assets.codecademy.com/Courses/learn-git-github/handy-git-operations/git-commit-amend.png"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="git-amend" />

However, if you want to keep the same commit message, you can simply add
the flag `--no-edit`:

``` git
$ git commit --amend --no-edit
```

## Git alias commands

When grouping commands together, you can end up writing very long lines
of Git commands in the terminal such as:

``` git
$ git log --pretty=format:"%h %s" --graph
```

Fortunately, Git offers a helpful feature that can make your Git
experience simpler, easier, and more familiar: aliases.

If you have a set of commands that you use regularly and want to save
some time from typing them, you can easily set up an alias for each
command using Git config.

Below are a couple of examples:

``` git
$ git config --global alias.co "checkout"
$ git config --global alias.br "branch"
$ git config --global alias.glop "log --pretty=format:"%h %s" --graph"
```

Once the aliases are configured, next time you want to check out to
another branch you could type the command:

``` git
$ git co example_branch
```

Instead of:

``` git
$ git checkout example_branch
```

Using Git aliases can create a much more fluid and efficient workflow
experience when using Git. By getting creative with your aliases, you’re
able to wrap a sequence of Git commands into one in order to save time
and effort.

# Git Version Control in VS Code

## [Visual Studio Code](https://code.visualstudio.com/docs/introvideos/versioncontrol)

In this video, you will learn how to use the basics of Git version
control in Visual Studio Code. This is helpful if you use VS Code as
your primary editor and want to take advantage of its Git integration
features.

# What is GitHub?

Learn how to sign up for a GitHub account and share your code

## What is GitHub?

One of the best ways to share what you’ve been learning with other
people is to put your code on GitHub. GitHub is both a website and a
service that facilitates software development by allowing you to store
your code in containers, called *repositories*, and by tracking changes
made to your code. In addition, it offers a hosting service and tools to
build, test, and deploy code.

GitHub uses <a href="https://en.wikipedia.org/wiki/Git"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Git, a version-control development
tool</a>, to manage your projects by tracking changes to files and
allowing multiple people to work on the same project. Although both
GitHub and Git have similar names, GitHub is a service while Git is a
development tool that can be used by you outside of and without GitHub.

## Why is GitHub important?

There are many reasons why knowing about GitHub is important for your
personal growth as a developer. A large part of the appeal of Github is
the access it grants developers to the massive community of developers
around the world who openly share their code, projects, and software
development tools with each other. Therefore, if you want to continue
working on your Git skills, creating your programming portfolio, or
finding work, GitHub can help.

## How to Sign Up for an Account

Now that you’re aware of GitHub’s benefits, you probably want to sign up
for an account and try it out yourself. First navigate to the home page
of the GitHub website, <a href="https://github.com"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">https://github.com</a>.

In the upper-right corner click on the **Sign Up** button, as outlined
in this screenshot:

<img
src="https://static-assets.codecademy.com/Courses/What-is-GitHub/github_homepage2.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Home page of the GitHub website with the mouse pointing at the **Sign Up** button which is highlighted" />

## Create Your Account

You’ll see a page with a form under the heading “Create your account”.

<img
src="https://static-assets.codecademy.com/Courses/What-is-GitHub/githhub_create_account2.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Create your account page of GitHub website" />

Fill in each field for username, email address, and password. Choosing a
username and email are especially important! Be sure to read through the
following tips.

### Username

When choosing a username, it’s wise to choose one you wouldn’t mind
future employers or colleagues seeing. A combination of your first and
last name like `firstnamelastname` or using initials, like `i_lastname`,
are good because they make it easy to find you on GitHub or identify you
when you make <a
href="https://docs.github.com/en/free-pro-team@latest/github/collaborating-with-issues-and-pull-requests/about-pull-requests"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">pull requests</a> or <a
href="https://docs.github.com/en/free-pro-team@latest/github/collaborating-with-issues-and-pull-requests/about-pull-request-reviews"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">reviews</a>. Remember, you’re likely
using this account to share or access code.

Also be aware that usernames are first come, first serve and may not be
available if someone else already claimed the username. Additionally,
usernames may only contain alphanumeric characters and hyphens are not
allowed at the beginning or end.

### Email Address

Like with usernames, pick an email that you’re comfortable sharing with
peers and potential hires. Because of the way Git works, it’s important
to note that your email can be exposed publicly when you make a pull
request or merge in code to a repository, making it visible to anyone
looking through your projects. When you sign up for a new GitHub
account, your email address is hidden by default.

### Finish Creating Your Account

Lastly, fill out the password field. When you’re done filling out the
various fields, verify your account. You will receive an email from
GitHub prompting you to verify.

Once you see a green checkmark, click on the blue **Create an Account**
button.

Go to your email account, find the email from GitHub, and click on the
button inside it to finish creating your account.

## Settings

After successfully creating an account, you should see a page display
asking you “What do you want to do first?” Go through the steps to
complete your own set up process. You should now see a welcome page:

<img
src="https://static-assets.codecademy.com/Courses/What-is-GitHub/github_welcome_page.png"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="GitHub Welcome page" />

You can either answer the optional questions or move on by clicking on
the **Complete setup** button to finish creating your account.

Your browser should display a personal dashboard with a section for your
projects and some messages:

<img
src="https://static-assets.codecademy.com/Courses/What-is-GitHub/github_dashboard.png"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="GitHub personal dashboard" />

Now you have your own GitHub account! You can continue to customize your
account by:

- <a
  href="https://github.blog/2017-04-11-private-emails-now-more-private/"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">setting your email to private</a>

- <a href="https://github.blog/2013-09-03-two-factor-authentication/"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">setting up two-factor
  authentication</a>

That’s it, you now have your very own GitHub account. 🎉

## Recap

With more people working remotely and with teams distributed across
different countries and timezones, GitHub and Git can be valuable tools
for collaborating on projects. You can also use GitHub to work on any
file-based project such as writing documentation.

Let’s review what you did in this article:

- Learned that GitHub is both a website and service for storing and
  sharing code

<!-- -->

- Learned that Github uses Git to facilitate software development by
  tracking changes

- Created your own GitHub account

- Enabled security features like keeping your email private and turning
  on two-factor authentication

## Going Further

Once you feel comfortable navigating GitHub consider doing the
following:

- <a
  href="https://docs.github.com/en/free-pro-team@latest/github/setting-up-and-managing-your-github-profile/personalizing-your-profile"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Add information about yourself</a> in
  your profile, including an avatar, bio, location, etc.

- <a
  href="https://docs.github.com/en/free-pro-team@latest/github/setting-up-and-managing-your-github-profile/personalizing-your-profile#setting-a-status"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Set your status</a> in your profile to
  let people know what you’re doing.

- If you feel comfortable enough with Git, you can take a look at
  <a href="https://pages.github.com/"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">this article on GitHub Pages</a>,
  GitHub’s hosting service that allows you to create a personal website,
  “project site”, based on a repository to make your portfolio site.

- If you’re interested in paid accounts, GitHub has a
  <a href="https://github.com/pricing"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">pricing page</a> with various types of
  accounts and features you can look at.

Show the world what you can do with your code!

# Set Up with Git and GitHub

Never fear losing work with this professional versioning system

In this tutorial, we walk through the process for using Git locally on
your personal computer and using GitHub to back it up. Specifically,
we’ll walk through creating your personal GitHub account, setting up Git
on your computer, starting your first Git repository, and connecting
that repository to a GitHub repository.

This tutorial assumes that you’ve completed the lessons on
<a href="https://www.codecademy.com/learn/learn-the-command-line"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Learn the Command Line</a> and
<a href="https://www.codecademy.com/learn/learn-git"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Learn Git</a>. Now, prepare to use those skills on your
personal computer! If some steps in this tutorial are confusing, have no
fear; it will all come together by the end.

## What are Git and GitHub?

This tutorial refers to Git and GitHub repeatedly. *Git* is a
widely-used version control system used to manage code. Git allows you
to save drafts of your code so that you can look back at previous
versions and potentially undo complicated errors. A project managed with
Git is called a *Git repository*.

*GitHub* is a popular hosting service for Git repositories. GitHub
allows you to store your local Git repositories in the cloud. With
GitHub, you can backup your personal files, share your code, and
collaborate with others.

In short, GitHub is a tool for working with Git. There are other
services to host Git repositories, but GitHub is a trusted, free service
used by organizations across the world, big and small.

## Create a GitHub Account

To use GitHub, you will need a GitHub account.

In your own browser:

1.  Open a new browser tab
2.  Navigate to <a href="https://github.com/"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank" rel="noopener">https://github.com/</a>
3.  Create an account

If you already have a GitHub account, continue to the next exercise.

After you sign up, you will receive a verification e-mail. Be sure to
verify your e-mail address to GitHub by following the instructions in
that e-mail.

## Git Setup for Mac and Windows

Next, we will set up Git on your personal computer. Follow the
instructions for your operating system.

### Mac users:

1\. Launch the ***Terminal*** application. You can find it in
**/Applications/Utilities/**. You can also use the ***Spotlight***
search tool (the little magnifying glass in the top right of your
screen) to search for ***Terminal***. Once ***Spotlight*** locates it,
click on the result that says ***Terminal***.

2\. When ***Terminal*** opens, type in `git` and press enter.

3\. If you don’t already have Git installed, a dialog will appear saying
that “The ‘git’ command requires the command line developer tools. Would
you like to install the tools now?” Click “Install”.

<img
src="https://content.codecademy.com/courses/freelance-1/unit-3/git%20bash%20setup/annotated_xcode_prompt.png"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="macInstall" />

Then click “Agree to the Terms of Service” when requested.

<img
src="https://content.codecademy.com/courses/freelance-1/unit-3/git%20bash%20setup/annotated_xcode_terms.png"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="macAgree" />

4\. When the download finishes, the installer will go away on its own
signifying that Git is now installed! Click “Done” to finish the
installation process.

<img
src="https://content.codecademy.com/courses/freelance-1/unit-3/git%20bash%20setup/annotated_xcode_finished.png"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="macDone" />

5\. Navigate to GitHub’s articles on setting up your
<a href="https://help.github.com/articles/set-up-git/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Git username</a> and
<a href="https://help.github.com/articles/setting-your-email-in-git/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">email</a> and follow the instructions for
each using Terminal.

6\. GitHub offers two authentication options, HTTPS and SSH, to keep
your work secure. This is a security measure that prevents anyone who
isn’t authorized from making changes to your GitHub repository. In this
article, we will use HTTPS. Navigate to GitHub’s article on <a
href="https://docs.github.com/en/github/authenticating-to-github/keeping-your-account-and-data-secure/creating-a-personal-access-token"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">creating a personal access token</a> and
follow the instructions to configure your computer to be able to use
HTTPS.

> Note: As of August 13th, 2021, GitHub uses tokens instead of passwords
> to authenticate Git operations. More details can be found in <a
> href="https://github.blog/changelog/2021-08-12-git-password-authentication-is-shutting-down/"
> class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
> target="_blank" rel="noopener">GitHub’s blog post</a>.

Now skip down to the “Try it Out!” section below.

### Windows users:

This portion of the guide assumes you have already installed a program
called Git Bash which allows us access to Git on Windows. If you have
not installed Git Bash, please refer to the previous tutorial on Command
Line Interface (CLI) Setup and follow the instructions for installing
Git Bash on Windows. Once you complete that you can continue with this
guide.

1\. Open the Start menu and search for the app, git bash. You should see
‘Git Bash Desktop app’ appear. Press Enter or click on the Git Bash icon
to open the app.

<img
src="https://content.codecademy.com/courses/freelance-1/unit-3/git%20bash%20setup/annotated_gitbash_start.png"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="gitBashOpen" />

A new window will open that looks like this:

<img
src="https://content.codecademy.com/courses/freelance-1/unit-3/git%20bash%20setup/annotated_gitbash_shell_edited.png"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="gitBashShell" />

This window is our CLI, where we will use our Git commands.

2\. If you want to make sure that Git is installed, run `git --version`
in the CLI. You should see a response that gives you the version of Git
installed. It will look like this:

<img
src="https://content.codecademy.com/courses/freelance-1/unit-3/git%20bash%20setup/annotated_gitbash_test_edited.png"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="gitVersion" />

Git can now be used in the Git Bash app!

3\. Navigate to GitHub’s articles on setting up your
<a href="https://help.github.com/articles/set-up-git/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Git username</a> and
<a href="https://help.github.com/articles/setting-your-email-in-git/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">email</a> and follow the instructions for
each using Git Bash.

4\. GitHub offers two authentication options, HTTPS and SSH, to keep
your work secure. This is a security measure that prevents anyone who
isn’t authorized from making changes to your GitHub repository. In this
article, we will use HTTPS. Navigate to GitHub’s article on <a
href="https://docs.github.com/en/github/authenticating-to-github/keeping-your-account-and-data-secure/creating-a-personal-access-token"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">creating a personal access token</a> and
follow the instructions to configure your computer to be able to use
HTTPS.

> Note: As of August 13th, 2021, GitHub uses tokens instead of passwords
> to authenticate Git operations. More details can be found in <a
> href="https://github.blog/changelog/2021-08-12-git-password-authentication-is-shutting-down/"
> class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
> target="_blank" rel="noopener">GitHub’s blog post</a>.

## Try It Out!

Now you have everything you need to practice your Git skills on your
local computer. Take a moment to run the commands below to initialize a
Git repository. We will use this Git repository again later in this
tutorial so make sure you complete these steps exactly as described.

1.  `mkdir git_practice` to make a new directory to practice.
2.  `cd git_practice` to make the new directory your working directory.
3.  `git init` to turn the current, empty directory into a fresh Git
    repository.
4.  `echo "Hello Git and GitHub" >> README.txt` to create a new README
    file (more on this later) with some sample text.
5.  `git add README.txt` to add the new file to the Git staging area.
6.  `git commit -m "First commit"` to make your first commit with the
    new README file.

## Your First Remote Repository on GitHub

Finally, we’ll create a repository on GitHub and then link it to a local
repository on your computer. This allows you to backup your work
constantly and safely, so you never need to worry about losing your work
again!

Now, let’s connect our local Git repository to GitHub.

### Instructions

1\. In your Command Line Interface, make sure your current working
directory is your new Git repository. Navigate there if not.

2\. Check the status of which files and folders are new or have been
edited. There should be no files modified.

``` git
$ git status
```

3\. On GitHub, create a new repository by clicking the **New
repository** button on the home page. <img
src="https://content.codecademy.com/courses/freelance-1/unit-3/git%20setup/newrepository.png"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="newRepository" />

4\. On the new repository page, give your repository a name. It’s not
necessary, but it would be convenient to name it the same as the
directory, **git_practice**. After naming the repository, click **Create
repository**. <img
src="https://content.codecademy.com/courses/freelance-1/unit-3/git%20setup/createrepository.png"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="createRepository" />

5\. After creating a repository, GitHub displays the repository page. At
the top of the page, make sure “HTTPS” is selected. <img
src="https://content.codecademy.com/courses/freelance-1/unit-3/git%20setup/githubhttps.png"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="githubHttps" />

6.The repository is empty, so it’s time to connect it to your existing
work. Copy the Git commands on the GitHub page, under the title “…or
push an existing repository from the command line”, and paste them into
your Command Line Interface. Running these commands will add a remote
repository, and then push your local repository to the remote
repository.

When asked for a username and password, type in your GitHub username and
password and press `enter` after each. Don’t be alarmed if you can’t see
the characters you are typing, they are intentionally hidden as a
security measure. <img
src="https://content.codecademy.com/courses/freelance-1/unit-3/git%20setup/githubcommands.png"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="githubCommands" />

**Note:** If you set up two-factor authentication with GitHub (don’t
worry if you didn’t), follow <a
href="https://help.github.com/articles/creating-a-personal-access-token-for-the-command-line/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">GitHub’s instructions on creating a
personal access (OAuth) token</a> to be used instead of your password in
bash. By default, GitHub does not set up two-factor authentication. If
you are not familiar with two-factor authentication, you don’t have to
generate an OAuth token.

7\. Once your Command Line Interface reports that the push is complete,
refresh the page on GitHub. You should now see the text you wrote
earlier in the README file, “Hello Git and GitHub.”

GitHub automatically displays the contents of a file named
**README.txt** if it exists in the repository. The README file is the
perfect place to write a description of your project.

There you have it! Your first GitHub repository, linked to your local
Git repository. You’ve taken some huge leaps, so be proud! Now you can
use your knowledge of Git to track progress on your local computer and
push that progress to GitHub whenever you want. You can rest easy
knowing that each step of your progress is safely stored in GitHub.

# Getting Started with Git and GitHub (Videos)

This article introduces the basic concepts of Git and GitHub, and how to
get started setting up Git on your computer for both Mac and Windows.

The videos below will walk you through setting up Git and GitHub on your
computer for both Mac and Windows so that you can start to use version
control and collaboration tools like a pro.

#### Mac OSX

[Lesson Supplement Getting Started With Git and
Github](https://www.youtube.com/watch?v=tMDbJ0DDuug)

#### Windows PCs

[Lesson Supplement Getting Started with Git and
GitHub](https://www.youtube.com/watch?v=-sMmrYTtQgE)

# Starting a Code Base on GitHub

[Starting a code base on
GitHub](https://www.youtube.com/watch?v=zFxuHc9AUzg)

# How to Push Code to GitHub

[How to Push Code to
Github](https://www.youtube.com/watch?v=wrb7Gge9yoE)

# The GitHub Flow

## Introduction

In this lesson, we’ll discuss the flow of using GitHub with your code
development process. When working on a project, things can scale rather
quickly. Following a specific workflow allows the project to move in
more orderly way.

Remember that Git is defined as a version control system that’s
maintained on your local system. It helps you manage and record your
source code history. GitHub, on the other hand, is a hosting service for
repositories. Simply put, Git is the tool and GitHub is the service for
projects that use Git.

In this lesson we’ll take a look at the basic workflow used with GitHub,
which goes like this:

1.  Create a branch
2.  Commit changes
3.  Create a pull request
4.  Review pull request
5.  Merge and delete branch

By sticking to that workflow, team members are able to isolate their
work and avoid any conflicting code from being merged. In the following
lesson, we’ll take a deeper look at each of these steps.

### Solution

<img class="interactive-img" src="assets/github-flow-0.svg">

## Managing Branches

Whenever we’re working on a team creating multiple versions of a project
code, it’s important to isolate each teammate’s work in order to avoid
any conflicts. With Git, each teammate can create their own branch off
of the main project in order to work on bug-fixes, new features,
experimental code, etc.

A branch is essentially a divergence from the main project. ​​When you
branch out, git is essentially making a new state of your current code,
upon which you can work, without affecting the important main state of
the code. One can create as many branches as they wish and even create
branches off of other branches.

By using separate branches, the main project remains intact and
unaffected before the changes are reviewed and merged into the project.

Each repository can have one or more branches. The main branch — the one
where all changes eventually get merged back into, is called `main`. The
`main` branch is usually the working version of a project and contains
the production code, so it’s very important to only merge clean and
correct code into it!

When someone wants to create a new feature, fix a bug, or just
experiment, they should always create their own branch with a
descriptive name.

Each team will adopt their own best practices when working together and
figuring out naming conventions. For example, the branch name
`carlos_feature_dashboard_notifications` includes the author, branch
type, and short branch description. Other teams may pick branch names to
correspond to ticket numbers from their project management tool.

### Solution

<img src="https://static-assets.codecademy.com/Courses/learn-git-github/github-flow/github-flow-branch.svg" alt="branch flow" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Adding and Committing Changes

Let’s assume you were recently assigned to a team to develop a feature
for an app. You clone (download) the entire app repository from GitHub
and create a branch for your feature of the `main` branch, and begin
coding a new file in your local Git environment.

After testing your code and ensuring that everything is running
correctly, it’s time to push those changes with a commit!

As a refresher, the `git commit` command records change to one or more
files in your branch, assigning the commit a unique ID that identifies
who created the changes, what changes were created, and when the changes
were created.

You can commit along with a message describing your work, and lastly,
push the commit to the remote Github repository.

### Solution

<img src="https://static-assets.codecademy.com/Courses/learn-git-github/github-flow/github-flow-commit-changes.svg" alt="commit changes" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Creating a Pull Request

At this point, your work is ready to be reviewed before it’s integrated
into the official project.

Pull Requests on GitHub allow collaborators to review and give feedback
on proposed code changes before they are merged to the main branch.
Through a process of discussion and potentially some extra code changes,
the pull request can be ultimately approved, which means you can merge
the changes into the official project on the `main` branch.

When creating pull requests, it’s imperative that you include as much
relevant detail in the description as possible in order to save review
time. Add any comments or images that might be useful for your reviewer.

It’s also important to ensure that your code is running properly with
the updated repository in order to prevent anything from crashing.
Lastly, you don’t want to submit a pull request with 50 files containing
a plethora of changes, instead, stick to smaller-sized pull requests
since they’re easier and faster to review.

### Solution

<img src="https://static-assets.codecademy.com/Courses/learn-git-github/github-flow/github-flow-open-pull-request.svg" alt="open pull request" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Reviewing and Merging a Pull Request

Once you’ve created a pull request, other members in your team can
review it up on GitHub.

The pull request should include a description and GitHub will display
all the files with the changes created. Each line of code will have a
clickable “+” button where you can add a comment in regards to the line.

While reviewing, it’s important to be constructive with feedback and be
precise about what needs to be changed. Here are few best practices when
reviewing code:

- Don’t only comment on *what* should be changed, but *why* it should be
  changed. Feel free to provide resources to make your point.

- Be as clear as possible with your comments and make sure to be clear
  as to what to modify.

- Look at the bigger picture and try to spot potential errors. Would the
  submitted code produce any obstacles if the project scales?

Once all the feedback is added, collaborators can click on “Submit
Review” and wait for a response. If all goes well, the pull request will
eventually be merged into `main`!

### Solution

<img src="https://static-assets.codecademy.com/Courses/learn-git-github/github-flow/github-flow-review-pull-request.svg" alt="review pull request" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Deleting a Branch and Review

Once changes are merged, in order to keep things organized and managed,
it’s imperative to only keep active branches and delete the closed ones.

With that in place, this wraps up the flow of working on a project using
Github. We explored:

- The importance of creating branches and isolating work from the `main`
  branch.

- Best practices of naming branches and making commits on branches.

- What a pull request is: a discussion page for a set of code changes
  between one branch and another.

- Merging a branch and delete it once it’s merged.

This covers the main steps of working with a team and managing the
workflow using Github.

Github provides us with a number of useful tools that expand on Git
functionality, especially if we’re collaborating with teammates!

### Solution

<img src="https://static-assets.codecademy.com/Courses/learn-git-github/github-flow/github-flow-merge-delete-branch.svg" alt="merge delete branch" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

# GitHub and Markdown

Why learn Markdown?

Once we add our code to GitHub, how do we actually format the text in
our repository?

Technically, we could use plaintext on everything. But if we wanted to
highlight our project with codeblocks, insert images into our project
descriptions, or visually pace our documentation with headings, using
Markdown on GitHub is the answer!

With a little bit of Markdown magic, you can achieve text that includes
headings, hyperlinks, emojis, checkmarks, and codeblocks like the
following file in our <a href="https://github.com/Codecademy/learn-cpp"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Learn C++ repository</a>!

<img
src="https://static-assets.codecademy.com/Courses/learn-git-github/markdown/markdown-example.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="A README.md file of a GitHub repository, filled with hyperlinks, indentations, headings, emojis" />

Markdown is an indispensable skill and can be opened in many other
applications, not just GitHub. In the next few interactive articles,
you’ll learn the basics of Markdown and how to use it to write a good
README for your project!

Let’s get started!

# What is Markdown?

[What is markdown?](https://www.youtube.com/watch?v=f49LJV1i-_w)

# What is Markdown?

An alternative way to style a text document for readability and
portability.

## Introduction

If you are looking for a simple way to create visually appealing text
documents without using any fancy editors, check out
<a href="https://en.wikipedia.org/wiki/Markdown"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Markdown</a>. Invented by John Gruber and
Aaron Swartz in 2004, Markdown provides a lightweight syntax to style
any text document so that it can be converted to <a
href="https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/HTML_basics"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">HTML</a> for viewing and publishing.

## Differences between HTML and Markdown

Markdown translates to HTML, but Markdown is not a replacement for HTML.
Markdown’s syntax can be converted to a small subset of HTML tags to do
things like format text, add links, display images, and more. You can
even incorporate HTML elements inside a Markdown document. To render
Markdown in HTML, though, you would need a tool called a Markdown parser
(more about this parser later on).

## Benefits of Using Markdown

Why would you use Markdown? Compared to HTML, writing text in Markdown
is much faster because the syntax is simpler. The
<a href="https://daringfireball.net/projects/markdown/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">authors of Markdown</a> intended Markdown
to be a language for writing styled text with syntax that is just as
easy to read as it is to write.

Imagine that we are writing down some important text on a sheet of
paper. If we wanted to emphasize the text we might underline it, twice
even! Similarly, in Markdown, we could write:

``` git
Title of My Document
====================
```

Notice that we have plain text that has a row of equal signs (`=`) to
produce a first-level header, also known as `<h1>`. On a webpage, the
heading will display as such:

# Title of My Document

The amount of `=`s don’t matter so long as there’s at least one and it
goes under the text.

For text that’s important, but not as important as a first-level
heading, we might just underline it once. In code, we could use a row of
hyphens (`-`), like so:

``` git
Sub-Title of My Document
------------------------
```

to produce a second-level header, also known as `<h2>`:

## Sub-Title of My Document

Both examples are valid Markdown syntax. It is intuitive and normal for
headings to be in either format. Alternatively, you can format headings
using the `#` character. We’ll show more examples of different headings,
but for now, here’s an example of valid syntax for a `<h1>` heading:

``` git
# Title of My Document
```

Furthermore, a Markdown document without any HTML tags can be published
as is because its syntax is already made for easy viewing. For example,
the following Markdown document has:

- styled a heading underlined with equal signs (`=`),
- emphasized `week` in bold with double asterisks (`**`),
- bulleted a list by prefacing each item with a number and a period,
- and marked several lines as separate quotes with an angle bracket
  (`>`) per quote.

``` git
My Todo List
============
 
At the end of this **week**, I plan to:
 
1. Learn Markdown
2. Write Markdown
3. Share a Markdown note
 
My favorite quote is:
> If you didn't get it the first time
> Do not despair
> Try and try again
> ~ Anonymous
```

The HTML equivalent to the above would be:

``` git
<h1>My Todo List</h1>
<p>At the end of this <strong>week</strong>, I plan to:</p>
<ol>
  <li>Learn Markdown</li>
  <li>Write Markdown</li>
  <li>Share a Markdown note</li>
</ol>
<p>My favorite quote is:</p>
<blockquote>
  <p>
    If you didn't get it the first time<br>
    Do not despair<br>
    Try and try again<br>
    ~ Anonymous
  </p>
</blockquote>
```

When viewed on a Markdown parser such as
<a href="https://stackedit.io/app#"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Stackedit.io</a>, you will see this: <img
src="https://static-assets.codecademy.com/Courses/What-is-Markdown/stack_edit_md_parser.jpg"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Markdown Rendering on Stackedit.io" />

or this, based on Codecademy’s parser:

# My Todo List

At the end of this **week**, I plan to:

1.  Learn Markdown
2.  Write Markdown
3.  Share a Markdown note

My favorite quote is:

> If you didn’t get it the first time Do not despair Try and try again ~
> Anonymous

While both parsers take the same Markdown input, they render slightly
different HTML based on their internal configuration and CSS.

## When to Use Markdown

After knowing the many benefits of Markdown, you might want to consider
using Markdown if you ever find yourself in any of these scenarios:

- The only editor available to you supports just plain text.
- Time is of the essence and you can’t afford to learn how to use an
  unfamiliar rich-text editor.
- You need to quickly outline your ideas in a structured but presentable
  manner.
- You want your document to be portable so that it can convert to HTML,
  PDF, EPUB, and/or MOBI.

## Markdown Document Extension

Contrary to popular belief, Markdown is not a document format.
Therefore, it doesn’t require a strict file extension naming convention,
such as **.md**. As the <a
href="https://superuser.com/questions/249436/file-extension-for-markdown-files"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">official Markdown mailing list</a>
explains, Markdown isn’t meant to take over the format of a file. Any
file extension that you would normally use to name your text document
such as **.txt** or **.text** is appropriate. However, organizations
such as <a href="https://guides.github.com/features/mastering-markdown/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">GitHub</a> have a preference to expect
Markdown documents to appear with an **.md** or **.markdown** extension.

## Markdown Applications

Since Markdown has gained a lot of popularity, you will find Markdown
content being accepted in many applications.

- Website publishers that accept Markdown content include <a
  href="https://wordpress.com/support/can-i-use-markdown-on-wordpress-com"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Wordpress.com</a>,
  <a href="https://www.markdownguide.org/tools/ghost/"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Ghost</a> and
  <a href="https://beakerbrowser.com/docs/guides/create-a-markdown-site"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">BeakerBrowser</a>. Tools such as
  <a href="https://www.markdownguide.org/tools/jekyll/"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Jekyll</a>,
  <a href="https://www.markdownguide.org/tools/docusaurus/"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Docusaurus</a> and
  <a href="https://www.markdownguide.org/tools/mkdocs/"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">MkDocs</a> can convert Markdown
  documents into a static website geared for technical documentation.
  Take a look at this
  <a href="https://daringfireball.net/projects/markdown/basics"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">page</a> rendered in HTML, and its text
  <a href="https://daringfireball.net/projects/markdown/basics.text"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">source</a> styled in Markdown.

- Book publishers such as <a
  href="http://help.leanpub.com/en/articles/2941344-leanpub-flavoured-markdown-vs-markua-for-writing-in-plain-text"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">LeanHub</a> accepts Markdown
  manuscripts and convert them to books for publication.

- Slide-show presentations such as <a href="https://remarkjs.com/"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Remark</a> and
  <a href="https://jdan.github.io/cleaver/#2"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Cleaver</a> can convert Markdown slides
  into HTML for web viewing.

## The Markdown Parser

A Markdown parser is software written to parse the Markdown syntax in a
text document and convert it to HTML syntax. The original Markdown
parser was written in Perl, but you can find parser <a
href="https://github.com/markdown/markdown.github.com/wiki/Implementations"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">implementations</a> today in almost any
programming language. Regardless, a basic Markdown parser should support
the <a href="https://daringfireball.net/projects/markdown/basics"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">core Markdown syntax</a>: paragraphs,
headers, blockquotes, phrase emphasis, lists, code, images, and links.

There are Markdown parsers that are freely available on the Web:
<a href="https://stackedit.io/app#"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">StackEdit.io</a>,
<a href="http://dillinger.io"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Dillinger</a>,
<a href="https://parsedown.org/demo"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Parse</a> and
<a href="https://markdowntohtml.com/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Markdown to HTML Converter</a>. In
addition to parsing and rendering, both Parse and Markdown to HTML
Converter also convert the Markdown document to raw HTML so that you can
copy and paste the HTML to be used elsewhere.

## Markdown Tutorial

Let’s learn a little more about the Markdown syntax. As mentioned above,
you can simulate a `<h1>` HTML tag with a `#` Markdown symbol. Since
there are six heading tags for HTML, from `<h1>` through `<h6>`, you can
simulate this with `#` through `######` in Markdown. For example this
Markdown syntax:

``` git
# This is a H1 heading
## This is a H2 heading
### This is a H3 heading
#### This is a H4 heading
##### This is a H5 heading
###### This is a H6 heading
```

will render this:

# This is a H1 heading

## This is a H2 heading

### This is a H3 heading

#### This is a H4 heading

##### This is a H5 heading

###### This is a H6 heading

In addition to numbered lists, you can style a bulleted list too. There
are three different symbols you can use to mark a line item as a bullet:
asterisk (`*`), plus sign (`+`), or hyphen (`-`).

For example:

``` git
* Markdown
+ HTML
- XML
```

produces this:

- Markdown
- HTML
- XML

For best practice, it is recommended to use the same marker throughout
your list instead of mixing them like above.

The core Markdown syntax does not include nested lists (list within
another list), but it allows adding paragraphs between list items. To do
so, you need to add a blank line after a list item and indent 4 spaces
or 1 tab before starting a paragraph. Some parsers are lenient and do
not enforce 4 spaces but there should be some spacing.

``` git
* Markdown
 
   Markdown is a lightweight markup language for styling text.
 
* HTML
 
   HTML stands for HyperText Markup Language.
```

For more examples of basic syntax, check out
<a href="https://commonmark.org/help/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">CommonMark’s reference guide</a>.

Let’s practice styling a page that contains a truncated description of
one of Codecademy’s courses,
<a target="_blank" class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0" href="https://www.codecademy.com/learn/learn-alexa"><code class="code__2rdF32qjRVp7mMVBHuPwDS">Learn
to Program Alexa</code></a>. Fill in the code so that your output should
look like this:

<img src="https://static-assets.codecademy.com/Courses/What-is-Markdown/rendered_learn_alexa2.jpg" alt="Learn to Program Alexa description that has the following elements in order: H1 heading of Learn Alexa, H2 heading of Why Learn Alexa, a paragraph, two unordered list items, H3 heading of What You'll Learn, 2 ordered bullet points that each have a nested paragraph" class="img__1JGFO2nlisObc3KeOSGPRp">

``` md
# Learn to Program Alexa
 
## Why Learn Alexa?
 
With a comprehensive understanding of the process for developing a custom Alexa skill, you’ll be prepared to:
+ publish your own program and 
+ work with other Voice User Interface (VUI) applications.
 
### What You'll Learn
 
1. Build Your First Alexa Skill
 
    Learn to build skills for Alexa using the Alexa Skills Kit and Amazon Web Services (AWS).
  
2. Create Your Lambda Function
 
    In this course, you will learn how to create your own Lambda function using the AWS console.
```

👏 You got it!

## The Markdown Flavors

Because the core Markdown language supports only a subset of HTML
features, many independent developers have extended the Markdown syntax
to incorporate more HTML compatibilities and customize it for their own
organizations. Here are a few popular flavors of Markdown:

- <a href="https://commonmark.org/"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">CommonMark</a> is a body of
  special-interest developers who work side-by-side on a proposal to
  standardize the Markdown syntax and offer extensive test suites to
  validate Markdown implementations against this specification. This
  standard has been used by other developers to base their code upon.

- GitHub Flavored Markup, or <a href="https://github.github.com/gfm/"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">GFM</a> is GitHub’s expanded dialect of
  Markdown based on CommonMark and is used throughout the GitHub
  platform by its active community.

- <a href="https://help.trello.com/article/821-using-markdown-in-trello"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Trello</a>, a popular collaborative
  tool that organizes and tracks information through virtual boards and
  cards, implements a custom version of Markdown as well.

## Conclusion

You’ve learned a lot about Markdown, specifically:

- What Markdown is and how it differs from HTML
- How you can benefit from Markdown
- Where and when to apply Markdown in various scenarios
- How to write Markdown to style your text and make it presentable
- What a Markdown parser is and where to locate one
- Where to find other flavors of Markdown that are used in industry

Amazing job getting this far! Don’t be shy in applying Markdown in your
next document. In fact, this article and many others like this on
Codecademy were prepared using Markdown! See? We practice what we
preach.

# How To Write a Good README for Your Project

This article explains the purpose, conventional structure, and proper
formatting of a README file, and best practices to follow when writing
one.

## What Is a README File?

You may have noticed that when a GitHub repo is initialized, you see a
prompt to create a README.md file immediately. As implied in its name, a
<a
href="https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-readmes"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">README</a> file is a text file that is
meant to be read as soon as someone views the repository. This file
contains text to introduce, explain, and share the information required
to understand what the project is about.

<img
src="https://static-assets.codecademy.com/Courses/learn-git-github/write-README/github-README.svg"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Comic with three panels in which a character clones a GitHub project, gets confused trying to use it, and finally realizes after three hours that there’s a README file explaining all of the steps" />

Since a README file is often the first thing a visitor sees, README’S
should tell the viewer how to install and use the project. There is no
one good way to structure a README but there is only one bad way: not to
include a README at all.

Complete the sentence below about the function of a README file.

A README file is the first thing a user sees on your GitHub repository.
It provides a/an overview of what your project is about.

👏 You got it!

## Conventions of a Good README File

Your README file should be as good as your project itself.

Make your project stand out look professional by at least including the
following elements in your README:

- **Project Title**: the name of your project
- **Description**: This is an extremely important component of the
  README. You should describe the main purpose of your project. Answer
  questions like “why did you build this project?” and “what problem(s)
  does it solve?”. It also helps to include your motivations for the
  project and what you learned from it.
- **Features**: If your project has multiple features, list them here.
  Don’t be afraid to brag if your project has unique features that make
  it stand out. You can even add screenshots and gifs to show off the
  features.
- **How to use**: Here, you should write step-by-step instructions on
  how to install and use your project. Any software or package
  requirements should also be listed here.
- **Technologies**: List all the technologies and/or frameworks you used
  and what purpose they serve in your project.
- **Collaborators**: If others have contributed to your project in any
  way, it is important to give them credit for their work. Write your
  team members’ or collaborators’ names here along with a link to their
  GitHub profile.
- **License**: It’s also important to list a license on your README so
  other developers can understand what they can and cannot do with your
  project. You can use <a href="https://choosealicense.com/"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">this guide</a> to help you choose a
  license.

Keep README’s brief but detailed. README should always be up-to-date and
self-explanatory. If you have spent a lot of time on your project, you
should also spend a good chunk of time on the README. It can help your
future self as well when you step away for a while and need to get
reacquainted with your project. Not to mention it’ll leave a positive
impression on future interviewers who look at your GitHub profile.

## Using Markdown to Format README’s

Keep in mind that nobody wants to read a long block of unformatted text
bloated with information. That is why a README file usually has the
`.md` extension. Formatting README files with Markdown can give it flair
and make it interesting to read.

What file extension is typically used for a README file on GitHub?

- [x] .md
- [ ] .html
- [ ] .txt

👏You got it! Markdown files are automatically rendered on GitHub so
they are the preferred file type for a README.

### Use Headers

Every title or section (usage, license, etc.) in a README.md should be
formatted as a header. Using headers and adding some HTML, we can
achieve stuff like this:

### 📕 Codecademy Docs

**Documentation for popular programming languages and frameworks.**  
**Built by the community. Maintained by Codecademy.**

#### What is Docs?

<a href="https://www.codecademy.com/resources/docs"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Codecademy Docs</a> is a free, easily accessible
reference for coding terms and concepts, available to developers all
over the world.

Take a look at the README file on
<a href="https://github.com/Codecademy/docs"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Codecademy’s docs repository</a> for the
source code.

GitHub uses headers to automatically generate a table of contents for
README files based on the Markdown sections. Something like this

    ## Usage
    Please follow these steps to get your application up and running.
     
    ### Requirements
    The following packages are required for this script to work.
    - pandas
    - numpy
    - requests
     
    To install these packages, you can simply run: `pip install -r requirements.txt`

GitHub will find the headers and include them in a table of contents
based on the header hierarchy:

<img
src="https://static-assets.codecademy.com/Courses/learn-git-github/write-README/table-of-contents.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="An image of a README on GitHub showing table of contents for the project called &quot;My Awesome Project&quot;. The headers include &quot;What does it do?&quot;, &quot;Usage&quot; with a &quot;Requirements&quot; subsection, and &quot;License&quot;." />

### Level Up README’s With Media

Documentation doesn’t have to be boring. Go for images or videos to make
a project more understandable and appealing! We can add project’s logo,
diagrams, screenshots, or even GIFs!

For Markdown files living in a repository, the path to the image can
either be to an URL or to an image file in the repository. For example,
if we had an image named `diagram.png` inside the `images` folder of the
repository, we could reference it like so
`![Use Case Diagram](./images/diagram.png)` in the **README.md**.

## Conclusion

Write engaging README’s! Make sure they include easy-to-follow details
for your project. This improves your documentation skills and makes you
a better developer and communicator of code.

If you want to see more examples of good README’s, take a look at the
README on Codecademy’s <a href="https://github.com/Codecademy/40Phaser"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">40Phaser</a> and
<a href="https://github.com/Codecademy/stuff.js"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">stuff.js</a> repositories. For more
information on GitHub’s formatting syntax, take a look at their <a
href="https://docs.github.com/en/github/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">docs</a>.

Which of the following should you NOT include in your project’s README
file?

- [ ] A list of your project’s features.
- [ ] The license under which your code is made available.
- [x] Documentation describing each file in your project.
- [ ] A clever name for your project.

👏 Since the README file is usually the first thing people see in your
GitHub repository, it should give a clear and concise introduction to
your project as a whole rather than a detailed summary of every file

# Review: Git and GitHub, Part I

Review what you just learned in the Git and Github, Part I Unit.

Congratulations! The goal of this unit was to introduce you to the Git
versioning technology. Understanding Git is a crucial tool in your
developer toolkit—but don’t worry if it didn’t stick! Practice is
crucial with Git, which is why we introduced it early in the Path. You
also now know how to take the repositories on your computer and put them
online with GitHub. Having your work on Github will be important when
you apply for jobs, and now you also know how to write a solid README.md
with markdown.

Having completed this unit, you are now able to:

- Version control projects using Git
- Backtrack in Git
- Host a codebase online using GitHub repositories
- Use markdown to author a good README.md file

If you are interested in learning more about these topics, here are some
additional resources:

- Documentation: <a href="https://docs.github.com/en"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">GitHub Docs</a>
- Resource:
  <a href="https://education.github.com/git-cheat-sheet-education.pdf"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">GitHub Cheatsheet</a>
- Video Playlist: <a
  href="https://www.youtube.com/playlist?list=PLg7s6cbtAD15G8lNyoaYDuKZSKyJrgwB-"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Get Up and Running on Git and
  GitHub</a>
- Resource: <a href="https://lab.github.com/"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">GitHub Learning Lab</a>
- Resource:
  <a href="https://code.visualstudio.com/docs/languages/markdown"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Markdown and Visual Studio Code</a>
- Resource: <a
  href="https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">GitHub Guide to Markdown</a>

Remember, you will put all of this knowledge into practice with an
upcoming Portfolio Project. If you ever get stuck while working on the
project, you can come back to this Unit and review what you have
learned.

Learning is social. Whatever you’re working on, be sure to connect with
the Codecademy community in the
<a href="https://discuss.codecademy.com/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">forums</a>. Remember to check in with the
community regularly, including for things like asking for code reviews
on your project work and providing code reviews to others in the
<a href="https://discuss.codecademy.com/c/project/1833"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">projects category</a>, which can help to
reinforce what you’ve learned.
