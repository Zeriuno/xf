! ceci est un commentaire jusqu'à la fin de la ligne
program racines_carrees ! Du livre de Claude Delannoy, Programmer en Fortran, Eyrolles, p.2

 ! déclarations
 ! Les déclarations de type ne sont pas obligatoires: lorsque le type d'un variable n'est pas déclaré, un type est attribué en fonction de la première lettre de la variable.

  integer :: i, nrac = 5 ! Le type, et puis deux variables, une avec affectation
  real ::    valeur, racine

! instructions

  print *, 'Bonjour - je vais vous calculer ', nrac, ' racines carrees' ! Sortie
  ! * indique un format
  ! Les affichages sont précédés d'un caractère de contrôle (espace blanc par défaut)
  ! Les ' peuveunt aussi être des "
  ! Par défaut, l'instruction se termine par un retour à la ligne
  do i = 1, nrac  ! Boucle: de 1 qui vaut 1 jusqu'à sa valeur nrac
    print *, 'Donnez un nombre :' 
    read *, valeur
    if (valeur >= 0) then
        racine = sqrt (valeur)
        print *, 'le nombre ', valeur, ' a pour racine : ', racine
    else
        print *, 'le nombre ', valeur, 'ne possede pas de racine'
    end if
  end do
  print *, 'Travail termine - Au revoir'

end
