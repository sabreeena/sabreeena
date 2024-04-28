#!/bin/bash

# Fonction pour féliciter l'utilisateur
congratulate() {
    echo "Félicitations ! Vous avez deviné correctement le nombre de fichiers."
}

# Fonction pour obtenir le nombre de fichiers dans le répertoire actuel
get_file_count() {
    local file_count=$(ls -l | grep "^-" | wc -l)
    echo $file_count
}

# Nombre de fichiers dans le répertoire
file_count=$(get_file_count)

# Boucle pour demander à l'utilisateur de deviner le nombre de fichiers
while true; do
    echo "Combien de fichiers se trouvent dans le répertoire actuel ?"
    read guess

    # Vérifier si la réponse de l'utilisateur est correcte
    if [ $guess -eq $file_count ]; then
        congratulate
        break
    elif [ $guess -lt $file_count ]; then
        echo "Trop bas ! Essayez à nouveau."
    else
        echo "Trop haut ! Essayez à nouveau."
    fi
done
