#!/bin/sh

clear
echo "Getting Java 8 from: http://bit.ly/2JhC3U3"
sleep 3

wget http://bit.ly/2JhC3U3
sleep 3

clear
echo "Unpacking the Java 8 File"
tar -xf 2JhC3U3
sleep 3

clear
echo "Creating Folder (/usr/lib/java/)"
sudo mkdir /usr/lib/java/
sleep 2

clear
echo "Moving Java 8 to /usr/lib/java/"

sudo mv jdk1.8.0_211/ /usr/lib/java/
sleep 1

clear
echo "Updating Alternatives for Java 8"

sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/java/jdk1.8.0_211/bin/java" 1

sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/java/jdk1.8.0_211/bin/javac" 1

sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/lib/java/jdk1.8.0_211/bin/javaws" 1

clear
echo "Removing Java 8 File"

sleep 1


rm 2JhC3U3