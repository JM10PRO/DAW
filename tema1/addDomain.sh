#!/bin/bash
grep -q -w "$1" /etc/hosts
if [ $? -eq 0 ]
then
  echo "El dominio ya existe"
else
  echo "$2 $1" >> /etc/hosts
  echo "Se ha añadido el dominio $1 con IP $2 satisfactoriamente"
fi
