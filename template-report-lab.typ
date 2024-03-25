#let conf(
  title: "Title",
  authors: (),
  abstract: [],
  doc
) = {
  set page(
    paper: "a4",
    header: align(
      right + horizon,
      title
    ),
  )

  set par(justify: true)
  set text(
    font: "Computer Modern",
    size: 11pt,
  )

  set align(center)
  text(17pt, title)

  let count = authors.len()
  let ncols = calc.min(count, 3)
  grid(
    columns: (1fr, ) * ncols,
    row-gutter: 24pt,
    ..authors.map(author => [
      #author.name \
      #author.affiliation \
      #link("mailto:" + author.email)
    ]),
  )

  par(justify: false)[
    *Abstract* \
    #abstract
  ]

  set align(left)
  columns(1, doc)
}

#show: doc => conf(
  title: [Template Lab Report],
  authors: (
    (
      name: "Pascal Guttmann",
      affiliation: "Hochschule Furtwangen",
      email: "hfu@pascal-guttmann.de",
    ),
  ),
  abstract: lorem(80),
  doc,
)

= Introduction

#lorem(500)

