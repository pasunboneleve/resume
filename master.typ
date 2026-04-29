#let row-marker(index) = label("page-grid-row-" + str(index))

#let row-page(index) = {
  let marker = row-marker(index)
  let hits = query(marker)

  if hits.len() > 0 {
    hits.first().location().page()
  } else {
    1
  }
}

#let row-span(index) = {
  let page = row-page(index)

  if page == 1 {
    2
  } else {
    3
  }
}

#let content-rows(doc) = {
  let children = if doc.has("children") {
    doc.children
  } else {
    (doc,)
  }
  let rows = ()
  let row = ()

  for child in children {
    if child.func() == parbreak {
      if row.len() > 0 {
        rows.push(row.join())
        row = ()
      }
    } else {
      row.push(child)
    }
  }

  if row.len() > 0 {
    rows.push(row.join())
  }

  rows
}

#let title-content(author) = [
  #text(size: 36pt)[#author]
]

#let aside-width = (100% - 28pt) / 3

#let aside-offset = aside-width * 2 + 28pt

#let page-grid(doc, author: "Daniel Vianna", contact: none) = context {
  place(top + left, dx: aside-offset)[
    #box(width: aside-width)[
      #set text(font: "Open Sans", size: 10pt)
      #set par(justify: false, leading: 0.52em)
      #contact
    ]
  ]

  let cells = (
    grid.cell(x: 0, colspan: 2)[
      #title-content(author)
    ],
  )

  for (index, row) in content-rows(doc).enumerate() {
    cells.push(
      grid.cell(x: 0, colspan: row-span(index))[
        #metadata(none) #row-marker(index)
        #row
      ],
    )
  }

  grid(
    columns: (1fr, 1fr, 1fr),
    gutter: 14pt,
    ..cells,
  )
}

#let conf(
  author: "Daniel Vianna",
  contact: none,
  text-font: "Libertinus Serif",
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
    size: 11pt,
    weight: "extralight",
    fill: blue,
  )
  show heading.where(level: 1): smallcaps
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

  show link: it => underline(text(fill: navy)[#it])

  page-grid(doc, author: author, contact: contact)
}
