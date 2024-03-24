#let conf(title, doc) = {
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

  columns(1, doc)
}

#show: doc => conf(
  [Template Lab Report],
  doc,
)

= Introduction

#lorem(500)

