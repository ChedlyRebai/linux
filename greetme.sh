#!/bin/bash

echo "Date:"
date

echo "Calendrier pour ce mois :"
cal
echo


echo "nom de la machine " 
hostname

echo "nom et version de l'os "
uname -o
uname -r
echo

echo "fichiers dans le répertoire parent :"
ls ..
echo

echo "Valeur des variables d'environnement : $TERM , $PATH $HOME"

echo " aurevoir : "
date +"%H:%M:%S"
