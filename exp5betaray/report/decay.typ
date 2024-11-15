#let Na = [$attach(#text("Na"), tl:22,bl:11)$]
#let Sr = [$attach(#text("Sr"), tl:90,bl:38)$]
#let Ne = [$attach(#text("Ne"), tl:22,bl:10)$]
#let Y = [$attach(#text("Y"), tl:90,bl:30)$]
#let Zr = [$attach(#text("Zr"), tl:90,bl:40)$]

We will detail out the $beta$ decay process and thenWe detail the $beta$ ray decay scheme of the #Na and #Sr, both of which we will use in the experiment. 

=== $beta$ decay

The $beta$ decay is a type of radioactive decay in which a beta particle is emitted. There are three types of beta decay processes: beta-minus decay, beta-plus decay or electron capture. 

1. #underline([$beta^-$ decay]) :  In beta-minus decay, a neutron decays into a proton, an electron, and an electron antineutrino. 
$ n --> p^+ +e^- +overline(nu)_e $

2. #underline([$beta^+$ decay]) : In beta-plus decay, a proton decays into a neutron, a positron, and an electron neutrino.

$ p^+ --> +e^+ +nu_e $
3. #underline([Electron Capture]) : In electron capture, an electron is captured by a proton in the nucleus, transforming it into a neutron and emitting a neutrino.

$ p^+ +e^- --> n +nu_e $
=== Decay scheme for #Na 
#Na undergoes a beta decay($beta_+ $ emission) to form #Ne with an intermediate #Ne excited state. The excited state of #Ne then decays to the ground state by emitting a gamma ray. This is one the of the three decay processes that take place. The other two are the electron capture and the gamma decay to the stable #Ne. The gamma decay to #Ne occurs with negligible probability so we can ignore that. Here we consider the beta decay and the electron capture.
$ (beta + text("decay")) Na --> Ne^* + e^+ + nu_e quad quad (E C) Na --> Ne^* + nu_e $
The decay scheme for #Na is shown below.
#figure(image("sodiodecay.png", width : 70%), caption :[Decay scheme for #Na, Source: Internet])

=== Decay scheme for #Sr
#Sr decays to form #Zr by beta decay($beta_-$ emission) with an intermediate daughter nucleus #Y. There are other decay processes. #Y can decay into an intermediate excited state of $Zr^*$. The decay scheme for #Sr is shown below.
$ (beta - text("decay")) Sr --> #Y + e^- + overline(nu)_e $
and then #Y decays to $Zr^*$ by beta decay ox
$ #Y --> Zr^* +e^- + nu_e --> Zr +e^-+ overline(nu)_e + gamma quad (text("Decay Scheme 1")) $

or directly having a $beta$ decay to #Zr.
$ #Y -->  Zr +e^-+ overline(nu)_e  quad (text("Decay Scheme 2")) $
#figure(image("Sr90_decay.png", width : 70%), caption :[Decay scheme for #Sr, Source: Internet])
