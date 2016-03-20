clear #clear all the text in the terminal so that the next message is easier to read

echo "Hi, $USER"

echo "Starting this script..."

sleep 1s

echo "Please type your password" 

#To open all software repositories in your ubuntu based version, so that you can install Skype, flash, etc
sudo sed 's/# deb/deb/' -i /etc/apt/sources.list

echo "This should take around 20 minutes."
sleep 5s

#To use the most updated software sources when installing things
sudo apt-get update

#To accept EULA for MS fonts (Arial, Times new roman, etc.)
sudo echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true |sudo debconf-set-selections

#To detect which ubuntu based distro you are using, and install the correct restriced-extras package according to your ubuntu based distro, with all the audio and video codecs, Microsoft fonts in libreoffice such as Arial, Times New Roman, flash, etc.

#Xubuntu
if (dpkg --get-selections | grep -q xubuntu); then
	sudo apt-get install --yes xubuntu-restricted-extras
fi
#Lubuntu
if (dpkg --get-selections | grep -q lubuntu); then
	sudo apt-get install --yes lubuntu-restricted-extras gcc make
fi
#Mint
if (dpkg --get-selections | grep -q mint); then
	sudo apt-get install --yes ubuntu-restricted-extras
fi
#Ubuntu (Default)
if [ -z "$VERSAUM" ]; then
	sudo apt-get install --yes ubuntu-restricted-extras
fi

#Utilities
sudo apt-get install --yes geany			        #A simple text editor		
sudo apt-get install --yes usb-creator-gtk		    	#To create liveUSB's so that you can install linux on other computers
sudo apt-get install --yes clamtk				#Anti-virus for linux, not that linux needs it, it's just in case you want to check files made in Microsoft Windows before sending them someone else
sudo apt-get install --yes catfish				#To search files in your hard drive
sudo apt-get install --yes rdesktop				#To remotely access other computers
sudo apt-get install --yes synaptic aptitude gdebi		#To manage software packages, and install and remove aplications
sudo apt-get install --yes gparted gnome-disk-utility   	#To manage, create and format disk, USB or SD card partitions
sudo apt-get install --yes unrar xz-utils p7zip-full		#To create and extract Zip, RAR files
#Internet
sudo apt-get install --yes firefox				#Some distros do not have it, can you belive that!!!
sudo apt-get install --yes icedtea-plugin			#Java plugin for firefox to run websites that use JAVA, like the Portuguese IRS website
sudo apt-get install --yes transmission-gtk			#To manage torrent downloads
sudo apt-get install --yes skype				#A piece of crap sofware, but people use it a lot...
sudo apt-get install --yes zenmap nmap				#To analyse network security
#Encryption tools
sudo apt-get install --yes enigmail 				#To allow thunderbird to encrypt and read encrypted emails
sudo apt-get install --yes gnupg				#To encrypt files
sudo apt-get install --yes cryptsetup				#LUKS (Linux Unified Key System) implementation, allows to create encrypted USB's, encrypted folders, encrypted disc partitions
sudo apt-get install --yes pidgin pidgin-otr 			#Allows encription of instant messages (Gtalk, MSN, IRC, XMPP) using Pidgin
sudo apt-get install --yes linphone				#Makes encrypted VOIP calls between people (not compatible with SKYPE)
sudo add-apt-repository --yes ppa:webupd8team/tor-browser       #TOR Browser. To navigate anonymously in the internet
sudo apt-get update --yes					#TOR Browser. To navigate anonymously in the internet
sudo apt-get install --yes tor-browser				#TOR Browser. To navigate anonymously in the internet
#Office applications
sudo apt-get install --yes fonts-opensymbol			#open source fonts for libreoffice and other programs
sudo apt-get install --yes pdfchain				#To edit PDF's
sudo apt-get install --yes pdfshuffler				#To split and merge PDF files and rearrange the order of the pages
sudo apt-get install --yes libreoffice				#Office application, contains: spreadsheet, word editor, presentations maker and a lot more. Can read and edit .doc, .docx, xls, xlsx, ppt and pptx
sudo apt-get install --yes libreoffice-pdfimport		#for libreoffice to import PDF's
sudo apt-get install --yes libreoffice-templates		#Templates for Libreoffice (Writer, calc, Impress)
sudo apt-get install --yes libreoffice-style-crystal		#Themes for Libreoffice
sudo apt-get install --yes libreoffice-style-oxygen		#Themes for Libreoffice
sudo apt-get install --yes libreoffice-style-tango		#Themes for Libreoffice
sudo apt-get install --yes libreoffice-style-sifr		#Themes for Libreoffice
sudo apt-get install --yes libreoffice-style-breeze		#Themes for Libreoffice
sudo apt-get install --yes calibre				#To organize and read your Ebooks 
sudo apt-get install --yes comix				#To read comic books (.cbr files)
#Graphics
sudo apt-get install --yes imagemagick				#To edit pictures
sudo apt-get install --yes gimp					#To edit pictures
sudo apt-get install --yes inkscape				#For vectorial design
sudo apt-get install --yes scribus				#A desktop publishing application
#Video
sudo apt-get install --yes openshot	                	#Video editor, simple 
sudo apt-get install --yes avidemux			        #Another video editor, but a bit more complicated
sudo apt-get install --yes vlc				        #The best media player around
sudo apt-get install --yes dvdrip		                #To convert DVD movies in AVI video files
sudo apt-get install --yes winff	            		#To convert multimedia files into other formats
sudo apt-get install --yes cheese				#To use your webcam to make videos and take pictures
#Sound
sudo apt-get install --yes audacity				#One of the best audio files editor around
sudo apt-get install --yes clementine				#Music player and audio library manager
#DVD
sudo apt-get install --yes brasero				#To burn DVD's
sudo apt-get install --yes dvd95				#To convert DVD format
sudo apt-get install --yes isomaster				#To create .iso files
sudo apt-get install --yes libdvdread4				#To read multimedia DVD
sudo /usr/share/doc/libdvdread4/install-css.sh	      		#To automatically crack multimedia DVD restrictions, such as DRM so that your VLC and other media players can read all media DVD's

