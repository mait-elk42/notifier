while true
do
	curl -H 'Content-Type: application/json' -X GET https://discordproblem-nsx-default-rtdb.firebaseio.com/.json -o .savestatenow 2> /dev/null
	diff .savestate .savestatenow > /dev/null
	if [ $? -ne 0 ]
	then
		echo 'Take A Look In Discord Server!' | ./terminal-notifier.app/Contents/MacOS/terminal-notifier -sound default
	fi
	sleep 0.5
done