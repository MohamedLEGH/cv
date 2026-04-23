// Imports
#import "@preview/brilliant-cv:3.3.0": cv-section, cv-entry, h-bar


#cv-section("Education")

#cv-entry(
  title: [PhD],
  society: [Sorbonne Université, LIP6],
  logo: image("../assets/logos/LogoLIP6.png"),
  date: [2023 - 2026],
  location: [Paris],
  description: list(
    [Thesis: Peer-to-peer protocols for efficient and resilient decentralized learning],
  ),
)

#cv-entry(
  title: [Engineering Degree],
  society: [Polytech Sorbonne],
  logo: image("../assets/logos/Logo_Reseau_Polytech.svg"),
  date: [2015 - 2018],
  location: [Paris],
  description: list(
    [Major in Applied Mathematics and Digital Computer Science],
    [Coursework: Statistics #h-bar() Differential Equations #h-bar() Programming #h-bar() Data Structures #h-bar() Parallelism],
  ),
)

#cv-entry(
  title: [Erasmus Semester],
  society: [TU Delft],
  logo: image("../assets/logos/TU.png"),
  date: [Winter 2017],
  location: [Netherlands],
  description: list(
    [Coursework: Graph Theory #h-bar() Cryptography #h-bar() Blockchain #h-bar() Cloud Computing #h-bar() Data Visualization],
  ),
)

#cv-entry(
  title: [PeiP (Polytech Engineering School Pathway)],
  society: [Polytech Sorbonne],
  logo: image("../assets/logos/PEIP_logo.png"),
  date: [2013 - 2015],
  location: [Paris],
  description: list(
    [Coursework: Mathematics #h-bar() Computer Science #h-bar() Physics #h-bar() Chemistry #h-bar() Mechanics],
  ),
)