#To remove. This part removes aplications that are redundant.  

sudo apt-get --yes purge scratch				#text editor similar to wordpad, not necessary because geany is installed is installed
sudo apt-get --yes purge totem					#video players, not necessary because vlc is already installed
sudo apt-get --yes purge parole					#video players, not necessary because vlc is already installed
sudo apt-get --yes purge xine 					#video players, not necessary because vlc is already installed
sudo apt-get --yes purge abiword				#word aplication, not necessary because libreoffice is already installed
sudo apt-get --yes purge gnumeric				#spreadsheet aplication, not necessary because libreoffice is already installed
sudo apt-get --yes purge gmusicbrowser				#music player, not necessary because clementine is already installed
sudo apt-get --yes purge chromium-browser			#open source version of google chrome. You already have firefox! ;)
sudo apt-get --yes purge midori					#browser. You already have firefox! ;)
sudo apt-get --yes purge sylpheed				#email clients, not necessary because thunderbird is automatically installed when you installed enigmail in the begining of the script
sudo apt-get --yes purge claws-mail 				#email clients, not necessary because thunderbird is automatically installed when you installed enigmail in the begining of the script
sudo apt-get --yes purge geary					#email clients, not necessary because thunderbird is automatically installed when you installed enigmail in the begining of the script
sudo apt-get --yes purge guvcview				#Make videos with webcam, not necessary because cheese is already installed

sudo apt-get --yes autoremove ; sudo apt-get --yes clean 	#Now that redundant programs are eliminated do a system cleaning

#system updates. Now that everything we want is installed, just update the system and clean the system from unecessary packages, and make sure everything is ok.

clear #clear all the text in the terminal so that the next message is easier to read

echo "Hello $USER"

echo "All instalations are complete."
echo "Would you like to do a system update to upgrade your applications to the latest version? If not, then just press 'n' to exit this script (you can do these updates later if you want)"

read -r -p "Update your system now? [Y/n]" response
 response=${response,,} 
 if [[ $response =~ ^(yes|y| ) ]]; then
clear ; echo "Updating..." ; sleep 2s ; sudo apt-get --yes install -f ; sudo apt-get --yes dist-upgrade ; sudo apt-get --yes autoremove ; sudo apt-get --yes clean 
else
clear ; echo "Exiting the terminal..." ; sleep 2s ; exit ; exit
fi

clear #clear all the text in the terminal so that the next message is easier to read

echo "Hello again $USER"

echo "It's finished!!! All instalations and updates are complete."
echo "We recomend you to reboot your computer to finish the updates."

read -r -p "Reboot your computer now? [Y/n]" response
 response=${response,,} 
 if [[ $response =~ ^(yes|y| ) ]]; then
clear ; echo "Rebooting..." ; sleep 2s ; sudo reboot
else
clear ; echo "Exiting the terminal..." ; sleep 2s ; exit ; exit
fi
