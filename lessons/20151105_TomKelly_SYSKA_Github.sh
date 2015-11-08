#! /bin/bash

#Configure Git (with GitHub Accounts) - only needs to be done once per machine
git config --global user.name <GitHub UserName>
git config --global user.email <GitHub Email>
git config --global core.editor <editor> #defaults to vim. Can use any text editor. Recommend nano for Mac/Linux or notepad for Windows to new users. 
#Will display your details if configured correctly
git config -l
#use the "ssh clone url" from your forked GitHub Repo
git clone https://github.com/<your username>/studyGroup.git
#make a change
nano studyGroup/_data/members.yml #ctrl O to save, ctrl X to exit
notepad studyGroup/_data/members.yml #ctrl S to save, alt F4 to exit
#make a new "snapshot of your change"
cd studyGroup
git add _data/members.yml
git commit -m 'added me' _data/members.yml 
#Use these to check is changes commited to Git
git status
git log #ctrl Q to exit
#check GitHub is connected
git remote -v
#if not then 
git remote add origin https://github.com/<username>/studyGroup.git
#Submit changes to your GitHub Repository
git push origin master # push to the remote "origin" repository on the default "master" branch
