#let title-content(
  author,
  subtitle,
  title-size: 36pt,
  subtitle-size: 10pt,
  subtitle-fill: luma(45%),
) = [
  #text(size: title-size)[#author]
  #v(-25pt)
  #text(size: subtitle-size, weight: "regular", fill: subtitle-fill)[#subtitle]
  #v(6pt)
]

#let page-grid(
  doc,
  author: "Daniel Vianna",
  subtitle: "Systems translator and operational optimiser",
  contact: none,
  skills: none,
  projects: none,
  education: none,
  sidebar-font: "Open Sans",
  sidebar-size: 10pt,
  title-size: 36pt,
  subtitle-size: 10pt,
  muted-fill: luma(45%),
  grid-gutter: 14pt,
  sidebar-column: 1fr,
) = context {
  grid(
    columns: (1fr, 1fr, sidebar-column),
    gutter: grid-gutter,
    grid.cell(colspan: 2)[
      #title-content(
        author,
        subtitle,
        title-size: title-size,
        subtitle-size: subtitle-size,
        subtitle-fill: muted-fill,
      )
      #doc
    ],
    grid.cell(x: 2)[
      #set text(font: sidebar-font, size: sidebar-size)
      #set par(justify: false, leading: 0.52em)
      #contact
      #skills
      #colbreak()
      #projects
      #colbreak()
      #education
    ],
  )
}

#let conf(
  author: "Daniel Vianna",
  subtitle: "Systems translator and operational optimiser",
  contact: none,
  skills: none,
  projects: none,
  education: none,
  text-font: "Open Sans",
  sans-font: "Open Sans",
  sidebar-font: none,
  body-size: 10pt,
  sidebar-size: 10pt,
  grid-gutter: 14pt,
  title-size: 36pt,
  subtitle-size: 10pt,
  section-title-size: 10pt,
  role-size: 10pt,
  date-size: 8pt,
  sidebar-column: 1fr,
  accent-fill: blue,
  muted-fill: luma(45%),
  role-fill: luma(5%),
  date-fill: luma(20%),
  page-fill: white,
  header-fill: none,
  doc,
) = {
  let after-level-one = state("after-level-one", false)
  let actual-sidebar-font = if sidebar-font == none { text-font } else { sidebar-font }
  let actual-header-fill = if header-fill == none { black } else { header-fill }

  set page(
    paper: "a4",
    fill: page-fill,
    header: context {
      if counter(page).get().first() > 1 {
        align(right, text(fill: actual-header-fill)[#author])
      }
    },
    footer: context {
      align(center, text(fill: actual-header-fill)[#counter(page).display("1")])
    },
    numbering: none,
  )
  set text(
    font: text-font,
    size: body-size,
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
    font: sans-font,
    size: section-title-size,
    weight: "bold",
    fill: accent-fill,
  )
  show heading.where(level: 1): it => {
    after-level-one.update(true)
    pad(top: 20pt, it)
  }

  show par: it => {
    after-level-one.update(false)
    it
  }

  show heading.where(level: 2): set text(size: 11pt)
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
            size: role-size,
            fill: role-fill,
            child,
          ),
        )
      } else {
        styled-children.push(child)
      }
    }
    styled-children.join()
  }
  show heading.where(level: 2): it => context {
    let top = if after-level-one.get() { -8pt } else { 10pt }
    after-level-one.update(false)
    pad(top: top, it)
  }

  show heading.where(level: 4): set text(
    font: text-font,
    size: date-size,
    weight: "extralight",
    fill: date-fill,
  )
  show heading.where(level: 4): it => pad(top: -10pt, bottom: 10pt, it)

  show link: it => underline(stroke: luma(80%), text(fill: navy)[#it])

  page-grid(
    doc,
    author: author,
    subtitle: subtitle,
    contact: contact,
    skills: skills,
    projects: projects,
    education: education,
    sidebar-font: actual-sidebar-font,
    sidebar-size: sidebar-size,
    grid-gutter: grid-gutter,
    title-size: title-size,
    subtitle-size: subtitle-size,
    muted-fill: muted-fill,
    sidebar-column: sidebar-column,
  )
}
