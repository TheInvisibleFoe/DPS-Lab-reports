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
The experiment is used to find the mass attenuation coefficient of Pb for $gamma$ rays. We define attenuation to be the gradual loss of flux intensity through a medium. Here we quantify the attenuation of $gamma$ rays when they move through Pb plates.

The linear attenuation coefficient characterizes how easily a volume of material can be penetrated by a beam of light, sound, particles, or other energy or matter, or in this case $gamma$ rays. The mass attenuation coefficient is then defined as the linear attenuation coefficient normalized by the density of the medium.
We define the linear attenuation coefficient as
#nonum($mu = -1/Phi (d Phi)/(d z)$)
where
- $mu$ = The Linear attenuation coefficient.
- $rho$ = The density of the medium.
- $Phi$ = The flux at z.
- $z$ = The path length travelled by the beam.

On solving we get our working formula as (assuming $mu$ doesnt depend on $z$) to be:
#nonum($I = I_0 e^(-mu/rho rho z)$)
where we have the $mu/rho$ to be the mass attenuation coefficient.


== Inverse Square Law
We can treat the used $gamma$ ray source as a point source, emitting photons in all directions. In a spherically symmetric manner. Then, as we change the distance between the source and the detector, the number of particles falling into the detector clearly reduces. This can be better illustrated using the diagram below.

#figure(
  image("Images/inverse-square.jpg", width: 50%),
)

Then, the number of partices falling on a detector of area $A$ at a distance $r$ is proportional to $A/r^2$. Hence, the counts should follow an inverse square law with respect to the distance from the detector.

= Background Reading
Background radiation is a measure of the level of ionizing radiation present in the environment at a particular location which is not due to deliberate introduction of radiation sources.
In the case of our experiment, the environment may have some amount of $gamma$ radiation present. It is important to measure the amount of background radiation so that we can correct our count rate reading from the GM counter by subtracting the count rate due to the background reading.

== Table 1 (Background reading)
#set align(center)

#table(
columns: (auto,auto,auto),
align: horizon,
table.header(
[S. No.], [Time (s)], [Counts]
),
[1],[600],[161],
[2],[600],[158],
[3],[600],[187],
)
*Average count:* 168.7 (in 600 s)

*Average count rate:* 0.281 $s^(-1)$

#set align(left)
= Determination of mass attenuation coefficient

== Table 2 (Measurement of thickness of plates)
*Zero error on the screw gauge:* 0.00 mm

*Least count of the screw gauge:* 0.01 mm
#figure(
  image("Images/thick.jpeg", width:100%),
  caption: "Linear fit to determine the mass attenuation coefficient",
)

== Table 2 (Count rate vs. Thickness)

#table(
columns: (auto,auto,auto,auto,auto,auto),
align: horizon,
table.header(
[Time (s)], [Thickness (mm)], [Counts], [Avg Count], [Count rate ($s^(-1)$)], [Corrected rate ($s^(-1)$)]
),
table.cell(rowspan: 2)[45], table.cell(rowspan: 2)[0], [396],table.cell(rowspan: 2)[398.5], table.cell(rowspan: 2)[8.856],table.cell(rowspan: 2)[8.574],[401],

table.cell(rowspan: 2)[120], table.cell(rowspan: 2)[1.11], [139],table.cell(rowspan: 2)[145], table.cell(rowspan: 2)[1.208],table.cell(rowspan: 2)[0.927],[151],

table.cell(rowspan: 2)[120], table.cell(rowspan: 2)[2.23], [137],table.cell(rowspan: 2)[138], table.cell(rowspan: 2)[1.150],table.cell(rowspan: 2)[0.869],[139],

table.cell(rowspan: 2)[120], table.cell(rowspan: 2)[3.33], [119],table.cell(rowspan: 2)[124.5], table.cell(rowspan: 2)[1.038],table.cell(rowspan: 2)[0.756],[130],

table.cell(rowspan: 2)[120], table.cell(rowspan: 2)[4.37], [138],table.cell(rowspan: 2)[137.5], table.cell(rowspan: 2)[1.146],table.cell(rowspan: 2)[0.865],[137],

table.cell(rowspan: 2)[120], table.cell(rowspan: 2)[5.42], [118],table.cell(rowspan: 2)[110], table.cell(rowspan: 2)[0.917],table.cell(rowspan: 2)[0.636],[102],

table.cell(rowspan: 2)[120], table.cell(rowspan: 2)[5.33], [110],table.cell(rowspan: 2)[101], table.cell(rowspan: 2)[0.842],table.cell(rowspan: 2)[0.560],[92],

