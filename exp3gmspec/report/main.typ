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
a Single Channel Analyser (SCA).
= Gamma Ray Interaction with Matter
There are three dominant interactions of $gamma$ ray with matter, namely photoelectric effect, compton scattering
and pair production. Since we dont work with high enough energies, pair production cannot happen. 

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
#figure(
  image("photoelec.jpg", width: 50%),
  caption: [Photoelectric Effect in an atom. Source: The Internet.]
) 


== Compton scattering
The next kind of interaction is called Compton Scattering. Here an incident $gamma$ ray photon scatters off of
an electron and then transfers part of its energy to the photon based on the angle of scatterring. We also know that scattering
can take place between the photon and the electron at any angle between $0$ and $pi$. Thus we observe a compton continuum
in the energy spectrum. The scattering probability increases linearly with $Z$(atomic number).
The kinetic energy of the electron after Compton scattering at an angle $theta$ is given by
#nonum($E_e = h nu ((h nu\/m_0 c^2(1- cos theta))/(1+h nu\/m_0 c^2(1- cos theta)))$)
Thus the energy of the electron has a maximum and minimum energy since the range of $theta$ is limited 
between $0$ and $pi$. This range in the energy spectra is called the *Compton Continuum* with the end, being
called the *Compton Edge*.
#figure(
  image("comp.png", width: 50%),
  caption: [Compton effect, Source: The Internet]
)
== Pair Production
#figure(
  image("pair production.jpg",width: 75%),
  caption: [Pair production, Source: The Internet]
)

Pair production is a phenomenon which in this case refers specifically to a photon creating an electron–positron pair near a nucleus. As energy must be conserved, for pair production to occur, the incoming energy of the photon must be above a threshold of at least the total rest mass energy of the two particles created. Thus, the process is only energetically possible if the photon energy exceeds -
#nonum($2 m_0 c^2 approx 1.03 M e V$)
For the purposes of conservation of momentum, the process must occur in the proximity of a third body - usually a nucleus.
Practically, this process is only significant for photon energies exceeding $~ 10 M e V$, so we do not observe the peaks related to the pair production phenomena in our spectrum. The excess energy of the photon is shared as the kinetic energies of the electron-positron pair that is created.

#nonum($E_(e^-) + E_(e^+) = h nu - 2 m_0 c^2$)
If the gamma ray has enough energy for pair production to occur, we observe a peak at an energy $1.02 M e V approx 2 m_0 c^2$ below the photopeak (assuming that both of the gamma photons produced by the annihilation of the positron do not escape the detector).

It is also known that the crossection of this process scales as the square of the atomic number of the interacting material.

= Scintillation energy detector
The Energy Spectra of the $gamma$ ray is measured using a scintillation detector. Scintillation literally means
'to emit light'. We use materials on which, when a $gamma$ ray falls, the material emits photons in 
the visible range. The no. of visible photons is proportional to the energy of the incident $gamma$ ray photon. The
Scintillation detector consists of a Scintillating material on which the $gamma$ ray photon hits to release photons in the visible range,
then there is the PMT(Photo multiplier tube) to amplify the signal so that it is picked up by the detector. Then the signal goes
into the Single Channelr Analyser(SCA) from which we get readings for the plot.

In the Scintillation material, the number of visible photons are proportional to the deposited energy by the incident $gamma$ photon. In the PMT, 
the number of electrons are proportional to the number of visible photons.
#figure(
  image("PhotoMultiplierTubeAndScintillator.png"),
  caption: [Scintillation Detector with PMT. Source: Internet]
)
== Scintillation Material
The scintillation material used here is NaI(Sodium Iodide) doped with Th. The incident $gamma$ ray photon
hits the electrons in the valence band. The electron then jumps from the valence band to the conduction band.
The activators create excited states in the forbidden band. The electron jumps to the activator excited state and then drops down 
to the valence band releasing photons in the visible range. The activator excited states increase probability of the visible photon emission. 
Also for a pure crystal the visble photon might get reabsorbed leading to lower efficiency.

== PMT
A photo-multiplier tube amplifies the signal. The Scintillation material produces a low number of photons, 
which would give rise to a weak signal. So we use a photomultiplier tube. It consists of a photocathode, and then several dynodes.

The incident photons from the scintillation material hit the photocathode releasing low energy electrons. Then they 
are accelerated by an electrostatic field to the next dynode where they hit more electrons causing secondary electron emission, where
more number of low energy electrons are released when hit by a higher energy electron. This process then repeats to the next dynode and so on.
Thus before reaching the anode the number of electrons are amplified causing us to get a better signal. We measure the pulses from the PMT
using the Single Channel Analyser to get the energy spectrum.
= SCA
A single channel analyzer (SCA) produces an output logic pulse on the condition
that the peak amplitude of its input signal falls within the pulse-height window that is
established by setting the baseline and then the pulse-height window. We then move the baseline keeping the
pulse-height window fixed to map the whole energy spectrum.
= Pulse height analysis
The pulse height analysis is presented below.
#figure(
  image("hist_plot.jpg"),
  caption : [Pulse Height Analysis]
)
We did 2 RUNS with $20$mV window and changing the baseline by $40$mV for $30$s each. The average of the two runs has been plotted
with the voltage in the X-axis. We obtain a backscatter peak, the compton edge and at the very end, the photopeak.
The CRO showed an average pulse height of $1.52$V. The Data table with the two runs with the baseline and step size outline is given in @sup(Supplementary).

*It is to be noted that we get the photopeak at a baseline voltage of $1340 m V$*.


= Conclusion

The experiment concludes by obtaining the energy spectra of #Ce using single channel analyser and a scintillation detector.
We obtain a backscatter peak, the compton edge and the photopeak.

#pagebreak()
= Supplementary <sup>
The two runs for the spectrum are given below
#let results = csv("new_data.csv")

#table(
  columns: 4,
  [*Baseline Voltage(in mV)*], [*Counts(RUN 1)*],[*Counts(RUN 2)*],[*Avg. Counts*],
  ..results.flatten(),
)


