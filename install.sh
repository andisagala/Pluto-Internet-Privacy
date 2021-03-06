#!/usr/bin/sh


#############################################################
#                                                           #
#           ---== Pluto Internet Privacy ==---		    #
#				                            #
#                               			    #
#           	Coder: Andika Sagala          	            #
#       	Date: Sept, 2019               		    #
#############################################################





################ detecting the OS ###################################
Clr=`clear`
Vartitle=`which sh`
MyAccess=`whoami`
case "$MyAccess" in
	root)
		echo ""
	;;

	*)
		echo "You need root access!"
		exit 1
	;;

esac

echo "$Clr"
echo "___________________________________________________"

MyOS=`uname -s`



case "$MyOS" in
	FreeBSD)
		echo "You are using FreeBSD Operating System."
		echo "___________________________________________________"
		Myosvalue=1
		sleep 2
	;;

	Linux)

		echo "You are using Linux Operating System."
		echo "___________________________________________________"
		Myosvalue=2
		sleep 2
	;;

	Minix)
		echo "You are using Minix Operating System."
		Myosvalue=3
        ;;

	SunOS)
		echo "You are using Solaris Operating System."
	        Myosvalue=4
        ;;

	DragonFLy)
		echo "You are using DragonFLy BSD Operating System."
		Myosvalue=5
        ;;

	OpenBSD)
		echo "You are using OpenBSD Operating System."
		Myosvalue=6
        ;;

	NetBSD)
		echo "You are using NetBSD Operating System."
		Myosvalue=7
        ;;

	default1)
		echo "You are using default1 Operating System."
		Myosvalue=8
        ;;

        default2)
		echo "You are using default1 Operating System."
		Myosvalue=9
	;;

        default3)
		echo "You are using default1 Operating System."
		Myosvalue=10
	;;

        default4)
		echo "You are using default1 Operating System."
	        Myosvalue=11
        ;;

	default5)
		echo "You are using default1 Operating System."
        	Myosvalue=12
	;;

        default6)
		echo "You are using default1 Operating System."
	        Myosvalue=13
        ;;

	default7)
		echo "You are using default1 Operating System."
        	Myosvalue=14
	;;

        default8)
		echo "You are using default1 Operating System."
	        Myosvalue=15
        ;;

	*)
		echo "Your Operating System is not compatible for \"Pluto Internet Privacy\""
        ;;

esac

############### Detecting OS done ###########################################

echo "___________________________________________________"
sleep 0.1
echo "Checking ...."
echo "*"

##############################################
## checking install
case "$Myosvalue" in
	1)
		MyOsValueGlobal=1
	;;

	2)
		MyOsValueGlobal=2
	;;

	3)
		MyOsValueGlobal=3
	;;

	4)
		MyOsValueGlobal=4
	;;

	5)
		MyOsValueGlobal=5
	;;

	6)
		MyOsValueGlobal=6
	;;

	7)
		MyOsValueGlobal=7
        ;;

	8)
		MyOsValueGlobal=8
        ;;

        9)
	        MyOsValueGlobal=9
        ;;

        10)
	        MyOsValueGlobal=10
        ;;

        11)
	        MyOsValueGlobal=11
        ;;

        12)
	        MyOsValueGlobal=12
        ;;

        13)
	        MyOsValueGlobal=13
        ;;

        14)
	        MyOsValueGlobal=14
        ;;

        15)
	        MyOsValueGlobal=15
        ;;

esac

	######################## done ##########################



