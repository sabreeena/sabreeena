-README.md: guessinggame.sh
    echo "# Guessing Game" > README.md
    echo "" >> README.md
    echo "Date et heure de création : $$(date)" >> README.md
    echo "" >> README.md
    echo "Nombre de lignes de code dans guessinggame.sh : $$(wc -l < guessinggame.sh)" >> README.md

.PHONY: clean
clean:
    rm README.md
