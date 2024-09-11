#import "@preview/codelst:2.0.0": sourcecode
#import "@preview/ctheorems:1.1.2": *
// #show: thmrules
#show link: underline

// main project
#let bubble(
  title: "",
  subtitle: "",
  expt:"",
  author: (),
  affiliation: "",
  year: none,
  class: none,
  date: datetime.today().display(),
  logo: none,
  main-color: "",
  alpha: 60%,
  color-words: (),
  body,
  bib: "",
) = {
  set document(author: author, title: title)

  // Save heading and body font families in variables.
  // let body-font = "New Computer Modern"
  let body-font = "mlmodern"
  let title-font = "Barlow"
  show outline.entry.where(
    level: 1
  ): it => {
    v(12pt, weak: true)
    strong(it)
  }
  // Set colors
  let primary-color = rgb(main-color) // alpha = 100%
  let bullet-color = rgb("000000")
  let link-color = rgb("2114eb")
  let code-color = rgb("abb2b9")
  // change alpha of primary color
  let secondary-color = color.mix(color.rgb(100%, 100%, 100%, alpha), primary-color, space:rgb)
  // DROPCAP TOOL

  // Element function for space.
  let space = [ ].func()

  // Elements that can be split and have a 'body' field.
  let splittable = (strong, emph, underline, stroke, overline, highlight)

  // Sets the font size so the resulting text height matches the given height.
  //
  // If not specified otherwise in "text-args", the top and bottom edge of the
  // resulting text element will be set to "bounds".
  //
  // Parameters:
  // - height: The target height of the resulting text.
  // - threshold: The maximum difference between target and actual height.
  // - text-args: Arguments to be passed to the underlying text element.
  // - body: The content of the text element.
  //
  // Returns: The text with the set font size.
  let sized(height, ..text-args, threshold: 0.1pt, body) = style(styles => {
    let text = text.with(
      top-edge: "bounds",
      bottom-edge: "bounds",
      ..text-args.named(),
      body
    )

    let size = height
    let font-height = measure(text(size: size), styles).height

    // This should only take one iteration, but just in case...
    while calc.abs(font-height - height) > threshold {
    size *= 1 + (height - font-height) / font-height
    font-height = measure(text(size: size), styles).height
  }

    return text(size: size)
  })

  // Attaches a label after the split elements.
  //
  // The label is only attached to one of the elements, preferring the second
  // one. If both elements are empty, the label is discarded. If the label is
  // empty, the elements remain unchanged.
  let attach-label((first, second), label) = {
    if label == none {
    (first, second)
  } else if second != none {
    (first, [#second#label])
  } else if first != none {
    ([#first#label], second)
  } else {
    (none, none)
  }
  }

  // Tries to extract the first letter of the given content.
  //
  // If the first letter cannot be extracted, the whole body is returned as rest.
  //
  // Returns: A tuple of the first letter and the rest.

  let extract-first-letter(body) = {
    if type(body) == str {
    let letter = body.clusters().at(0, default: none)
    if letter == none {
    return (none, body)
  }
    let rest = body.clusters().slice(1).join()
    return (letter, rest)
  }

    if body.has("text") {
    let (text, ..fields) = body.fields()
    let label = if "label" in fields { fields.remove("label") }
    let func(it) = if it != none { body.func()(..fields, it) }
    let (letter, rest) = extract-first-letter(body.text)
    return attach-label((letter, func(rest)), label)
  }

    if body.func() in splittable {
    let (body: text, ..fields) = body.fields()
    let label = if "label" in fields { fields.remove("label") }
    let func(it) = if it != none { body.func()(..fields, it) }
    let (letter, rest) = extract-first-letter(text)
    return attach-label((letter, func(rest)), label)
  }

    if body.has("child") {
    // We cannot create a 'styled' element, so set/show rules are lost.
    let (letter, rest) = extract-first-letter(body.child)
    return (letter, rest)
  }

    if body.has("children") {
    let child-pos = body.children.position(c => {
      c.func() not in (space, parbreak)
    })

    if child-pos == none {
    return (none, body)
  }

    let child = body.children.at(child-pos)
    let (letter, rest) = extract-first-letter(child)
    if body.children.len() > child-pos {
    rest = (rest, ..body.children.slice(child-pos+1)).join()
  }
    return (letter, rest)
  }
  }

  // Gets the number of words in the given content.
  let size(body) = {
    if type(body) == str {
    body.split(" ").len()
  } else if body.has("text") {
    size(body.text)
  } else if body.has("child") {
    size(body.child)
  } else if body.has("children") {
    body.children.map(size).sum()
  } else if body.func() in splittable {
    size(body.body)
  } else {
    1
  }
  }

  // highlight important words
  // show regex(color-words.join("|")): text.with(fill: primary-color)
  let nomenclature(..quantities) = {
    let q = quantities.pos()
    [= Nomenclature

    #table(
      stroke: none,
      row-gutter: -3pt,
      columns: (auto, auto, auto),
      align: left,
      ..q.map(
        ((k,v)) => ([#k], [$=$], v)
      ).flatten()
    )
  ]
  }

  // customize look of figure
  set figure.caption(separator: [ :: ], position: bottom)

  // customize inline raw code
  show raw.where(block: false) : it => h(0.5em) + box(fill: code-color.lighten(70%), outset: 0.2em, it,radius: 2pt) + h(0.5em)

  // Set body font family.
  set text(font: body-font, 12pt)
  show heading: set text(font: title-font, fill: primary-color)



  // heading numbering
  set heading(numbering: (..nums) => {
    let level = nums.pos().len()
    // only level 1 and 2 are numbered
    let pattern = if level == 1 {
      "I."
    } else if level == 2 {
      "I.1."
    } else if level == 3 {
      "I.1.A."
    } else if level == 4 {
      "I.1.A.a"
    }
    if pattern != none {
    numbering(pattern, ..nums)
  }
  })

  // add space for heading
  show heading.where(level:1): it => it + v(0.5em)


  // Set link style
  show link: it => underline(text(fill: link-color, it))

  //numbered list colored
  set enum(indent: 1em, numbering: n => [#text(fill: bullet-color, numbering("1.", n))])

  //unordered list colored
  set list(indent: 1em, marker: n => [#text(fill: bullet-color, "•")])

  set math.equation(numbering: "[1]", supplement: [Eq.])
  show math.equation: set block(spacing: 0.65em)

  show ref: it => {
    let eq = math.equation
    let el = it.element
    if el != none and el.func() == eq {
    // Override equation references.
    link(
      el.label,
      [#el.supplement #numbering(
        el.numbering,
        ..counter(eq).at(el.location())
      )]
    )
  } else {
    // Other references as usual.
    it
  }
  }
  let bEquation = it => {
    [#set math.equation(numbering: "1", supplement: "Equation")
    #show math.equation: set block(spacing: 0.65em)
    // Configure appearance of equation references
    #show ref: it => {
      let eq = math.equation
      let el = it.element
      if el != none and el.func() == eq {
      // Override equation references.
      link(
        el.label,
        [Equation #numbering(
          el.numbering,
          ..counter(eq).at(el.location())
        )]
      )
    } else {
      // Other references as usual.
      it
    }
    }
    #it ]
  }


  // display of outline entries
  // show outline.entry: it => text(size: 12pt, weight: "regular",it)

  // Title page.
  // Logo at top right if given
  if logo != none {
  set image(width: 6cm)
  place(top + right, logo)
}
  // decorations at top left
  place(top + left, dx: -35%, dy: -28%, circle(radius: 150pt, fill: primary-color))
  place(top + left, dx: -10%, circle(radius: 75pt, fill: secondary-color))

  // decorations at bottom right
  place(bottom + right, dx: 40%, dy: 30%, circle(radius: 150pt, fill: secondary-color))


  v(2fr)

  align(center, text(font: title-font, 2em, weight: 700, expt))
  v(2em, weak: true)
  align(center, text(font: title-font, 3em, weight: 700, title))
  v(2em, weak: true)
  align(center, text(font: title-font, 2em, weight: 700, subtitle))
  v(2em, weak: true)
  align(center, text(1.1em, date))

  v(2fr)

  let noauthors = author.len()
  let nauthor = author.len() - calc.rem(noauthors,2)
  // Author information.
  for i in range(0,nauthor, step:2){
    grid(
      columns: (1fr, 1fr),
      align(center)[
      #text(author.at(i) ,14pt, weight: "bold")\
      #text(affiliation.at(i))\
      ],
    align(center)[
      #text(author.at(i+1), 14pt, weight: "bold")\
      #text(affiliation.at(i+1))\
      ]
    )
  }
  if calc.rem(noauthors,2)==1 {
    align(center)[
      #text(author.last(), 14pt, weight: "bold") \
      #affiliation.last()\ #year\ #emph[#class]\ 
    ]
  }

  pagebreak()

  // Table of contents.
  set page(
    numbering: "1 / 1",
    number-align: center,
  )


  // Main body.
  set page(
    header: [#emph()[#title #h(1fr) #subtitle]]
  )
  set par(justify: true)

  body

  set bibliography(
    title: "References",
    full: false,
    // full: true,
    style: "institute-of-electrical-and-electronics-engineers",
  )

//  bibliography("refs.bib")
  

}

//useful functions
//set block-quote
#let blockquote = rect.with(stroke: (left: 2.5pt + luma(170)), inset: (left: 1em))

// use primary-color and secondary-color in main
#let primary-color = rgb("E94845")
#let secondary-color = rgb(255, 80, 69, 60%)
#let theorem = thmbox(
  "theorem",
  "Theorem",
  fill: rgb("#e8e8f8"),
  radius: 0em,
  stroke: rgb(black)
)
#let definition = thmbox(
  "definition",
  "Definition",
  radius: 0em,
  fill: rgb("#e5ffcc"),
  stroke: rgb(black)
)
#let propn = thmbox(
  "proposition ",
  "Proposition",
  radius: 0em,
  fill: rgb("#e0e0e0"),
  stroke: rgb(black)
)
#let lemma = thmbox(
  "lemma",
  "Lemma",
  radius: 0em,
  stroke: rgb(black)
)
#let proof = thmplain(
  "proof",
  "Proof",
  base: "theorem",
  titlefmt: smallcaps,
  bodyfmt: body => [
  #body #h(1fr) $square$
]
).with(numbering: none)
#let nonum(eq) = math.equation(block: true, numbering: none, eq)

#set math.mat(
  delim: "[",
)
#set table(
  stroke: (x, y) => (
  y: 1pt,
  left: if x > 0 { 0pt } else if calc.even(y) { 0pt },
  right: if calc.even(y) { 0pt },
),
)