########### Unix Identifier ###########################################################
TheInstPath=`pwd`
case "$MyOsValueGlobal" in
	#################### BSD Verifier ################################
   		 ################### FreeBSD Verifier ############################
	1)
		UnixVerifierFreeBSD=`uname -a |grep -c FreeBSD`
		case "$UnixVerifierFreeBSD" in
			1)
				echo "I'm FreeBSD, hola Papacito & Mamacita !"  ################### tested by coder FreeBSD 12.0 ##########################
				sh $TheInstPath/os/FreeBSD.sh
			;;

			*)
				echo "It is no problem."
			;;

		esac
	;;

		#################### end of FreeBSD ###########################
	################### End of BSD Verifier ####################################

	############################# Linux Verifier ########################
		################### Ubuntu Verifier ############################
	2)
		UnixVerifierUbuntu=`cat /etc/os-release |grep -w Ubuntu -c`
		UnixVerifierDebian=`cat /etc/os-release |grep -w Debian -c`
		UnixVerifierSolus=`cat /etc/os-release |grep -w Solus -c`
		UnixVerifierKnoppix=`cat /etc/syslog-knoppix.conf|grep -w knoppix -c`
		UnixVerifierZorinOS=`cat /etc/os-release |grep -w Zorin -c`
		UnixVerifierMXLinux=`cat /etc/mx-version |grep -w MX -c`
		UnixVerifierManjaroLinux=`cat /etc/arch-release |grep -w Manjaro -c`
		UnixVerifierLinuxMint=`cat /etc/os-release |grep -w Mint -c`
		UnixVerifierelementaryOS=`cat /etc/os-release |grep -w elementary -c`
		UnixVerifierParrotOS=`cat /etc/os-release |grep -w Parrot -c`
		UnixVerifierFedora=`cat /etc/fedora-release| grep -w Fedora -c`
		UnixVerifieropenSUSE=`cat /etc/os-release| grep -w openSUSE -c`
		UnixVerifierantiX=`cat /etc/antix-version |grep -w antiX -c`
		UnixVerifierDeepin=`cat /etc/os-release |grep -w Deepin -c`
		UnixVerifierKDENeon=`cat /etc/os-release |grep -w neon -c`
		UnixVerifierArchlinux=`cat /etc/os-release |grep -w Arch -c`
		UnixVerifierArcoLinuxB=`cat /etc/lsb-release |grep -w ArcoLinux -c`
		UnixVerifierPCLinuxOS=`cat /etc/os-release |grep -w PCLinuxOS -c`

		UnixVerifierUbuntuComplicated=$((UnixVerifierUbuntu + UnixVerifierelementaryOS + UnixVerifierKDENeon + UnixVerifierZorinOS))
		case "$UnixVerifierUbuntuComplicated" in
			2)
				echo "I'm Ubuntu, hola Papacito & Mamacita !" ########## tested by coder Ubuntu 19.04 ################
				sh $TheInstPath/os/Ubuntu.sh
			;;

			*)
				echo "It is no problem."
			;;

		esac
		####################### end of Ubuntu ########################

		################## Debian Verifier #############################

		UnixVerifierDebianComplicated=$((UnixVerifierDebian + UnixVerifierantiX + UnixVerifierKnoppix + UnixVerifierMXLinux + UnixVerifierantiX))
		case "$UnixVerifierDebianComplicated" in
			2)
                echo "I'm Debian, hola Papacito & Mamacita !" ############## tested by coder Debian 10.1.0 ###############
                sh $TheInstPath/os/DebianCommon.sh
			;;

			*)
				echo "It is no problem."
			;;

		esac
		##################### end of Debian ##########################


		###################### Solus Verifier ###########################

		case "$UnixVerifierSolus" in
			2)
				echo "I'm Solus, hola Papacito & Mamacita !" ############## tested by coder Solus 4.0 ###############
				sh $TheInstPath/os/Solus.sh
			;;

			*)
				echo "It is no problem."
			;;

		esac
		#################### end of Solus ###########################

		#################### Knoppix Verifier ###########################

		case "$UnixVerifierKnoppix" in
			2)
				echo "I'm Knoppix, hola Papacito & Mamacita !" ############## tested by coder KNOPPIX V8.6 ###############
				sh $TheInstPath/os/Knoppix.sh
			;;

			*)
				echo "It is no problem."
			;;

		esac
		#################### end of Knoppix ###########################

        	#################### Zorin OS Verifier ###########################

        	case "$UnixVerifierZorinOS" in
			2)
				echo "I'm Zorin OS, hola Papacito & Mamacita !" ############## tested by coder Zorin OS 12.4 ###############
				sh $TheInstPath/os/ZorinOS.sh
			;;

			*)
				echo "It is no problem."
			;;

		esac
		#################### end of Zorin OS ###########################

		#################### MX Linux Verifier ###########################

		case "$UnixVerifierMXLinux" in
			1)
				echo "I'm MX Linux, hola Papacito & Mamacita !" ############## tested by coder MX-18.3 Continuum ###############
				sh $TheInstPath/os/MXLinux.sh
			;;

			*)
				echo "It is no problem."
			;;

		esac
		#################### end of MX Linux ###########################

		#################### Manjaro Linux Verifier ###########################

		case "$UnixVerifierManjaroLinux" in
			1)
				echo "I'm Manjaro Linux, hola Papacito & Mamacita !" ############## tested by coder Manjaro Linux ###############
				sh $TheInstPath/os/ManjaroLinux.sh
			;;

			*)
				echo "It is no problem."
			;;

		esac
		#################### end of Manjaro Linux ###########################

		####################  Linux Mint 19.2 Tina Verifier ###########################

		case "$UnixVerifierLinuxMint" in
			2)
				echo "I'm Linux Mint, hola Papacito & Mamacita !" ############## tested by coder Linux Mint 19.2 Tina ###############
				sh $TheInstPath/os/LinuxMint.sh
			;;

			*)
				echo "It is no problem."
			;;

		esac
		#################### end of Linux Mint ###########################

		####################  elementary OS Verifier ###########################

		case "$UnixVerifierelementaryOS" in
			7)
				echo "I'm elementary OS, hola Papacito & Mamacita !" ############## tested by coder elementary OS 5.0 Juno ###############
				sh $TheInstPath/os/elementaryOS.sh
			;;

			*)
				echo "It is no problem."
			;;

		esac
		#################### end of elementary OS ###########################

		####################  Parrot OS Verifier ###########################

		case "$UnixVerifierParrotOS" in
			2)
				echo "I'm Parrot OS, hola Papacito & Mamacita !" ############## tested by coder Parrot OS 4.6 ###############
				sh $TheInstPath/os/ParrotOS.sh
			;;

			*)
				echo "It is no problem."
			;;

			esac
		#################### end of Parrot OS ###########################

		####################  Fedora Verifier ###########################

		case "$UnixVerifierFedora" in
			1)
				echo "I'm Fedora, hola Papacito & Mamacita !" ############## tested by coder Fedora release 30 ###############
				sh $TheInstPath/os/Fedora.sh
			;;

			*)
				echo "It is no problem."
			;;

		esac
		#################### end of Fedora ###########################

		####################  OpenSUSE Verifier ###########################

		case "$UnixVerifieropenSUSE" in
			2)
				echo "I'm openSUSE, hola Papacito & Mamacita !" ############## tested by coder openSUSE Leap 15.1 ###############
				sh $TheInstPath/os/openSUSE.sh
			;;

			*)
				echo "It is no problem."
			;;

		esac
		#################### end of OpenSUSE ###########################

		################## antiX Verifier #############################

		case "$UnixVerifierantiX" in
			1)
				echo "I'm antiX, hola Papacito & Mamacita !" ############## tested by coder  ###############
				sh $TheInstPath/os/antiX.sh
			;;

			*)
				echo "It is no problem."
			;;

		esac
		##################### end of antiX ##########################

		################## Deepin Verifier #############################

		case "$UnixVerifierDeepin" in
			2)
				echo "I'm Deepin, hola Papacito & Mamacita !" ############## tested by coder Deepin 15.11 ###############
				sh $TheInstPath/os/Deepin.sh
			;;

			*)
				echo "It is no problem."
			;;

		esac
		##################### end of Deepin ##########################


		################## Deepin Verifier #############################

		case "$UnixVerifierKDENeon" in
			6)
				echo "I'm KDE Neon, hola Papacito & Mamacita !" ############## tested by coder KDE neon User Edition 5.16 ###############
				sh $TheInstPath/os/KDENeon.sh
			;;

			*)
				echo "It is no problem."
			;;

		esac
		##################### end of KDE neon ##########################

		################## Arch Linux Verifier #############################
		UnixVerifierArchlinuxComplicated=$((UnixVerifierArchlinux + UnixVerifierArcoLinuxB))
		case "$UnixVerifierArchlinuxComplicated" in
			2)
				echo "I'm Arch Linux, hola Papacito & Mamacita !" ############## tested by coder Arch Linux ###############
				sh $TheInstPath/os/Archlinux.sh
			;;

			*)
				echo "It is no problem."
			;;

		esac
		##################### end of Arch Linux ##########################

		################## Arco Linux B Verifier #############################

		case "$UnixVerifierArcoLinuxB" in
			3)
				echo "I'm Arco Linux B, hola Papacito & Mamacita !" ############## tested by coder Arco Linux B Gnome V19.07.11 ###############
				sh $TheInstPath/os/ArcoLinuxB.sh
			;;

			*)
				echo "It is no problem."
			;;

		esac
		##################### end of Archlinux ##########################

		################## Arco Linux B Verifier #############################

		case "$UnixVerifierPCLinuxOS" in
			2)
				echo "I'm PCLinuxOS, hola Papacito & Mamacita !" ############## tested by coder PCLinuxOS 2019 ###############
				sh $TheInstPath/os/PCLinuxOS.sh
			;;

			*)
				echo "It is no problem."
			;;

		esac
		##################### end of Archlinux ##########################







	;;

esac




######## Done, installed. ############################################



################# done ########################################
sleep 0.1
echo "************"
sleep 0.1
echo "*************"
sleep 0.1
echo "**************"
sleep 0.1
echo "***************"
sleep 0.1
echo "****************"
sleep 0.1
echo "*****************"
sleep 0.1
echo "******************"
sleep 0.1
echo "*******************"
sleep 0.1
echo "********************"
sleep 0.1
echo "*********************"
sleep 0.1
echo "Done..."










