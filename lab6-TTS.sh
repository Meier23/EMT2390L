#!/bin/bash
#This is a shell script for lab 6
# Script for saying the current local time

#variable that includes the date and the string literal
NOW=$(date +"The time is now %M minutes past %I %p UTC")

echo $NOW

#commmand for generating a TTS file and incorporating the variable
pico2wave -w TimeTTS.wav "$NOW"

#command for playing back the TTS audio file
aplay TimeTTS.wav
