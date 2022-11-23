#!/bin/bash
grep -q -w "Listen $1" /etc/apache2/ports.conf
if [ $? -eq 0 ]
then
  echo "El puerto $1 ya existe"
else
  echo "Listen $1" >> /etc/apache2/ports.conf
  echo Puerto $1 añadido
fi
