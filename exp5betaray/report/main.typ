// #import "@preview/bubble:0.1.0": *
#import "template.typ": *
#import "@preview/ctheorems:1.1.2": *
#show: thmrules
// #show link: underline

#show: bubble.with(
  title: [Analysis of $beta$ ray spectroscopy] ,
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


#let Na = [$attach(#text("Na"), tl:22,bl:11)$]
#let Sr = [$attach(#text("Sr"), tl:90,bl:38)$]

//#set page(numbering: none)
// Edit this content to your liking
//#outline()
#outline(indent: auto)

#set page(numbering: "1 / 1")
#counter(page).update(1)

= Introduction

In this experiment, we perform $beta$ ray epectroscopy using a scintillation detector and then measure the 
pulse heights using a multi channel analyser. In the previous experiment we used a single channel 
analyser by varying the window and baseline to measure pulses within the window. The Multi Channel 
Analyser(MCA) measures all the pulses in all the windows at the same time.

= Theory

We lay out, in brief, the theory behind the $beta$ ray spectrometer used, and the decay of the radioactive sources that produce the 
$beta$ rays in our interaction.
== $beta$ ray spectrometer

#include "beta_spectro.typ"

== Decay Scheme of #Na and #Sr

#include "decay.typ"


== Kinetic Energy of $beta$ Particles
#include "kinetic_beta.typ"

= Results and Analysis

#include "tables_plots.typ"

= Conclusion

#include "conclusion.typ"


