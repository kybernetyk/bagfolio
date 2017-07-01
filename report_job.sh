#!/bin/zsh
. /home/kyb/.zshrc

# User variables
email=js@szpilewski.com
subject="Your Financial Report"
fn=/tmp/short.log


# Run backup
cd /home/kyb/src/bagfolio
./report > $fn

mail -s "$subject" $email < $fn


rm $fn
