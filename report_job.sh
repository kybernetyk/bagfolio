#!/bin/sh

# User variables
email=js@szpilewski.com
subject="Your Financial Report"
fn=/tmp/short.log


# Run backup
cd /Users/kyb/code/bagfolio
date > $fn
echo "" >> $fn
echo "BTC:" >> $fn
./btcperf >> $fn

echo "" >> $fn
echo "ETH:" >> $fn
./ethperf >> $fn

echo "" >> $fn
echo "ETC:" >> $fn
./etcperf >> $fn

echo "" >> $fn
echo "REP:" >> $fn
./repperf >> $fn

echo "" >> $fn
echo "XMR:" >> $fn
./xmrperf >> $fn

mail -s "$subject" $email < $fn


rm $fn
