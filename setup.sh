chmod +x *.sh

if [ $(cat ~/.zshrc | grep notifier | wc -l ) -lt 1 ]
then
	echo "alias pub=\"bash $HOME/notifier/publisher.sh\"" >> ~/.zshrc
	echo 'if [ $( ps -A | grep listener | wc -l ) -lt 2 ];'"then; nohup bash $HOME/notifier/listener.sh > /dev/null 2>&1 & \nfi;" >> ~/.zshrc
else
	echo 'ALREADY.'
fi
