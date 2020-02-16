clear
Coefficient_dossier="4"
Cofficient_entretien="5"
LP="128"
LC=""
SA="42"
SA_note_minimale=$(echo "42/4" | bc -l)

echo "Concours ITRF - IGE BAP E - Administrateur des systèmes d'information"
echo " "
echo "Calculs des points à obtenir pour être sur liste complémentaire ou liste principale"
echo "en fonction de la note obtenue à l'étude de dossier (Admissibilité)"
echo ""
echo "Rappel des seuils d'admissibilité"
echo "Seuil d'admission sur liste principale: $LP"
echo "Seuil d'admission sur la liste complémentaire: $LC"
echo "Seuil d'admissibilité: $SA; soit une note minimale à obtenir de $SA_note_minimale"

echo "Pour être sur Liste Principale"
echo ""
  for i in $(seq -w $SA_note_minimale .5 20)
   do  
    printf "Avec $i/20 à l'admissibilité il faut une note d'admission de : "
    echo "($LP-($i*4))/5" | bc -l
   done
echo ""
if [[ "$LC" -gt "0" ]]; then
echo "Pour être sur Liste complémentaire"
echo ""
    for i in $(seq -w $SA_note_minimale .5 20)
     do
      printf "avec $i/20 il faut :"
      echo "($LC-($i*4))/5" | bc -l
     done
fi 
