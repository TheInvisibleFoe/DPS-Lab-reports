#let Cs = [$attach(#text("Cs"), tl:137,bl:55)$]
#let Bam = [$attach(#text("Ba"), tl:137m,bl:56)$]
#let Ba = [$attach(#text("Ba"), tl:137,bl:56)$]
#let Ni = [$attach(#text("Ni"), tl:60,bl:28)$]
#let Co = [$attach(#text("Co"), tl:60,bl:27)$]
#let Com = [$attach(#text("Co"), tl:59,bl:27)$]

We detail the $gamma$ ray decay scheme of the #Cs and #Co, both of which we will use in the experiment. 

=== Decay scheme for #Cs 
Caesium-137 (#Cs) or radiocaesium, is a radioactive isotope of caesium that is formed as one of the more common fission products by the nuclear fission of uranium-235.
The decay scheme for the #Cs is given in the schema below. 
#figure(
 image("csdecay.png", width: 60%), caption: [Decay scheme of #Cs into #Ba (Source: The Internet)]
)
There are three decay schemes for #Cs decaying into #Ba. The most observed ones are the $beta$ 
decay into #Bam and then $gamma$ decay into #Ba, and the direct $beta$ decay into #Ba. We are observing 
the $gamma$ ray spectrum for the $gamma$ ray emitted on transition from #Bam to #Ba. The 'm' in #Bam 
stands for metastable or unstable. The third decay scheme occurs only $0.0006 %$ of the time, so, we can safely 
ignore that.

The decay leaves $94.7% $ of the parent Caesium nuclei into the metastable #Bam nucleus via a $beta^minus$ ray
interaction and the release of an anti-neutrino. Then a $gamma$ ray decay of energy $662$keV converts the metastable nuclei into the the ground state
#Ba. The nuclear reactions are written below. 
$ Cs --> Bam + e^- + overline(nu)_e --> Ba + e^- + overline(nu)_e + gamma(661.65 k e V) $
=== Decay scheme for #Co
Cobalt-60 (#Co) is a synthetic radioactive isotope of cobalt with a half-life of 5.2714 years. It is produced artificially in nuclear reactors.

#figure(
 image("Cobaltdecay.png", width: 60%), caption: [Decay scheme of #Co into #Ni (Source: The Internet)]
)

This is produced on activation of #Com via neutron activation. The dominant interaction here is 
a $beta^-$ decay to a intermediate state and then two consecutive $gamma$ ray decays to get to #Ni.
Then we get a multistep decay from #Com to #Ni. We observe a multistep decay due to some 
selection rules that do not allow transitions to certain states to take place. We thus get the following decay processes

$ Com + n --> Co $
$ Co --> Ni^* + e^- + overline(nu)_e --> Ni^* + e^- + overline(nu)_e + gamma(1.173 M e V) + gamma(1.333 M e V) $


