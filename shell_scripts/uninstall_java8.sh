#!/bin/sh

clear
echo "Removing Java 8 Update Alternatives"

sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/java/jdk1.8.0_211/bin/java" 1

sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/java/jdk1.8.0_211/bin/javac" 1

sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/lib/java/jdk1.8.0_211/bin/javaws" 1

clear
echo "Removing Java 8 folder"

sudo rm -r /usr/lib/java
sudo rm -r /usr/bin/java
sudo rm -r /usr/bin/javac
sudo rm -r /usr/bin/javaws