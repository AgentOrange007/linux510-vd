#!/bin/bash

_basekernel=5.10

if [ -d stable-queue ] ;
then
  cd stable-queue
  git pull
  cd ..
else
  git clone git://git.kernel.org/pub/scm/linux/kernel/git/stable/stable-queue.git
fi

if [ -d stable-queue/queue-${_basekernel} ] ;
then
  cd stable-queue/queue-${_basekernel}
  _rev=$(git rev-list HEAD -1 --abbrev-commit --grep=${_basekernel})
  echo "" > ../../prepatch-${_basekernel/./}-g${_rev}.patch
  for i in $(cat ./series); 
  do 
     cat $i >> ../../prepatch-${_basekernel/./}-g${_rev}.patch; 
  done
else
  echo "There is no patchset this time"
fi
