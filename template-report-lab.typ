#let date = datetime.today().display(
  "[day padding:space] [month repr:short] [year repr:full]"
)

#let titlepage-lange(
  title: "titlepage(title: \"title\")",
  authors: (
    (
      name: "titlepage(authors: ((name: \"name\")))",
      affiliation: "titlepage(authors: ((affiliation: \"affiliation\")))",
      email: "titlepage(authors: ((email: \"email\")))",
    ),
    (
      name: "titlepage(authors: ((name: \"name\")))",
      affiliation: "titlepage(authors: ((affiliation: \"affiliation\")))",
      email: "titlepage(authors: ((email: \"email\")))",
    ),
  ),
  course: "titlepage(course: \"course\")",
  lecture: "titlepage(lecture: \"lecture\")",
  semester: "titlepage(semester: \"semester\")",
  group: "titlepage(group: \"group\")",
  date: "titlepage(date: \"date\")",
) = {
  set text(size: 20pt)
  set page(
    header: none,
    footer: none,
    columns: 1,
    fill: none,
  )

  grid(
    columns: 100%,
    rows: auto,
    gutter: 1fr,
    align: center + horizon,

    grid.cell(
      align: right + top,
      image(width: 5cm, "hfu-logo.png")
    ),
    course,
    lecture,
    [Semester: #semester],
    title,
    [Group No.: #group],
    for author in authors [
      #author.name (Matr. No.: #author.affiliation)\
    ],
    date,
    [],
  )
  pagebreak(weak: true)
}

#let outline-contents() = {
  show outline.entry.where(
    level: 1
  ): it => {
    v(12pt, weak: true)
    strong(it)
  }

  outline(
    depth: 3,
    indent: auto,
  )

  pagebreak(weak: true)
}

#let conf(
  title: "Title",
  authors: (),
  group: 0,
  course: "Studycourse",
  semester: 0,
  lecture: "Lecture",
  date: date,
  titlepage: titlepage-lange,
  doc
) = {

  set page(
    paper: "a4",
    flipped: false,
    margin: auto,
    columns: 1,
    header: none,
    footer: none,
    number-align: center,
  )

  set text(
    font: "New Computer Modern",
    size: 11pt,
  )

  set heading(
    numbering: "1."
  )

  show raw: set text(font: "New Computer Modern Mono")
  show raw.where(block: false): box.with(
    fill: luma(240),
    inset: (x: 3pt, y: 0pt),
    outset: (y: 3pt),
    radius: 2pt,
  )
  show raw.where(block: true): block.with(
    width: 100%,
    fill: luma(240),
    inset: 1em,
    radius: 4pt,
  )

  titlepage(
    title: title,
    authors: authors,
    group: group,
    course: course,
    semester: semester,
    lecture: lecture,
    date: date,
  )

  outline-contents()

  set par(
    leading: 0.55em,
    first-line-indent: 1.8em,
    justify: true,
  )

  doc
}

#show: doc => conf(
  title: [Layout Demonstration],
  authors: (
    (
      name: "Pascal Guttmann",
      affiliation: "275358",
      email: "hfu@pascal-guttmann.de",
    ),
    (
      name: "Pascal Guttmann",
      affiliation: "275358",
      email: "hfu@pascal-guttmann.de",
    ),
  ),
  group: -1,
  course: "Smart Systems",
  lecture: "Optical Systems Laboratory",
  semester: -1,
  date: date,
  doc,
)

= Introduction

#lorem(500)

= First Heading

#lorem(50)

#lorem(50)

```bash
git commit -m "my msg" # commit
```

There are also inline code blocks: `inline`.

== FS Heading
#lorem(200)

=== third level heading
==== fourth level
==== fourth level second time
== SS Heading
#lorem(150)

= Second Heading
#lorem(50)

