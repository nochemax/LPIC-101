#!/bin/bash

# Crador David Soto Noche
# Fecha 6.7.2019
# Licencia Open soft GNU
# Nombre LPIC-101
# Tipo lenguaje Script shell

 
#Colores
red='\e[1;31m'
blue='\e[1;34m'
yellow='\e[1;33m'
white="\e[1;37m"
grey="\e[0;37m"
purple="\e[0;35m"
green="\e[1;32m"
Purple="\e[0;35m"
Cyan="\e[0;36m"
Cafe="\e[0;33m"
Fiuscha="\e[0;35m"
transparent="\e[0m"

#creacion de arcchivos 
touch alumno.csv

# variables
menu=""
exa1="0"
exa2= 0
respuesta=""
confirma=""
yes="y"

res_0= ""
res_1= ""
res_2= ""
res_3= ""
res_4= ""
res_5= ""
res_6= ""
res_7= ""
res_8= ""
res_9= ""
res_10= ""
res_11= ""
res_12= ""


resv_0= "2"
resv_1= "4"
resv_2= "4"
resv_3= "2"
resv_4= "5"
resv_5= "3"
resv_6= "6"
resv_7= "1"
resv_8= "3"
resv_9= "2"
resv_10= "1"
resv_11= "1"
resv_12= "2"

# Menu principal
clear
figlet 		LPIC-101
echo -e "			    	${grey} Smp_A" "${transparent}"
echo ""
echo -e "${green} |----------------------------------------|"
echo -e "${green} |" "${yellow} 1) Datos alumno" "${green}			  |"
echo -e "${green} |" "${yellow} 2)	Examen 1"	 "${green}		 	  |"
echo -e "${green} |" "${yellow} 3)	Examen 2"	 "${green} 		          |"
echo -e "${green} |" "${yellow} 4) evaluacion"	 "${green} 			  |"
echo -e "${green} |----------------------------------------|"
echo -e "${green} |                                        |"
echo -e "${green} |                                        |"
echo -e "${green} |                                        |"	
echo -e "${green} |----------------------------------------|"
read -p ">" menu

