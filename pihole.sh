#!/bin/bash

echo ""
echo "Bienvenido a PiHole"
echo ""
echo "1.- Descargar PiHole"
echo "2.- Establecer una contraseña"
echo "3.- Como acceder y configurar PiHole"
echo "4.- Salir"
echo ""
read -p "¿Qué desea hacer? " op

while [ $op != 4 ];do
	echo ""
	echo ""
	case $op in
		1)
			echo "DESCARGAR PIHOLE"
			echo ""
			wget -O basic-install.sh https://install.pi-hole.net
			echo ""
			sudo bash basic-install.sh
			echo ""
			echo "1.- Descargar PiHole"
			echo "2.- Establecer una contraseña"
			echo "3.- Como acceder y configurar PiHole"
			echo "4.- Salir"
			echo ""
			read -p "¿Qué desea hacer? " op
		;;
		2)
			echo "ESTABLECER UNA CONTRASEÑA"
			echo ""
			sudo pihole -a -p
			echo ""
			echo "1.- Descargar PiHole"
                        echo "2.- Establecer una contraseña"
                        echo "3.- Como acceder y configurar PiHole"
                        echo "4.- Salir"
                        echo ""

			read -p "¿Qué desea hacer? " op
		;;
		3)
                        echo "COMO ACCEDER Y CONFIGURAR PIHOLE"
                        echo ""
                        echo "Para acceder y configurar PiHole hay que introducir en el navegador la IP del equipo"
			echo ""
			ifconfig
                        echo ""
			echo "1.- Descargar PiHole"
                        echo "2.- Establecer una contraseña"
                        echo "3.- Como acceder y configurar PiHole"
                        echo "4.- Salir"
                        echo ""
                        read -p "¿Qué desea hacer? " op
                ;;
		*)
			echo "Opción no válida"
			echo ""
			echo "1.- Descargar PiHole"
                        echo "2.- Establecer una contraseña"
                        echo "3.- Como acceder y configurar PiHole"
                        echo "4.- Salir"
                        echo ""
			read -p "¿Qué desea hacer? " op
		;;

	esac
done
echo ""
echo ""
echo "Hasta luego"
echo ""
