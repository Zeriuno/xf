! ceci est un commentaire jusqu'à la fin de la ligne
program racines_carrees ! Du livre de Claude Delannoy, Programmer en Fortran, Eyrolles, p.2

 ! déclarations
 ! Les déclarations de type ne sont pas obligatoires: lorsque le type d'un variable n'est pas déclaré, un type est attribué en fonction de la première lettre de la variable.

  integer :: i, nrac = 5
  ! Autre syntaxe possible "integer::i,nrac=5"
  real ::    valeur, racine
  ! Le type, et puis deux variables, une avec affectation
  ! L'identificateur est composé de lettres et ou de chiffres
  ! Le '_' est un caractère accepté
  ! La casse est acceptée mais pas reconnue ('A' est égal à 'a').
  ! Longueur limitée:
  ! * 6 charactères FORTRAN 77
  ! * 31 charactères FORTRAN 90
  ! * 63 charactères FORTRAN 2003

! instructions

  print *, 'Bonjour - je vais vous calculer ', nrac, ' racines carrees' ! Sortie
  ! * indique un format
  ! format libre (l'autre est le format fixe)
  !   Longueur des lignes à concurrence de 132 charactères
  ! Les affichages sont précédés d'un caractère de contrôle (espace blanc par défaut)
  ! Les ' peuveunt aussi être des "
  ! Par défaut, l'instruction se termine par un retour à la ligne
  do i = 1, nrac  ! Boucle: de 1 qui vaut 1 jusqu'à sa valeur nrac
    print *, 'Donnez un nombre :' 
    read *, valeur
    ! lecture depuis l'entrée standard
    ! lecture d'un format par défaut
    ! Valeur stockée dans la variable valeur
    if (valeur >= 0) then  ! if statement
        racine = sqrt (valeur) ! appel de la procédure sqrt
        print *, 'le nombre ', valeur, ' a pour racine : ', racine ! affichage
    else ! else
        print *, 'le nombre ', valeur, 'ne possede pas de racine'
    end if ! fin du if statement
  end do ! fin de la boucle
  print *, 'Travail termine - Au revoir'

end
