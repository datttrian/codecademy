# Manhattan Zoo

Ready to try out some of your new Git knowledge?

In this project, you’ll use Git to keep track of meal guidelines for
animals at the Manhattan Zoo.

If you get stuck during this project or would like to see an experienced
developer work through it, click “**Get Unstuck**“ to see a **project
walkthrough video**.



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

## [Solution](manhattan-zoo.txt)

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
