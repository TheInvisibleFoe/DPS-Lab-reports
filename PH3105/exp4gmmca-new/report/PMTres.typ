#let Cs = [$attach(#text("Cs"), tl:137,bl:55)$]
#let Bam = [$attach(#text("Ba"), tl:137m,bl:56)$]
#let Ba = [$attach(#text("Ba"), tl:137,bl:56)$]
#let Ni = [$attach(#text("Ni"), tl:60,bl:28)$]
#let Co = [$attach(#text("Co"), tl:60,bl:27)$]
#let Com = [$attach(#text("Co"), tl:59,bl:27)$]
#let nonum(eq) = math.equation(block: true, numbering: none, eq)

We vary the PMT voltage over $642$MeV to $738$MeV to get the point where the resolution is the minimum.
The resolution varied over the PMT using the gaussian is the Full Width at Half Maximum(FWHM) divided by the Centroid of the peak. The FWHM of a gaussian is given as $2sqrt(2 ln 2) sigma$ 
#figure(image("PMTreso.png"))
The lowest point of resolution comes out near $690$MeV which is our operating volatge. Thus we have verified that we are working at optimum operating voltage.
