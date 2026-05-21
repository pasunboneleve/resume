#import "../layouts/master.typ": title-content

#let body-font = ("Garamond Libre", "Libertinus Serif", "TeX Gyre Pagella")
#let muted-fill = rgb("#555")
#let rule-fill = luma(78%)
#let resume-date = datetime.today().display()
#let blog-url = "https://boneleve.blog?utm_source=publications&utm_medium=pdf&utm_campaign=academic-publications&utm_content=blog-icon&utm_term=" + resume-date

#set document(
  title: "Daniel Vianna - Publications",
  author: "Daniel Vianna",
  date: auto,
)

#set page(
  paper: "a4",
  margin: (x: 44pt, y: 44pt),
  numbering: none,
)

#set text(
  font: body-font,
  size: 8.5pt,
  hyphenate: false,
)

#set par(
  justify: true,
  leading: 0.5em,
)

#show link: it => underline(stroke: luma(80%), text(fill: navy)[#it])
#show bibliography: none

#let contact-icon(path, url) = link(url)[
  #image(path, width: 10pt)
]

#let contact-icons() = grid(
  columns: (10pt, 10pt, 10pt),
  gutter: 4pt,
  contact-icon("../../assets/github.svg", "https://github.com/pasunboneleve"),
  contact-icon("../../assets/linkedin.svg", "https://www.linkedin.com/in/dmvianna/"),
  contact-icon("../../assets/web.svg", blog-url),
)

#let contact-stack = [
  #set par(justify: false, leading: 0.46em)
  #text(size: 9.5pt, fill: muted-fill)[
    #link("tel:+61406733384")[0406 733 384] \
    #link("mailto:dmlvianna@gmail.com")[#text("dmlvianna@gmail.com")] \
    #v(4pt)
    #align(right)[#contact-icons()]
  ]
]

#let section-title(body) = [
  #v(9pt)
  #text(size: 10pt, weight: "regular", fill: muted-fill, tracking: 0.08em)[#upper(body)]
  #v(1pt)
  #line(length: 100%, stroke: 0.45pt + rule-fill)
  #v(3pt)
]

#let pub(key) = [
  #par(
    justify: true,
    leading: 0.48em,
    hanging-indent: 14pt,
  )[#cite(label(key), form: "full")]
  #v(2.5pt)
]

#grid(
  columns: (1fr, auto),
  gutter: 24pt,
  align(left + top)[
    #title-content(
      "Daniel Vianna",
    "Peer-Reviewed Publications",
      title-size: 31pt,
      subtitle-size: 9.5pt,
      subtitle-fill: muted-fill,
    )
  ],
  align(right + top)[#contact-stack],
)

#section-title[MSc Work]

#pub("vianna2001defensive")

#pub("vianna2001dorsolateral")

#section-title[PhD Work]

#pub("vianna2003anatomical")

#pub("vianna2003fos")

#pub("vianna2001lesion")

#section-title[Postdoctoral Research (UNSW)]

#pub("choi2005expression")

#pub("furlong2009hypocretin")

#pub("marks2009nonshivering")

#pub("vianna2008cardiovascular")

#pub("vianna2005cutaneous")

#pub("vianna2009inhibition")

#pub("vianna2010cardiovascular")

#pub("vianna2012hyperthermia")

#section-title[Book Chapter]

#pub("vianna2012visualisation")

#bibliography("../../references/publications.bib", title: none, style: "apa")
