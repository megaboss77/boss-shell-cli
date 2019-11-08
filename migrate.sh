#!/bin/bash

shopt -s nullglob


tree()
{
        if [ "$1" = '-d' ]; then
                _TREE_DIRSONLY=1
                shift
        fi
        _tree "${1-.}"
}

_tree()
{
        local indent="${indent}"
        local dir=${1%/}
        #  $1 is the path 
        #  $file is dir or file 
        indent="${indent}  "
        for file in "$1"/*; 
        do
                #printf $file
                # check if is the directory 
                if [ -d "${file}" ]; then
                        _tree "${file}"
                        continue
                fi
                (( _TREE_DIRSONLY > 0 )) && continue
                #only file part will go here 
				if [[ $file == *.jar ]]; then
                echo ${file##*/} 
                cp ${file}  /d/Users/7I190019/Desktop/migrate/all
				cp "${file%%.jar}.pom"  /d/Users/7I190019/Desktop/migrate/all
				fi
	
        done
}

tree "$@"


