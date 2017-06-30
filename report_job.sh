#!/bin/sh

# User variables
email=js@szpilewski.com
subject="Your Financial Report"
fn=/tmp/short.log


# Run backup
cd /Users/kyb/code/bagfolio
./report > $fn

mail -s "$subject" $email < $fn


rm $fn