case $menu in 

	1 ) read -p "Escriba su nombre y apellidos: " datos # opcion 1 inicio
		echo $datos > alumno.csv
		clear
		;; # opcion 1 final 

	2 ) read -p "¿ Quier empezar el examen y o n ?" confirma # opcion 2 inicio
		if [ $confirma = $yes ]
		then
			clear
			exa1="0"
			while [ $exa1 -ne 20 ]  
			do 
				case $exa1 in
					0)	echo "¿Cuál de los siguientes comandos se puede usar para asegurar que exista un archivo 'myfile'?"
						echo ""
						echo "1) cp myfile /dev/null"
						echo "2) touch myfile"
						echo "3) create myfile"
						echo "4) mkfile myfile"
					 read -p "> " res_0
						exa1="1" 
						clear
					;;
					1 )echo "El comando 'ps -A' muestra una lista ordenada de todos los procesos en ejecución," 
						echo "con el ID de proceso justificado a la derecha en el primer campo separado por espacios." 
						echo "Supongamos que desea visualizar una lista de los cinco procesos iniciados más recientemente"
					    echo "(aquellos con los ID de proceso más altos). ¿Cuál de los siguientes comandos mostrará los elementos deseados?"
						echo ""
						echo "1) A. ps -A | tail -5 | cut -f 1 -d " ""
						echo "2) ps -A | tail -5 | sed 's/[ ]*[0-9]*//'"
						echo "3) ps -A | head -5 | nl"
						echo "4) ps -A | tac | head -5 | cut -b 1-5"
					 read -p "> " res_1
						exa1="2" 
						clear
					;;
					2 )echo "Supongamos que un archivo 'nombres' contiene una lista de nombres en el formulario, nombre apellido,"
						echo "uno por línea. Estos nombres no están clasificados, y le gustaría que se ordenen por apellido; sin embargo," 
						echo "el formato de los nombres en cada línea debe seguir siendo el mismo. ¿Cuál de los siguientes" 
						echo "comandos NO generará una lista de nombres ordenada de forma adecuada en la consola?"
						echo ""
						echo "1) cut -f 2 -d " " names | paste names - | sort -k 3 | cut -f 1"
						echo "2) sort -k 2 names"
						echo "3) sed 's/\(\w*\) \(\w*\)/\2 \1 \2/' names | sort | cut -f 2-3 -d " ""
						echo "4) cut -f 2 -d " " names | sort"
						echo "5) cut -f 2 -d " " names | paste - names | sort | cut -f 2 "
					 read -p "> " res_2
						exa1="3" 
						clear
					;;
					3 )echo "Suponga que su directorio de trabajo actual es '/ tmp' y su directorio de inicio es" 
						echo "'/ home / jane'. ¿Cuál de los siguientes comandos copiará todo el contenido de '/ tmp / test /'" 
						echo "a un subdirectorio de 'prueba' de su directorio de inicio?"
						echo ""
						echo "1) cp -r test/* /home/jane"
						echo "2) cp -r ./test ~"
						echo "3) cp -r ~/test ."
						echo "4) cp -r /tmp/test /home/jane/test "
					 read -p "> " res_3
						exa1="4" 
						clear
					;;
					4 )echo "Supongamos que tiene varios archivos que coinciden con el patrón de nombre de archivo 'archivo [0-9]'."
						echo "Le gustaría comparar visualmente el contenido de todos estos archivos, de manera paralela." 
						echo "¿Cuál de los siguientes comandos le permitiría ver el informe ad hoc deseado?"
						echo ""
						echo "1) ls file[0-9] | xargs paste | less"
						echo "2) paste ls file[0-9] > report ; vi report ; rm report"
						echo "3) cat file[0-9] | paste - | more | less"
						echo "4) ls file[0-9] | tee fnames | paste cAt fnames"
						echo "5) ls file[0-9] | tee fnames | xargs paste | more"
						echo "6) ls *word* > fnames ; paste < xargs cat fnames | vi"
					 read -p "> " res_4
						exa1="5" 
						clear
					;;
					5 )echo "¿Cuál de las siguientes utilidades de Linux NO incluye la capacidad de enumerar los ID de proceso de las aplicaciones en ejecución?"
						echo ""
						echo "1) jobs"
						echo "2) ps"
						echo "3) nice"
						echo "4) ls file[0-9] | tee fnames | paste cAt fnames"
						echo "5) top"
					 read -p "> " res_5
						exa1="6" 
						clear
					;;
					6 )echo "Según el sistema de denominación de particiones de Linux," 
						echo "¿cuál de los siguientes nombres de dispositivos apunta a particiones lógicas"
						echo "(suponiendo que las particiones correspondientes existan en el sistema en cuestión)?"
						echo ""
						echo "1) / dev / sda3"
						echo "2) / dev / fd0"
						echo "3) / dev / hdb7"
						echo "4) / dev / hda4"
						echo "5) / dev / fd7"
						echo "6) / dev / sdc11"
					 read -p "> " res_6
						exa1="7" 
						clear
					;;
					7 )echo "¿Cuál de las siguientes líneas de comando puede (posiblemente)"
						echo "usarse para formatear una partición? Suponga que las particiones necesarias existen," 
						echo "y también que la partición lógica se utiliza en cada disco duro."
						echo ""
						echo "1) mkfs -t msdos / dev / sda1"
						echo "2) mkfs.ext2 / dev / null"
						echo "3) mkfs -t ext2 / dev / hda4"
						echo "4) mkfs --type = ext2 / dev / hdb7 "
					 read -p "> " res_7
						exa1="8" 
						clear
					;;
					8 )echo "¿Qué comando de Linux se puede usar para reparar el apagado incorrecto,"
					    echo "o particiones potencialmente corruptas?"
						echo ""
						echo "1) chkdsk"
						echo "2) scandisk"
						echo "3) fsck"
						echo "4) fdisk "
					 read -p "> " res_8
						exa1="9" 
						clear
					;;
					9 )echo "¿Qué comando de Linux se puede usar para determinar el espacio disponible en las particiones locales del disco duro?"
						echo ""
						echo "1) free"
						echo "2) df"
						echo "3) du"
						echo "4) fdisk"
					 read -p "> " res_9
						exa1="10" 
						clear
					;;	
					10 )echo "Qué comando de Linux se puede usar para limitar el uso de espacio en disco de un usuario en particular?" 
						echo "Para esta pregunta, suponga que las cuotas están habilitadas para los sistemas de archivos" 
						echo "en uso en el sistema en cuestión."
						echo ""
						echo "1) edquota"
						echo "2) setquota"
						echo "3) quota"
						echo "4) repquota "
					 read -p "> " res_10
						exa1="11" 
						clear
					;;
					11 )echo "Supongamos que ha creado una nueva aplicación 'myapp' y la ha copiado en el directorio '/ usr / local / bin'." 
						echo "Desea que todos los usuarios del sistema puedan ejecutar su aplicación."
						echo "¿Cuál de las siguientes líneas de comando permitiría el acceso apropiado?"
						echo ""
						echo "1) chmod o + x / usr / local / bin / myapp"
						echo "2) chgrp bin / usr / local / bin / myapp"
						echo "3) umask 0022 / usr / local / bin / myapp"
						echo "4) chown 755 / usr / local / bin / myapp"
					 read -p "> " res_11
						exa1="12" 
						clear
					;;
					12 )echo "Qué comando de Linux se usa para asignar privilegios sobre un archivo en particular a un usuario designado"
						echo ""
						echo "1) chroot"
						echo "2) chown"
						echo "3) assign"
						echo "4) chgrp"
					 read -p "> " res_12
						exa1="13" 
						clear
					;;
					13 ) aciertos=0

							if [ "$res_0" = "$resv_0" ]
							then
								echo "correcto1"
								((aciertos++))
							else
								echo "inccorrect1"
							fi
							#
							if [ "$res_1" = "$resv_1" ]
							then
								echo "correcto2"
								((aciertos++))
							else
								echo "inccorrecto2"
							fi
							#
							if [ "$res_2" = "$resv_2" ]
							then
								echo "correcto3"
								((aciertos++))
							else
								echo "inccorrecto3"
							fi
							#
							if [ "$res_2" = "$resv_2" ]
							then
								echo "correcto3"
								((aciertos++))
							else
								echo "inccorrecto3"
							fi
							#
							if [ "$res_3" = "$resv_3" ]
							then
								echo "correcto4"
								((aciertos++))
							else
								echo "inccorrecto4"
							fi
							#
							if [ "$res_4" = "$resv_4" ]
							then
								echo "correcto5"
								((aciertos++))
							else
								echo "inccorrecto5"
							fi
							#
							if [ "$res_5" = "$resv_5" ]
							then
								echo "correcto6"
								((aciertos++))
							else
								echo "inccorrecto6"
							fi
							#
							if [ "$res_6" = "$resv_6" ]
							then
								echo "correcto7"
								((aciertos++))
							else
								echo "inccorrecto7"
							fi
							#
							if [ "$res_7" = "$resv_7" ]
							then
								echo "correcto8"
								((aciertos++))
							else
								echo "inccorrecto8"
							fi
							#
							if [ "$res_8" = "$resv_8" ]
							then
								echo "correcto9"
								((aciertos++))
							else
								echo "inccorrecto9"
							fi
							#
							if [ "$res_9" = "$resv_9" ]
							then
								echo "correcto10"
								((aciertos++))
							else
								echo "inccorrecto10"
							fi
							#
							if [ "$res_10" = "$resv_10" ]
							then
								echo "correcto11"
								((aciertos++))
							else
								echo "inccorrecto11"
							fi
							#
							if [ "$res_11" = "$resv_11" ]
							then
								echo "correcto12"
								((aciertos++))
							else
								echo "inccorrecto12"
							fi
							#
							if [ "$res_12" = "$resv_12" ]
							then
								echo "correcto13"
								((aciertos++))
							else
								echo "inccorrecto13"
							fi
							echo "Su puntuacion total es: $aciertos"	
							read -p "pulse enter para finalizar"					
						exa1="14" 
						clear
						exit
					;;
				esac
			done

		else
			echo "cagao ya te pillare ;P ja ja ja"
		fi
	 ;; # opcion 2 final

	3 ) ;;
		

	4 ) ;;
esac
