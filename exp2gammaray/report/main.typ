// #import "@preview/bubble:0.1.0": *
#import "template.typ": *
#import "@preview/ctheorems:1.1.2": *
#show: thmrules
// #show link: underline

#show: bubble.with(
  title: [$gamma$ ray absorption in matter by a $gamma$-ray source] ,
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

#pagebreak()
#set page(numbering: "1 / 1")
#counter(page).update(1)



// start editing from here
= Introduction
In this experiment we have studied $gamma$ ray absorption by lead using a Na-22 $gamma$ ray source and a Geiger-Müller Counter. We also verified the inverse square law for $gamma$ radiation.
= Theory
== Geiger–Müller Counter
A Geiger–Müller Counter (GM counter) is an electronic device that lets us detect the presence of ionizing radiation. It detects radiations such as $alpha$, $beta$, and $gamma$ rays using the ioinisation effect produced by these rays in a GM tube. 
#figure(
  image("Images/gm-counter.png", width: 40%),
  caption: [A GM Counter. (Source: Wikipedia)]
) <gm-counter>
=== Working Principle
The GM tube is filled with an inert gas, such as Helium, Neon, Argon etc. at very low pressure. Then, a very high voltage is applied accross the tube. This high voltage keeps the electrons from recombining with the formed ions during an ionisation event. When an ionising radiation falls on the tube, the ionisation process is considerably amplified due to an *ionisation avalanche*, which is also known as Townsend Discharge. Essentially, after the first ionisation process, the ejected electron, while accelerating through the applied potential collide with other gas molecules, and eject even more electrons. 

#figure(
  image("Images/Electron_avalanche.gif", width: 50%),
  caption: [Avalanche effect in gas subject to ionising radiation between two plate electrodes. (Source: Wikipedia)]
) <electron-avalanche>

This leads to a significantly large amplification of the number of free electrons produced and hence, produces a large pulse, which is easily measured. We have seen what happens in a GM tube due to one radiation event. However, the tube must quickly return to its previous state, to detect subsequent radiations. However, when the ionised gaseous molecules reach the cathode to get gain electrons, they reach an excited state. And their de-excitation produces photons which cause ionisation again, causing false electric pulses. This would lead to a prolonged "dead time" for the tube during which, no new events can be detected. To counter this, we use a *quenching gas*. Generallly, halogens like Bromine, and Chlorine are chosen as the quenching gas for GM tubes. When the ionised inert gas in the tube collides with the neutral Halogen molecules, the former accepts an electron from the latter. And when the ionised halogens reach the cathode, they also reach an excited state, but the de-excitation doesn't cause more ionisation for the inert gas, and hence, doesn't cause false pulses.

#figure(
  image("Images/Geiger_gamma_interaction.jpg", width: 60%),
  caption: "Detection of gamma in a G-M tube with a thick-walled stainless steel cathode.(Source: Wikipedia)"
) <geiger-gamma>


=== Readouts
The GM tube counts these "pulses" and gives them as a readout, displayed either as total counts over a fixed amount of time, or count rates, like *counts per second* or *counts per minute*.

=== Limitations
As we can clearly see, each pulse detected using the GM tube will be of the same magnitude, regardless of the type of radiation. A GM counter is only good for detecting the presence of radiation, and the rate of radiation. It cannot give us any information about the energy of the radiation. Also, as discussed above, since a GM tube will have a "dead time", at very high radiation rates, which will lead to a decreased reading being put out by the counter.

== Mass Attenuation

== Inverse Square Law
We can treat the used $gamma$ ray source as a point source, emmiting photons in all directions. In a spherically symmetric manner. Then, as we change the distance between the source and the detector, the number of particles falling into the detector clearly reduces. This can be better illustrated using the diagram below. 

#figure(
  image("Images/inverse-square.jpg", width: 50%),
)

Then, the number of partices falling on a detector of area $A$ at a distance $r$ is proportional to $A/r^2$. Hence, the counts should follow an inverse square law with respect to the distance from the detector. 
