#!/bin/sh

for x in mariadb; do
  cd $x
  docker build -t $x .
  cd ..
done

for x in base server agent frontend; do
  cd $x
  docker build -t zbx-$x .
  cd ..
done

