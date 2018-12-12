#!/usr/bin/env sh

echo 'Please enter your name and email address. This will be used for configuration of:'
echo
echo '\t- Git'
echo
echo 'Shell scripts can access these values using the USER_NAME and USER_EMAIL variables.'
echo

while true; do
	read -p 'Your name: '  name
	read -p 'Your email: ' email

	read -p "You entered '${name}' (${email}). Is this correct [Yn]?" yn
	case $yn in
        	[Nn]* ) ;; # Do nothing
        	* ) break;;
	esac
done

echo 'Writing to .zshrc'
echo "export USER_NAME=${name}"   >> ~/.zshrc
echo "export USER_EMAIL=${email}" >> ~/.zshrc
source ~/.zshrc

