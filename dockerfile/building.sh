#!/bin/bash

echo -n "Entrer le port : "
read port

re='^[0-9]+$'

if [[ $port =~ $re ]] ; then

  echo "Building le app"
  docker build . -t "devoir"

  docker run -d -p$port:5000 --name Devoir_container  devoir
 else
  echo "Le port n'est pas valide..."
fi
