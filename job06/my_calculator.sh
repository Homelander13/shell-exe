#!/bin/bash

# Vérifie le nombre de paramètres
if [ $# -ne 3 ]; then
  echo "Usage: $0 <nombre1> <opérateur> <nombre2>"
  exit 1
fi

nombre1=$1
operateur=$2
nombre2=$3

# Vérifie si l'opérateur est valide
if [[ "$operateur" != "+" && "$operateur" != "-" && "$operateur" != "*" && "$operateur" != "/" ]]; then
  echo "Opérateur non valide. Utilisez l'un des suivants : + - * /"
  exit 1
fi

# Effectue l'opération en utilisant bc (calculatrice de précision)
resultat=0
case "$operateur" in
  "+")
    resultat=$(echo "$nombre1 + $nombre2" | bc)
    ;;
  "-")
    resultat=$(echo "$nombre1 - $nombre2" | bc)
    ;;
  "*")
    resultat=$(echo "$nombre1 * $nombre2" | bc)
    ;;
  "/")
    if [ "$nombre2" -eq 0 ]; then
      echo "Erreur : Division par zéro."
      exit 1
    fi
    resultat=$(echo "scale=2; $nombre1 / $nombre2" | bc)
    ;;
esac

# Affiche le résultat
echo "Résultat : $resultat"

