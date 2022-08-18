#!/bin/bash
case $1 in
	"login")
		read -p "Username: " user
		read -p "Token: " pass
		echo $user >> .userdata
		echo $pass >> .userdata
		echo Your data was saved
	;;
	"start")
		git init
		git add .
		git commit -m "first commit"
		echo Select Branch:
		printf "\n1) main\n2) master\nleave blank for default (main)\n"
		read MEBR
		case $MEBR in
			"1")
				BRANCH='main'
			;;
			"2")
				BRANCH='master'
			;;
			"")
				BRANCH='main'
			;;
			*)
				echo "What is this?"
			;;
		esac
		git branch -M $BRANCH
		read -p "Repo URL:" REPO
		git remote add origin $REPO
		git push -u origin $BRANCH
	;;
	*)	
		git init
		git add .
		git commit -m "Default commit while developing"
		git push -u
	;;
esac