table.cell(rowspan: 2)[120], table.cell(rowspan: 2)[6.44], [87],table.cell(rowspan: 2)[102], table.cell(rowspan: 2)[0.850],table.cell(rowspan: 2)[0.569],[117],

table.cell(rowspan: 2)[120], table.cell(rowspan: 2)[7.55], [97],table.cell(rowspan: 2)[95], table.cell(rowspan: 2)[0.792],table.cell(rowspan: 2)[0.510],[93],

table.cell(rowspan: 2)[120], table.cell(rowspan: 2)[8.66], [113],table.cell(rowspan: 2)[99.5], table.cell(rowspan: 2)[0.829],table.cell(rowspan: 2)[0.548],[86],

table.cell(rowspan: 2)[120], table.cell(rowspan: 2)[9.69], [81],table.cell(rowspan: 2)[84], table.cell(rowspan: 2)[0.700],table.cell(rowspan: 2)[0.419],[87],

table.cell(rowspan: 2)[120], table.cell(rowspan: 2)[10.74], [73],table.cell(rowspan: 2)[72.5], table.cell(rowspan: 2)[0.604],table.cell(rowspan: 2)[0.323],[72],

table.cell(rowspan: 2)[120], table.cell(rowspan: 2)[10.46], [77],table.cell(rowspan: 2)[81], table.cell(rowspan: 2)[0.675],table.cell(rowspan: 2)[0.394],[85],

table.cell(rowspan: 2)[120], table.cell(rowspan: 2)[11.57], [86],table.cell(rowspan: 2)[86.5], table.cell(rowspan: 2)[0.721],table.cell(rowspan: 2)[0.439],[87],

table.cell(rowspan: 2)[120], table.cell(rowspan: 2)[12.68], [67],table.cell(rowspan: 2)[70.5], table.cell(rowspan: 2)[0.588],table.cell(rowspan: 2)[0.306],[74],
)

== Graph

#figure(
  image("Images/logcorr.png", width:120%),
  caption: "Linear fit to determine the mass attenutaion coefficient",
)

The data plotted was fitted with the equation -
#nonum($y(x) = a x + b$)
with the fit giving us the values of the coefficients -
#nonum($a = -0.094 plus.minus 0.008$)
#nonum($b = 0.06 plus.minus 0.07$)
The density of lead is known to be $rho = 1.1343 times 10^(4) k g dot m^(-3) = 1.1343 times 10^(-2) g dot m m^(-3)$
From analysing the expression for the mass attenuation coefficient, we find that -
#nonum($mu / rho = (0.094) (1/rho) = (0.094) (1/1.1343) (100) g^(-1) m m ^(2) = 8.287 g^(-1) m m ^(2)$)

Thus, the value of the mass attenuation coefficient is found to be $(8.2 plus.minus 0.7) g^(-1) m m ^(2)$.

= Calculation of half value thickness
Half value thickness is the thickness of the absorber at which the value of the incident intensity is attentuated to half of its initial value.

We note that,
$
I_0 / 2 = I_0 exp(-(mu/rho) rho z_h) => z_h = ln(1/2)/(- (mu/rho) rho)  
$
Putting in the values, we get,
$
z_h = 0.693 / 0.094 m m = 7.372 m m
$

Thus, the value of the half-value thickness is $7.37 plus.minus 0.06 m m$.

= Verification of inverse square law
#figure(
  image("Images/inversever.png", width:120%),
  caption: "Verification of Inverse Square Law",
)

We represent the data in a log(Counts) vs log(distance) graph, given as
#nonum($&log(I) = a log(x) + b \ 
  =>&y = a x +b
  $)
We fit the data with a linear fit to obtain a to be $-1.72plus.minus 0.03$ and b to be $8.52 plus.minus 0.06$.



= Possible errors
The possible errors in this experiment are -
1. Introduction of secondary radiation sources in the evironment of the experimental setup after taking the background radiation reading and while the experiment is being conducted - This can change the count rate due to sources other than the intended radiation source, thereby affecting the results.
2. Voltage fluctuation in the electronic instruments used - This may affect the count rate as expressed by the GM counter.
3. While measuring the mass attenuation coefficient, there were small air gaps between the lead plates. This leads to an error in the counts due to some surface scattering effects. Also, if all the lead plates are not parallel to each other, that would introduce an error in the measurement of the thickness. However, this error should be very minimal, since GM counter is very small.
