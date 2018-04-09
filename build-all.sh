#!/bin/sh

for x in base db server agent frontend; do
  cd $x
  docker build -t zbx-$x .
  cd ..
done

