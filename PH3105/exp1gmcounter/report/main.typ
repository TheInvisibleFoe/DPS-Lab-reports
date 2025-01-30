// #import "@preview/bubble:0.1.0": *
#import "template.typ": *
#import "@preview/ctheorems:1.1.2": *
#show: thmrules
// #show link: underline

#show: bubble.with(
  title: [Study of GM Counter and Counting Statistics using a $gamma$ ray source] ,
  subtitle: "PH3105",
  author: ("Debayan Sarkar","Diptanuj Sarkar","Sabarno Saha"),
  // author: "",
  affiliation: ("22MS002","22MS038","22MS037"),
  date: datetime.today().display(),
  year: "",
  class: "",
  main-color: "#239b56",
  bib: "",
)



#set page(numbering: none)
// Edit this content to your liking
// #outline()
#outline(indent: auto)




// start editing from here
= Introduction
#include "intro.typ"
#include "gm.typ"
= GM Characteristic Curve
#include "gmchar.typ"
= Counting Statistics
#include "count.typ"
= Conclusion
#include "conc.typ"
#pagebreak()
= Supplementary
#include "supp.typ"
