= Geiger-Mueller Counter
A Geiger-Mueller counter is a widely used device for detecting ionizing radiation (including $gamma$ rays).

The device consists of a metallic cylinder with a thin central wire. The cylinder is filled up with a "Fill gas" - which usually consists of a noble gas (He/Ar/etc) which acts as the main detecting material, and a quenching gas (usually Halogen or Organic alcohol). The gas is often held at a pressure that is lower than atmospheric pressure.
The entire device is attached to a high voltage source, which applied a potential difference between the wire (anode) and the walls of the cylinder (cathode).
#figure(
  image("Images/gmschema.png", width: 60%), caption: [GM Counter Design, Source: The Internet]
)

== Working Principle
The high voltage applied between the central anode wire and the cathode walls creates a radial electric field which has a magnitude that is given by,

$
E (r) = (V)/(r ln(b/a))
$

Where,
$r$ = Radial distance from the center of the cylinder
$V$ = Potential difference between the anode wire and the cathode
$b$ = Inner radius of the cylinder
$a$ = Radius of the anode wire

Clearly, the strength of the electric field increases as we move towards the central wire. The entire device is operated at a voltage that is sufficient to trigger *Geiger discharge*.

When a particle of ionizing radiation enters the GM counter chamber, it eventually interacts with gas atoms - ionizing them in the process. This process continues until the radiation particle deposits all of its energy in the gas (or collides with the wall). The free electrons from these interactions now drift towards the anode under the influence of the electricc field - accelerating in the process. Eventually, these electrons have enough energy to collide with other gas atoms and liberate secondary electrons. These electrons, in turn, liberate even more electrons. This process continues like an avalanche until it terminates at the anode wire, where all the electrons are taken up. This is called a *Townsend Avalanche*. In addition to each free electron initiating a Townsend avalanche, an avalanche can also trigger another avalanche in the region of Geiger discharge. This occurs by the release of photons from the ionized gas ions on their relaxation by either capture of a free electron or internal rearrangement. These photons can cause either another ionization of a gas atom at another position, or it can interact with the cathode wall and extract an electron. These electrons, in turn, initiate avalanches. This way, a single interaction with the radiation particle has the potential to cause a cascade of avalanches that saturate the anode wire.

#figure(
 image("Images/avalanches.png", width: 70%), caption: [Townsend Avalanches, Source: The Internet]
)

These avalanches eventually have to terminate so that the GM counter can detect another particle of radiation. It does due to the accumulation of the positive ions formed during the avalanche cascade process. These ions have a much lower mobility as compared to the electrons, so they move very little in the entire process. The buildup of space charge due to these ions thus alters the electric field around the anode wire significantly - until this buildup eventually reduces the magnitude of the electric field to a point where Townsend avalanche formation is no longer available. This is when the entire process terminates.

Following this, the positive ions drift towards the cathode wall. If they were to reach the cathode, they would extract electrons from the cathode and relax - releasing a photon in the process. These photons have the potential to trigger another pulsing event. to avoid this, we use a quenching gas which has molecules that have a lower ionizing energy than the detecting gas. When the positive ions drift towards the cathode, they collide with these quenching gas particles and transfer their charge to them. These quenching gas particles then reach the cathode and extract an electron. The energy of this relaxatin is then used for dissociation of the quenching gas molecule instead of the release of a photon, thus prevent a repeated pulsing event. A downside of this is that quenching gas often gets consumed over time. To combat this, often halogen gases are used. The atoms of these gases can spontaneously recombine after the molecule has been split, ensuring that approximately the same amount of useful quenching gas molecules remain in the cylinder.

Note that due to the nature of the geiger discharge phenomena, all energy information of the initial radiation particle is lost. This is due to the fact that the avalanches saturate (and thus same amount of charge is produced; approximately) for every particle of radiation that is incident on the counter regardless of its energy. Thus, the GM conter is usable for only determining the rate of irradiation (in its usual setup). The counting circuits attached to the GM counter thus act in pulse mode. It detects all current pulses over a certain threshold as a radiation event and increments the counts, disregarding the total charge carried by the current pulse.

In the case of $gamma$ rays, the high energy photons generally interact with the cathode walls of the counter instead of the gas molecules, and the avalnches are trigerred due to the electrons liberated from the cathode. This is because the probability of interaction of a high energy photon with a gas (particularly a low pressure gas, as in the GM counter) is very low. To increase these interactions with the wall (mostly photoelectric in nature), high atomic number materials are used to construct the inner wall of the GM counter.
