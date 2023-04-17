# Daily Buzz

In this project, you’ll use the commands you just learned to navigate
through the files and directories of Daily Buzz, a national newspaper.

If you get stuck during this project or would like to see an experienced
developer work through it, click “**Get Unstuck**“ to see a **project
walkthrough video**.



1\.

Print the working directory.

If you ever get lost, you can return to this directory using `cd`.

2\.

List the files and directories in the working directory.

3\.

Change directories to the **freight/** directory.

4\.

List the files and directories in the working directory.

5\.

Change directories to the **porteur/** directory.

6\.

Change directories up two levels to the **bicycle-world-ii/** directory.

List the files and directories in the **bicycle-world-ii/** directory.

7\.

Change directories to the **mountain/downhill/** directory.

8\.

Make a file called **dirt.txt**.

9\.

Make a file called **mud.txt**.

10\.

List the files and directories in the **downhill/** directory.

11\.

Downhill biking is dangerous: In the **downhill/** directory, make a
directory called **safety/**.

12\.

Change directories to the **bicycle-world-ii/** directory.

13\.

List the contents of the **bicycle-world-ii/** directory.

14\.

The shop is adding a new type of bike!

In **bicycle-world-ii/**, make a directory called **bmx/**.

15\.

Without changing directories from **bicycle-world-ii/**, make a file in
the **bmx/** directory called **tricks.txt**.

16\.

List all files and directories in the current directory.

## [Solutions](daily-buzz.sh)

``` bash
$ pwd
/home/ccuser/workspace/daily-buzz
$ ls
culture  health  national  technology
$ cd national/politics
$ ls
policy
$ mkdir elections
$ cd elections
$ touch candidates.txt
$ touch issues.txt
$ cd ../../../
$ pwd
/home/ccuser/workspace/daily-buzz
$ mkdir business
$ cd business
$ ls
$ mkdir startups
$ cd startups
$ cd ../
$ mkdir startups/disruptors
$ touch startups/disruptors/tech.txt
$ touch startups/disruptors/design.txt
$ touch startups/disruptors/education.txt
$ cd ..
$ pwd
/home/ccuser/workspace/daily-buzz
```
