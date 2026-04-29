#let title-content(author) = [
  #text(size: 36pt)[#author]
]

#let page-grid(
  doc,
  author: "Daniel Vianna",
  contact: none,
  projects: none,
) = context {
  grid(
    columns: (1fr, 1fr, 1fr),
    gutter: 14pt,
    grid.cell(colspan: 2)[
      #title-content(author)
      #doc
    ],
    grid.cell(x: 2)[
      #set text(font: "Open Sans", size: 10pt)
      #set par(justify: false, leading: 0.52em)
      #contact
      #projects
    ],
  )
}

#let conf(
  author: "Daniel Vianna",
  contact: none,
  projects: none,
  text-font: "Open Sans",
  doc,
) = {
  set page(
    paper: "a4",
    header: context {
      if counter(page).get().first() > 1 {
        align(right, author)
      }
    },
    numbering: "1",
  )
  set text(
    font: text-font,
    hyphenate: false,
  )
  set par(
    justify: true,
    leading: 0.52em,
  )
  set document(
    title: author,
    author: author,
    date: auto,
  )
  set heading(
    bookmarked: true,
  )

  show heading.where(level: 1): set text(
    font: "Open Sans",
    size: 10pt,
    weight: "bold",
    fill: blue,
  )
  show heading.where(level: 1): it => pad(top: 20pt, it)

  show heading.where(level: 2): it => {
    if not it.body.has("children") { return it }

    let styled-children = ()
    let found-dash = false

    for child in it.body.children {
      if (
        not found-dash and child.has("text") and child.text.starts-with("—")
      ) {
        found-dash = true
      }

      if found-dash {
        styled-children.push(
          text(
            style: "italic",
            size: 12pt,
            fill: luma(5%),
            child,
          ),
        )
      } else {
        styled-children.push(child)
      }
    }
    styled-children.join()
  }
  show heading.where(level: 2): it => pad(top: 10pt, it)

  show heading.where(level: 4): set text(
    font: "Open Sans",
    size: 8pt,
    weight: "extralight",
    fill: luma(20%),
  )
  show heading.where(level: 4): it => pad(top: -2pt, bottom: 10pt, it)

  show link: it => underline(stroke: luma(80%), text(fill: navy)[#it])

  page-grid(doc, author: author, contact: contact, projects: projects)
}
