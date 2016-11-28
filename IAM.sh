#!/usr/bin/env bash

#===========================================================================#
#                             Interface Add Module			    #
#									    #
#                           Script write by Roni Ardiyanto			    #
#	                Contact me roniardiyanto13@gmail.com                #
#===========================================================================#


# Color
cyan='\e[0;36m'
green='\e[0;34m'
okegreen='\033[92m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
BlueF='\e[1;34m'
#################################################
# START
#################################################
function start(){
clear
echo -e $BlueF ""
echo "     ===================================== "
echo "                |_ _|  / \  |  \/  |"
echo "                 | |  / _ \ | |\/| |"
echo "                 | | / ___ \| |  | |"
echo "                |___/_/   \_\_|  |_|v1.0"
echo "
" =====================================
echo -e $white"      Interface Add Monitor       "
echo "     ===================================== "
echo -e $cyan ""
echo -e "     $okegreen"1"$white)$cyan  START IAM"
echo ""
echo -n -e $BlueF'     \033[4miam\033[0m >> '; tput sgr0
read wac
echo -e $okegreen"     --------------------------------------------------   ";
		
		if test $iam == '1'
			then
				echo -e $cyan"Scanning your interface...."
				sleep 2
				iwconfig
				echo -e $cyan"Choose your interface you want: "
				read interface
				ip link set $interface up
				echo -e $cyan"Insert your name for mode monitor: "
				read name
				echo
				iw $interface interface add $name type monitor
				echo
				ifconfig $name up
				echo -e $cyan"Succesfully"
				sleep 1
		
				fi

}
#################################################
# ABOUT
#################################################
function about {
clear
echo -e $BlueF ""
echo "     ===================================== "
echo "                |_ _|  / \  |  \/  |"
echo "                 | |  / _ \ | |\/| |"
echo "                 | | / ___ \| |  | |"
echo "                |___/_/   \_\_|  |_|v1.0"
echo "
" =====================================
echo -e $white"      Interface Add Monitor       "
echo "     ===================================== "
echo -e $red
echo "      IAM (Interface Add Monitor) is an open"
echo "      source program which is using to make a network card"
echo "      to run mode station and monitor easily and quickly.
             Created by ntfnd"
}

#################################################
# BANNER
#################################################
clear
echo -e $BlueF ""
echo "     ===================================== "
echo "                |_ _|  / \  |  \/  |"
echo "                 | |  / _ \ | |\/| |"
echo "                 | | / ___ \| |  | |"
echo "                |___/_/   \_\_|  |_|v1.0"
echo "
" =====================================
echo -e $white"      Interface Add Monitor       "
echo "     ===================================== "
echo -e $cyan ""
echo -e "     $okegreen"1"$white)$cyan  CONTINUE"
echo -e "     $okegreen"2"$white)$cyan  ABOUT  "
echo -e "     $okegreen"3"$white)$cyan  EXIT  "
echo ""
echo -n -e $BlueF'     \033[4miam\033[0m >> '; tput sgr0
read iam
echo -e $okegreen"     --------------------------------------------------   ";
		
		if test $iam == '1'
			then

		    start
		elif test $iam == '2'
			then

		    about

			


fi
