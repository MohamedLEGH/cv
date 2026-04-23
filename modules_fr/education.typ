// Imports
#import "@preview/brilliant-cv:3.3.0": cv-section, cv-entry, h-bar


#cv-section("Formation")

#cv-entry(
  title: [Doctorat],
  society: [Sorbonne Université, LIP6],
  logo: image("../assets/logos/LogoLIP6.png"),
  date: [2023 - 2026],
  location: [Paris],
  description: list(
    [Sujet de thèse : Protocoles pair à pair pour un apprentissage décentralisé efficace et résilient],
  ),
)

#cv-entry(
  title: [Diplôme d'Ingénieur],
  society: [Polytech Sorbonne],
  logo: image("../assets/logos/Logo_Reseau_Polytech.svg"),
  date: [2015 - 2018],
  location: [Paris],
  description: list(
    [Spécialité Mathématiques Appliquées et Informatique Numérique],
    [Cours : Statistiques #h-bar() Équations différentielles #h-bar() Programmation #h-bar() Structures de données #h-bar() Parallélisme],
  ),
)

#cv-entry(
  title: [Semestre Erasmus],
  society: [TU Delft],
  logo: image("../assets/logos/TU.png"),
  date: [Hiver 2017],
  location: [Pays-Bas],
  description: list(
    [Cours : Théorie des graphes #h-bar() Cryptographie #h-bar() Blockchain #h-bar() Cloud Computing #h-bar() Visualisation de données],
  ),
)

#cv-entry(
  title: [PeiP (Parcours des écoles d'ingénieurs Polytech)],
  society: [Polytech Sorbonne],
  logo: image("../assets/logos/PEIP_logo.png"),
  date: [2013 - 2015],
  location: [Paris],
  description: list(
    [Cours : Mathématiques #h-bar() Informatique #h-bar() Physique #h-bar() Chimie #h-bar() Mécanique],
  ),
)
