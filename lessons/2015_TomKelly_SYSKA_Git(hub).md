#My Lesson Title

 - **Authors**: Tom Kelly
 - **Research field**: Cancer Genomics and Bioinformatics
 - **Lesson Topic**: Introduction to the Study Group with Git and GitHub

![](http://imgs.xkcd.com/comics/git.png)

Introduction to Git according to https://xkcd.com/

This is an introduction to version control with Git and submitting changes to Github repositories. The Example used here is to add a user to the Study Group page.

First make sure participants have installed Git according to the Software Carpentry instructions: http://software-carpentry.org/workshops/setup.html

Configure Git (with GitHub Accounts) - only needs to be done once per machine:

```bash
git config --global user.name <GitHub UserName>
git config --global user.email <GitHub Email>
git config --global core.editor <editor> #defaults to vim. Can use any text editor. Recommend nano for Mac/Linux or notepad for Windows to new users.
```
 
This will display your details if configured correctly
```bash
git config -l
```

Go to a repository you wish to edit, for example [https://github.com/smilefreak/studyGroup/] and click the "Fork" button to make a copy on your account.

Use the "ssh clone url" from your forked GitHub Repo to import this into a folder on your local machine:
```bash
git clone https://github.com/<your username>/studyGroup.git
```

Make any change you wish to submit. For example, we are going to add a new member to our studyGroup webpage:

```bash
nano studyGroup/_data/members.yml #ctrl O to save, ctrl X to exit
notepad studyGroup/_data/members.yml #ctrl S to save, alt F4 to exit
```

Add a new member using the template on a new line:
```
- name: <FirstName> <LastName>
  affiliation: <Institution>
  github: <Git Hub UserName>
  interests:
    - <interest1>
    - <interest2>
    - <interest3>
```
Make a new "snapshot" of your changes on your local repository:
```bash
cd studyGroup
git add _data/members.yml
git commit -m 'added me' _data/members.yml
```
These commands check whether your changes have been recognised by Git:
```bash
git status
git log #ctrl Q to exit
```
Check GitHub is connected:
```bash
git remote -v
```
An "origin" remote repository should appear. If not then configure one with:
```bash
git remote add origin https://github.com/<username>/studyGroup.git
```
Submit changes to your GitHub Repository, this shares your code publicly and saves your commits (including the commit history) on the "GitHub" cloud.
```bash
git push origin master # push to the remote "origin" repository on the default "master" branch
```

From your `studyGroup` repository, click "Pull Request" and submit your changes to the repository your originally forked from. The user will recieve a notification and can accept to "merge" your changes. You will then appear on our "Study Group" webpage.

Notice that Git is very powerful and can handle submissions of multiple changes from multiple users - it will only require "conflicts" to be resolved manually is multiple users have edited the same line of code.

To download the latest version of the repository "Fork" the users GitHub repository, as before, and use `git pull origin master` to update your local repository.

Welcome to Git. Welcome to GitHub, please join the discussion on what we can do next: https://github.com/smilefreak/studyGroup/issues
