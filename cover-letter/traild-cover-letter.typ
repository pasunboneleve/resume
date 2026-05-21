#import "../master.typ": title-content

#let body-font = ("Garamond Libre", "Libertinus Serif", "TeX Gyre Pagella")
#let accent-fill = rgb("#555")
#let muted-fill = rgb("#555")
#let resume-date = datetime.today().display()
#let blog-url = "https://boneleve.blog?utm_source=cover-letter&utm_medium=pdf&utm_campaign=traild-senior-software-engineer&utm_content=blog-icon&utm_term=" + resume-date

#set document(
  title: "Daniel Vianna - Traild - Senior Software Engineer Cover Letter",
  author: "Daniel Vianna",
  date: auto,
)

#set page(
  paper: "a4",
  margin: (x: 48pt, y: 52pt),
  numbering: none,
)

#set text(
  font: body-font,
  size: 10.5pt,
  hyphenate: false,
)

#set par(
  justify: true,
  leading: 0.62em,
)

#show link: it => underline(stroke: luma(80%), text(fill: navy)[#it])

#let contact-icon(path, url) = link(url)[
  #image(path, width: 10pt)
]

#let contact-icons() = grid(
  columns: (10pt, 10pt, 10pt),
  gutter: 4pt,
  contact-icon("../assets/github.svg", "https://github.com/pasunboneleve"),
  contact-icon("../assets/linkedin.svg", "https://www.linkedin.com/in/dmvianna/"),
  contact-icon("../assets/web.svg", blog-url),
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

#grid(
  columns: (1fr, auto),
  gutter: 24pt,
  align(left + top)[
    #title-content(
      "Daniel Vianna",
      "Software and Data Engineer",
      title-size: 31pt,
      subtitle-size: 9.5pt,
      subtitle-fill: muted-fill,
    )
  ],
  align(right + top)[#contact-stack],
)

#place(center + horizon)[
  #align(left)[#block(width: 395pt)[
    Dear Traild team:

    #v(8pt)

    I'm interested in Traild because the role matches my strongest work: building cloud SaaS products that reduce operational risk, automate routine work, improve observability, and stay close to real business workflows.

    At PaidRight, I improved ingestion, testability, observability, and delivery workflows for a GCP payroll compliance platform. At Daisee, I helped move a distributed AWS voice analytics platform from per-customer deployments to a multi-tenant architecture, lifting monthly change volume from about 10 to more than 300, increasing deployments from 4-8 to 50, and cutting AWS infrastructure cost by 70%. At Bunnings, I automated safety incident reporting, replacing manual report assembly with a live dashboard that let users inspect the incidents behind each number.

    That same product-engineering thread attracts me to Traild: software that removes routine work, makes risk visible, and helps operational teams act with confidence. I bring senior engineering breadth across Python, SQL, TypeScript, Haskell, GCP, AWS, Kubernetes, Terraform, CI/CD, OpenTelemetry, and distributed systems. I also bring the judgment to turn messy operational systems into clear technical pathways, mentor engineers, and make teams faster without weakening control.

    #v(18pt)

    Regards,

    #v(14pt)

    Daniel
  ]]
]
