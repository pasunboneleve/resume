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

#let pub(authors, title, venue, year, details, url) = [
  #set par(justify: true, leading: 0.48em)
  #text(authors). #link(url)[#text(title)]. #emph[#text(venue)]. #text(year). #text(details)
  #v(2.5pt)
]

#grid(
  columns: (1fr, auto),
  gutter: 24pt,
  align(left + top)[
    #title-content(
      "Daniel Vianna",
      "Selected Publications",
      title-size: 31pt,
      subtitle-size: 9.5pt,
      subtitle-fill: muted-fill,
    )
  ],
  align(right + top)[#contact-stack],
)

#v(14pt)

#block(width: 420pt)[
  #text(size: 9pt, fill: muted-fill)[
    Selected academic publications from MSc, PhD, and UNSW research work. Kept separate from the resume for roles where scientific training, experimental methods, or peer-reviewed writing are useful.
  ]
]

#section-title[MSc Work]

#pub(
  "Vianna DM, Landeira-Fernandez J, Brandao ML",
  "Dorsolateral and ventral regions of the periaqueductal gray matter are involved in distinct types of fear",
  "Neuroscience and Biobehavioral Reviews",
  "2001",
  "25(7-8):711-719. PMID: 11801296. DOI: 10.1016/s0149-7634(01)00052-5.",
  "https://pubmed.ncbi.nlm.nih.gov/11801296/",
)

#pub(
  "Vianna DM, Graeff FG, Brandao ML, Landeira-Fernandez J",
  "Defensive freezing evoked by electrical stimulation of the periaqueductal gray: comparison between dorsolateral and ventrolateral regions",
  "Neuroreport",
  "2001",
  "12(18):4109-4112. PMID: 11742247. DOI: 10.1097/00001756-200112210-00049.",
  "https://pubmed.ncbi.nlm.nih.gov/11742247/",
)

#section-title[PhD Work]

#pub(
  "Vianna DM, Graeff FG, Landeira-Fernandez J, Brandao ML",
  "Lesion of the ventral periaqueductal gray reduces conditioned fear but does not change freezing induced by stimulation of the dorsal periaqueductal gray",
  "Learning & Memory",
  "2001",
  "8(3):164-169. PMID: 11390636. DOI: 10.1101/lm.36101.",
  "https://pubmed.ncbi.nlm.nih.gov/11390636/",
)

#pub(
  "Vianna DM, Brandao ML",
  "Anatomical connections of the periaqueductal gray: specific neural substrates for different kinds of fear",
  "Brazilian Journal of Medical and Biological Research",
  "2003",
  "36(5):557-566. PMID: 12715074. DOI: 10.1590/s0100-879x2003000500002.",
  "https://pubmed.ncbi.nlm.nih.gov/12715074/",
)

#pub(
  "Vianna DM, Borelli KG, Ferreira-Netto C, Macedo CE, Brandao ML",
  "Fos-like immunoreactive neurons following electrical stimulation of the dorsal periaqueductal gray at freezing and escape thresholds",
  "Brain Research Bulletin",
  "2003",
  "62(3):179-189. PMID: 14698351. DOI: 10.1016/j.brainresbull.2003.09.010.",
  "https://pubmed.ncbi.nlm.nih.gov/14698351/",
)

#section-title[UNSW Work]

#pub(
  "Vianna DM, Carrive P",
  "Changes in cutaneous and body temperature during and after conditioned fear to context in the rat",
  "The European Journal of Neuroscience",
  "2005",
  "21(9):2505-2512. PMID: 15932607. DOI: 10.1111/j.1460-9568.2005.04073.x.",
  "https://pubmed.ncbi.nlm.nih.gov/15932607/",
)

#pub(
  "Choi EA, Leman S, Vianna DM, Waite PM, Carrive P",
  "Expression of cardiovascular and behavioural components of conditioned fear to context in T4 spinally transected rats",
  "Autonomic Neuroscience: Basic & Clinical",
  "2005",
  "120(1-2):26-34. PMID: 15996622. DOI: 10.1016/j.autneu.2004.08.014.",
  "https://pubmed.ncbi.nlm.nih.gov/15996622/",
)

#pub(
  "Vianna DM, Allen C, Carrive P",
  "Cardiovascular and behavioral responses to conditioned fear after medullary raphe neuronal blockade",
  "Neuroscience",
  "2008",
  "153(4):1344-1353. PMID: 18440153. DOI: 10.1016/j.neuroscience.2008.03.033.",
  "https://pubmed.ncbi.nlm.nih.gov/18440153/",
)

#pub(
  "Marks A, Vianna DM, Carrive P",
  "Nonshivering thermogenesis without interscapular brown adipose tissue involvement during conditioned fear in the rat",
  "American Journal of Physiology. Regulatory, Integrative and Comparative Physiology",
  "2009",
  "296(4):R1239-R1247. PMID: 19211724. DOI: 10.1152/ajpregu.90723.2008.",
  "https://pubmed.ncbi.nlm.nih.gov/19211724/",
)

#pub(
  "Vianna DM, Carrive P",
  "Inhibition of the cardiovascular response to stress by systemic 5-HT1A activation: sympathoinhibition or anxiolysis?",
  "American Journal of Physiology. Regulatory, Integrative and Comparative Physiology",
  "2009",
  "297(2):R495-R501. PMID: 19515984. DOI: 10.1152/ajpregu.00232.2009.",
  "https://pubmed.ncbi.nlm.nih.gov/19515984/",
)

#pub(
  "Furlong TM, Vianna DM, Liu L, Carrive P",
  "Hypocretin/orexin contributes to the expression of some but not all forms of stress and arousal",
  "The European Journal of Neuroscience",
  "2009",
  "30(8):1603-1614. PMID: 19811530. DOI: 10.1111/j.1460-9568.2009.06952.x.",
  "https://pubmed.ncbi.nlm.nih.gov/19811530/",
)

#pub(
  "Vianna DM, Carrive P",
  "Cardiovascular and behavioural responses to conditioned fear and restraint are not affected by retrograde lesions of A5 and C1 bulbospinal neurons",
  "Neuroscience",
  "2010",
  "166(4):1210-1218. PMID: 20109540. DOI: 10.1016/j.neuroscience.2010.01.039.",
  "https://pubmed.ncbi.nlm.nih.gov/20109540/",
)

#section-title[Book Chapter]

#pub(
  "Vianna DML, Carrive P",
  "Visualisation of Thermal Changes in Freely Moving Animals",
  "Visualization Techniques: From Immunohistochemistry to Magnetic Resonance Imaging",
  "2012",
  "Neuromethods, vol. 70. Pages 269-281. DOI: 10.1007/978-1-61779-897-9.",
  "https://link.springer.com/book/10.1007/978-1-61779-897-9",
)
