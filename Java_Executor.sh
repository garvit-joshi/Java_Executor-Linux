#!/bin/bash
: '
	Java_Executor-Linux-Executes Java files with simplicity
    Copyright (C) 2020  Garvit Joshi

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License along
    with this program; if not, write to the Free Software Foundation, Inc.,
    51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
	Git-Hub Link: https://github.com/garvit-joshi/Java_Executor-Linux
'
echo -e "\t\tWELCOME TO EXECUTOR"
echo -e "\t\t\tGarvit Joshi(garvitjoshi9@gmail.com)"
echo -e "\t\t\t\tUSER:$USERNAME"
while true
do
	python3 filename_java.py
	filename="Input.txt"
	while IFS= read -r line
	do
	        javac "$line"
	done <"$filename"
	python3 filename_class.py
	filename="Input.txt"
	echo "--------------------------------"
	echo "OUTPUT:"
	echo "--------------------------------"
	while IFS= read -r line
	do
	        java "$line"
	done <"$filename"
	echo "--------------------------------"
	echo "--------------------------------"
	read -p "Press [Enter] key to continue..." readEnterKey
	clear
done
exit
