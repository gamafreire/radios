#!/bin/bash

name=""
while [ "$name" == "" ]; do

	clear
	echo "
	#######################################################################
	#          Programa para ouvir rádios 3                               #
	#          ver 2 - aceita maiúculas e minúculas                       #
	#          ver 3 - grava em mp3                                       #
	#     © Filipe Gama Freire 2020                                       #
	#######################################################################
	"
	echo -e "\033[1;31m Que rádio queres: \033[0m"
	echo " - Stellar Attraction (S)"
	echo " - Aural Moon         (A)"
	echo " - Radio Rock UK      (R)"
	echo " - ProgZilla          (P)"
	echo " - Atlantis           (T)"
	echo " - Hits of 80 and 90  (H)"

read name
done

echo "Queres gravar? (s/N)"

read grava

if test "$grava" == "s"; then
		pre='--stream-record='$name'.mp3'
	else
		pre=''
fi 

		case $name in
			[sS])
				echo -e "\033[1;34m Vamos ouvir Stellar Attraction  \033[0m"
				mpv $pre http://level5technologysolutions.net:8000/listen.pls?sid=1								
				;;
			[aA])
				echo -e "\033[1;33m Vamos ouvir Aural Moon  \033[0m"
				mpv $pre http://freecom.vtuner.com/pls/pls15006.m3u
				;;
			[rR])
				echo -e "\033[1;32m Vamos ouvir Radio Rock UK  \033[0m"
				mpv $pre http://stream.radiojar.com/5exb2mtkunhvv.m3u
				#mpv http://freecom.vtuner.com/pls/pls79879.m3u
				;;
			[pP])echo -e "\033[1;32m Vamos ouvir ProgZilla  \033[0m"
				mpv $pre http://freecom.vtuner.com/pls/pls81053.m3u
				;;
			[tT])
				echo -e "\033[1;32m Vamos ouvir Atlantis  \033[0m"
				mpv $pre http://freecom.vtuner.com/pls/pls23007.m3u
				;;
			[hH])
				echo -e "\033[1;32m Vamos ouvir Hist80/90  \033[0m"
				mpv $pre http://streamingV2.shoutcast.com/Hitsof80and90
				;;
		esac
