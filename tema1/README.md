# [Ejercicio 1](addPort.sh)
### Crea un script que añada un puerto de escucha en el fichero de configuración de Apache. El puerto se recibirá como parámetro en la llamada y se comprobará que no esté ya presente en el fichero de configuración.
```bash
#!/bin/bash
grep "Listen $1" /etc/apache2/ports.conf
if [ $? -eq 0 ]
then
  echo "El puerto $1 ya existe"
else
  echo "Listen $1" >> /etc/apache2/ports.conf
  echo Puerto $1 añadido
fi
```

# [Ejercicio 2](addDomain.sh)
### Crea un script que añada un nombre de dominio y una ip al fichero host. Debemos comprobar que no existe dicho dominio

``` bash
#!/bin/bash
grep -q -w "$1" /etc/hosts
if [ $? -eq 0 ]
then
  echo "El dominio ya existe"
else
  echo "$2 $1" >> /etc/hosts
echo "Se ha añadido el dominio $1 con IP $2 satisfactoriamente"
fi
```

# [Ejercicio 3](newHTML.sh)
### Crea un script que nos permita crear una página web con un título, una cabecera y un mensaje

``` bash
#!/bin/bash
echo "<!DOCTYPE html><html lang=en><head><meta charset=UTF-8><meta http-equiv=X-UA-Compatible content=IE=edge><meta name=viewport content=width=device-width, initial-scale=1.0><title>$1</title></head><body><h1>Título de la nueva página</h1><header><p style=color:green><b>Cabecera de ejemplo</b></p></header><p>Parrafo de ejemplo de la nueva página</p></body></html>" > /var/www/html/$1.html
echo "La pagina $1 se ha creado correctamente"
```
