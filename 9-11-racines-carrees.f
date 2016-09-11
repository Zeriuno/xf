program racines_carrees ! Du livre de Claude Delannoy, Programmer en Fortran, Eyrolles, p.2

  integer :: i, nrac = 5
  real ::    valeur, racine

  print *, 'Bonjour - je vais vous calculer ', nrac, ' racines carrees'
  do i = 1, nrac
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
