#!/bin/bash

clear 

echo "
#######################################################################
#          Programa para ouvir rádios 2                               #
#          agora aceita maiúculas e minúculas                         #
#     © Filipe Gama Freire 2020                                       #
#######################################################################
"
echo -e "\033[1;31m Que rádio queres: \033[0m"
echo " - Stellar Attraction (S)"
echo " - Aural Moon         (A)"
echo " - Radio Rock UK      (R)"

read name

clear

case $name in
	[sS])
		echo -e "\033[1;34m Vamos ouvir Stellar Attraction  \033[0m"
		mpv http://freecom.vtuner.com/pls/pls24913.m3u
		;;
	[aA])
		echo -e "\033[1;33m Vamos ouvir Aural Moon"
		mpv http://freecom.vtuner.com/pls/pls15006.m3u
		;;
	[rR])
		echo -e "\033[1;32m Vamos ouvir Radio Rock UK  \033[0m"
		mpv http://freecom.vtuner.com/pls/pls79879.m3u
		;;
esac

'''
if [ "$name" = "S" ] ; then
	echo -e "\033[1;34m Vamos ouvir Stellar Attraction  \033[0m"
	mpv http://freecom.vtuner.com/pls/pls24913.m3u

elif [ "$name" = "A" ] ; then 
	echo -e "\033[1;33m Vamos ouvir Aural Moon"
        mpv http://freecom.vtuner.com/pls/pls15006.m3u


elif [ "$name" = "R" ] ; then
        echo -e "\033[1;32m Vamos ouvir Radio Rock UK  \033[0m"
        mpv http://freecom.vtuner.com/pls/pls79879.m3u

fi
'''