== Characteristic Curve Data
This is the data for the counts of the GM counter at different voltages to plot the characteristic
curve.
#set align(center)
#let results = csv("data/gm.csv", delimiter: ",")

#table(
  columns: 4,
  [*High Voltage(in V)*], [*Counts(Run 1)*],[*Counts(Run 2)*],[*Average Count*],
  ..results.flatten(),
)
#set align(left)

== Counting Statistics Data
#set align(center)
#let results1 = csv("data/stats2.csv", delimiter: ",")

#table(
  columns: 2,
  [*Counts*], [*Occurences*],
  ..results1.flatten(),
)
