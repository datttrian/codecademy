# SnapFit Robots, Inc.

Now that you’ve had more practice with the Git workflow, let’s solidify
your new skills even more.

In this project, you will be working on assembly instructions for
Snap-Fit Robots Inc., a build-it-yourself robot company.

If you get stuck during this project or would like to see an experienced
developer work through it, click “**Get Unstuck**“ to see a **project
walkthrough video**.



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

## [Solution](snapfit-robots.txt)

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
