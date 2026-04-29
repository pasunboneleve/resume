#let conf(
  author: "Daniel Vianna",
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

  show title: set text(size: 36pt)
  show heading.where(level: 1): set text(
    font: "Open Sans",
    size: 11pt,
    weight: "extralight",
    fill: blue,
  )
  show heading.where(level: 1): smallcaps

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

  show heading.where(level: 4): set text(
    font: "Open Sans",
    size: 8pt,
    weight: "extralight",
    fill: luma(20%),
  )

  show link: it => underline(text(fill: navy)[#it])

  title()
  doc
}
