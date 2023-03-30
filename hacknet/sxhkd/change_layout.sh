LAYOUT=$(setxkbmap -query | grep -oP "us|it")
if [ $LAYOUT = 'us' ]
then
	setxkbmap it
else
	setxkbmap us
fi
