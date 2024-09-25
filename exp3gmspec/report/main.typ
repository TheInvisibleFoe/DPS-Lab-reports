// #import "@preview/bubble:0.1.0": *
#import "template.typ": *
#import "@preview/ctheorems:1.1.2": *
#show: thmrules
// #show link: underline

#show: bubble.with(
  title: [$gamma$ ray spectroscopy using a scintillation detector] ,
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

#let Ce = [$attach(#text("Ce"), tl:137,bl:55)$]

#set page(numbering: none)
// Edit this content to your liking
// #outline()
#outline(indent: auto)

#pagebreak()
#set page(numbering: "1 / 1")
#counter(page).update(1)



// start editing from here
= Introduction
The experiment aims to find out the $gamma$ ray spectra for a #Ce using a scintillation detector using 
a Single Channel Analyser(SCA).
= Gamma Ray Interaction with Matter
There are three dominant interactions of $gamma$ ray with matter, namely photoelectric effect, compton scattering
and pair production. Since we dont work with high enough energies. However, $gamma$ rays emitted
from #Ce theoretically could undergo pair production, but the probability of that happening is negligible.
== Photoelectric Effect
An incident $gamma$-ray photon undergoes an interaction in which it hits a bound electron, 
transfers its energy completely and then an energetic *photoelectron* is emitted. These photoelectrons
have almost the energy of the $gamma$ ray emitter by the source, minus a small amount of binding energy.
We also note that photoelectric effect cannot happen with free electrons. 

The probability of photon interaction taking place at a certain distance from the nucleus is given by 
#nonum($tau prop rho Z^n/E_gamma^(3.5)$) where n varies between $4$ and $5$, $Z$ is the atomic number and 
$E_gamma$ is the energy of the $gamma$ ray. We also see jumps in interaction probability when the energy of the $gamma$ ray is 
close to the binding energy of certain shells like K etc. The probability of photon interaction is given below. The electrons ejected due to photoelectric effect are almost all 
of the same energy, thus they form a delta like peak in the energy spectrum.
== Compton scattering
The next kind of interaction is called Compton Scattering. Here an incident $gamma$ ray photon scatters off of
an electron and then transfers part of its energy to the photon based on the angle of scatterring. We also know that scattering
can take place between the photon and the electron at any angle between $0$ and $pi$. Thus we observe a compton continuum
in the energy spectrum. The scattering probability increases linearly with $Z$(atomic number).
The kinetic energy of the electron after Compton scattering at an angle $theta$ is given by
#nonum($E_e = h nu ((h nu\/m_0 c^2(1- cos theta))/(1+h nu\/m_0 c^2(1- cos theta)))$)
= Scintillation energy detector
= Pulse height analysis
= Graph

= Conclusion


= Supplementary 

