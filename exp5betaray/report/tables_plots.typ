#let Na = [$attach(#text("Na"), tl:22,bl:11)$]
#let Sr = [$attach(#text("Sr"), tl:90,bl:38)$]

== #Na Source
For the #Na source, for each voltage we took 2 runs, for 60 seconds each. The energy was calculated using the formula derived above, in kilo electron volts.

=== Table for #Na Source
#let results = csv("na-table.csv")
#table(
  columns: 7,
  [*Magnetic Field(mT)*], [*Voltage (V)*], [*Current (A)*], [*Counts(Run 1)*],[*Counts(Run 2)*],[*Avg. Counts*],[*Energy (keV)*],
  ..results.flatten(),
)
=== Plot of Energy vs Count for #Na Source
#figure(
 image("na-plot.png", width: 70%), caption: [$beta$-ray spectrum of #Na]
)

=== Energy corresponding to the maximum count for #Na source
The peak of the spectrum was observed to be at an energy of 310.36 keV with the average count of 134.

== #Sr Source
For the #Sr source, we decided to take only one run for each voltage, again, for 60 seconds. However, this time the voltage was varied at a slower rate 
compared to that of the #Na source, to make sure we have more close-by datapoints to get a better and more accurate spectrum.
=== Table for #Sr Source
#let results = csv("sr-table.csv")
#table(
  columns: 6,
  [*Magnetic Field(mT)*], [*Voltage (V)*], [*Current (A)*], [*Counts*],[*Corrected Counts (no background)*],[*Energy (keV)*],
  ..results.flatten(),
)
=== Plot of Energy vs Count for #Sr Source
#figure(
  image("sr-plot.png", width: 70%), caption: [$beta$-ray spectrum of #Sr])

=== Energy corresponding to the maximum count for #Sr source
The peak of the spectrum was observed to be at an energy of 662.83 keV with the average count of 1471.
