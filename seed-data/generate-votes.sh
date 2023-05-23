#!/bin/sh

# create 5000 votes (2000 for option a, 500 for option b, 1500 for option c, 1000 for option d)
ab -n 1000 -c 50 -p posta -T "application/x-www-form-urlencoded" http://vote/
ab -n 500 -c 50 -p postb -T "application/x-www-form-urlencoded" http://vote/
ab -n 1000 -c 50 -p posta -T "application/x-www-form-urlencoded" http://vote/
ab -n 500 -c 50 -p postc -T "application/x-www-form-urlencoded" http://vote/
ab -n 1000 -c 50 -p postd -T "application/x-www-form-urlencoded" http://vote/
ab -n 1000 -c 50 -p postc -T "application/x-www-form-urlencoded" http://vote/
