# Author: Taylor Miller
# Date: 8/27/20
#
# Makefile for the die project
# All commands under the rules must start with a tab
#Variables
CFLAGS = -Wall -std=c++11
CC = g++
#Linking all the files
#Create the executable program "a.out"
a.out: die-main.o die.o
$(CC) $(CFLAGS) die.o die-main.o
die.o: die.cc die.h
$(CC) -c $(CFLAGS) die.cc
die-main.o: die-main.cc die.h
$(CC) -c $(CFLAGS) die-main.cc
# remove all the object and executable files
clean:
rm -f die-main.o die.o die-main a.out