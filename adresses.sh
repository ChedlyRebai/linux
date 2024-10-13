#!/bin/bash
# Script : process_phone_data.sh
# Description : Ce script effectue plusieurs opérations sur un fichier contenant des informations sur des personnes et leurs numéros de téléphone sans utiliser grep.

input_file="dataTD2.txt"
output_file="pers_num.txt"



echo "Lignes contenant un numéro avec une extension (x ou X suivi de 4 chiffres) :"
while IF= read -r line; do
    if [[ "$line" =~ [xX][0-9]{4} ]]; then
        echo "$line"
    fi
done < "$input_file"
echo




echo "Lignes commençant par trois chiffres suivis d'un tiret :"
while IF= read -r line; do
    if [[ "$line" =~ ^[0-9]{3}- ]]; then
        echo "$line"
    fi
done < "$input_file"
echo

echo -e "\nLignes qui commencent par un S majuscule:"
grep -E '^S' dataTD2.txt

echo "Enregistrement des numéros de téléphone dans '$output_file' :"
while IF= read -r line; do
    if [[ "$line" =~ [0-9]{3}-[0-9]{3}-[0-9]{4} ]]; then
        echo "$line" >> "$output_file"
    fi
done < "$input_file"

echo "Les numéros de téléphone ont été enregistrés dans '$output_file'."
