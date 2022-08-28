#!/bin/bash

echo "Bienvenido a youtube download version 1.0"

sleep 1

echo "A continuaciòn actualizaremos el sistema"

sleep 1

echo "descargaremos repositorios y programas necesiarios"

sleep 1

echo "sí usted ya tiene instalado todos los programas"

sleep 1

echo "digite (N) para omitir este paso"

sleep 1

echo "caso contrario digite (Y)"


opc=0

read -p "digite su opciòn:  "  opc


if [[ $opc == n ]] || [[ $opc == N ]]

then

   echo "Bienvenid@"

sleep 1


   echo "seleccione 1) si desea descargar un video"

sleep 1


   echo "seleccione 2) si desea descargar en formato mp3"

sleep 1

   echo "seleccione 3) si desea salir"


opcion=0

while [ $opcion -ne 4 ]; do

read -p "ingrese una opción : "  opcion

case $opcion in

1) echo "Ingresa una Url"



read URL

echo "Descargando Video"

cd /data/data/com.termux/files/home/down

echo "youtube-dl"     $URL

youtube-dl $URL

   ;;

2) echo "ingresa Url"

 read  URL

 echo "descargando"

cd /data/data/com.termux/files/home/down

echo "youtube-dl --extract-audio --audio-format mp3"  $URL

youtube-dl --extract-audio --audio-format mp3  $URL


   ;;

3) exit

   ;;

*) sleep 1

   echo "no joda, meta bien el dedo"

   sleep 2

   cmatrix

   ;;

esac

done



elif [[ $opc == y ]] || [[ $opc == Y ]]

then

   apt update || sudo apt update ; apt upgrade ; sudo apt upgrade -y

   apt install || sudo apt install ffmpeg -y

   apt install python || sudo apt install python -y ; apt install python 2 || sudo apt install python 2 -y ; apt install python 3 || sudo apt install python 3  -y


   pip3 install youtube-dl || sudo apt install python3-pip



echo "Bienvenido"

echo "Seleccione 1) para descargar un video"

echo "Seleccione 2) para descargar en formato mp3"

echo "Seleccione 3) para Salir"

opi=0

until [ $opi -gt 10 ] ; do


read -p "elija la opción  : " opi

case $opi in

      1) echo "Ingresa una Url"

read URL

          echo "descargando video"

           cd /data/data/com.termux/files/home/down

echo "youtube-dl"     $URL

youtube-dl $URL

   ;;

       2) echo  "Ingrese la Url"

read URL

          echo "descargando  cancion"

sleep 1

           cd /data/data/com.termux/files/home/down


echo "youtube-dl --extract-audio --audio-format mp3"  $URL

youtube-dl --extract-audio --audio-format mp3  $URL

   ;;

       3) exit

   ;;


      *) echo "try again"

       ./download.sh

   ;;

esac

done

else

echo "bye"

      cmatrix



fi



