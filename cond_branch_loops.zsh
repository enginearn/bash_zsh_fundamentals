#!/bin/zsh

if [ "${1:l}" = yes ]; then
    echo YES
else
    echo NO
fi

if cd "$2"; then
    echo SUCCESS!
else
    echo failed...
fi

answer=yes
# test "$answer" = 'yes' 
[ "$answer" = 'yes' ]
echo $?
