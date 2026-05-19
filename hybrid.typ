#import "master.typ": conf

#let section-title(body) = block[
  #text(
    font: "Open Sans",
    size: 10pt,
    weight: "bold",
    fill: blue,
    body,
  )
]

#let skill-label(body) = box(strong(body))

#let subtitle = "Systems translator and operational optimiser"
#let utm-campaign = "systems-translator-operational-optimiser"
#let resume-date = datetime.today().display()
#let blog-url = "https://boneleve.blog?utm_source=resume&utm_medium=pdf&utm_campaign=" + utm-campaign + "&utm_content=blog-icon&utm_term=" + resume-date

#let contact-icon(path, url) = link(url)[
  #image(path, width: 10pt)
]

#let contact-icons() = grid(
  columns: (10pt, 10pt, 10pt),
  gutter: 4pt,
  contact-icon("assets/github.svg", "https://github.com/pasunboneleve"),
  contact-icon("assets/linkedin.svg", "https://www.linkedin.com/in/dmvianna/"),
  contact-icon("assets/web.svg", blog-url),
)

#show: doc => conf(
  subtitle: subtitle,
  contact: [
    Mentone, Vic 3194 \
    #link("tel:+61406733384")[#strong[0406 733 384]] \
    #link("mailto:dmlvianna@gmail.com")[#strong[#text("dmlvianna@gmail.com")]] \
    #contact-icons()
  ],
  skills: [
    #v(20pt)
    #section-title[TECHNICAL SKILLS]

    #v(8pt)
    #text(fill: luma(45%))[
      #set par(justify: true)
      #skill-label[Languages:] Python (Expert), SQL (Expert), Scala, TypeScript, Haskell, Bash.

      #skill-label[Developer Experience:] CI/CD design, local testing workflows, service boundary design.

      #skill-label[Cloud & Infrastructure:] GCP (GKE, Cloud Run, BigQuery, Pub/Sub), AWS (S3, SQS, Lambda, RDS), Kubernetes.

      #skill-label[Infrastructure as Code:] Terraform, Helm, Docker.

      #skill-label[Observability:] OpenTelemetry, Prometheus, Honeycomb, metrics and distributed tracing.

      #skill-label[CI/CD & Automation:] GitHub Actions, Google Cloud Build, GitOps workflows.

      #skill-label[Practices:] TDD, Idempotency, Testable Architecture.

      #skill-label[Product & Delivery:] Stakeholder~discovery, workflow mapping, operational process design, experimentation support.

      #skill-label[Data Engineering:] Spark, BigQuery, Airbyte, orchestration workflows, ingestion pipelines, ETL/ELT.
    ]
  ],
  projects: [
    #section-title[PROJECTS]

    == #link("https://github.com/pasunboneleve/devloop")[devloop] — Local development orchestrator (Rust)

    Developer workflows rely on many disconnected tools, but orchestration between them is sparse. Devloop is a config‑driven CLI that coordinates processes, propagates state, and automates routine development workflows so developers can focus on building rather than orchestration.

    == #link("https://github.com/pasunboneleve/dress-rehearsal")[dress‑rehearsal] — Infrastructure validation harness (Rust)

    Infrastructure is often deployed iteratively but rarely validated through full creation‑to‑destruction lifecycles. Dress‑rehearsal automates deploy → verify → destroy workflows using isolated state, preserving logs and reducing production risk before release.

    == cloud service delivery templates — #link("https://github.com/pasunboneleve/aws-service-delivery-template")[AWS] & #link("https://github.com/pasunboneleve/gcp-service-delivery-template")[GCP]

    Service delivery patterns are often repeated across projects. These reusable AWS and GCP templates standardise infrastructure, CI/CD, and deployment workflows, accelerating project startup while reducing boilerplate and operational inconsistency.
  ],
  education: [
    #section-title[EDUCATION]

    #strong[PhD, Neuroscience] University~of~São~Paulo

    #strong[MSc, Neuroscience] University~of~São~Paulo

    #strong[BPsych, Psychology] Pontifícia Universidade Católica do Rio de Janeiro
  ],
  doc,
)

#set pad(bottom: 10pt)
= SUMMARY

I make messy systems legible, evolvable, and cheaper to change.

I reverse engineer technical and operational workflows, expose hidden constraints, and redesign systems to reduce friction, accelerate feedback, and improve adaptability.

My work combines discovery, stakeholder translation, and hands‑on systems design to create scalable pathways that enable teams to operate more effectively.

#set pad(bottom: 10pt)
= CORE COMPETENCIES

#text(size: 10pt)[
- *Systems Discovery & Process Mapping* – reverse engineering workflows, surfacing hidden constraints.
- *Product & Stakeholder Translation* – translating business needs into practical technical pathways.
- *Workflow & Operational Optimisation* – reducing friction, improving throughput, scaling delivery.
- *Platform & Systems Design* – reusable systems, service boundaries, maintainable architectures.
- *Delivery Acceleration* – CI/CD, local validation, faster iteration.
- *Observability & Reliability* – operational visibility, measurable system confidence.
]

= PROFESSIONAL EXPERIENCE

== PaidRight — Senior Data Engineer (Platform Engineering)

==== Nov 2022 - Oct 2025 | Remote (GCP)

PaidRight is a SaaS platform (GCP) identifying payroll compliance issues through large‑scale data processing.

- Our Scala/Spark model could not be tested before deployment. I decoupled its core and created mocks providing test inputs and expected outputs. Engineers could test with a local Spark instance before deploying.

- Customer CSV data had to be uploaded manually by their staff or our sales people. I added the Airbyte Helm package to our Kubernetes cluster, an off‑the‑shelf low‑code ingestion solution that could be configured by non technical staff. Automated ingestion became possible.

- The web frontend was slow and buggy. I added OpenTelemetry to the frontend’s client (React) and server (React Router), with Honeycomb as the visualisation and storage layer. This observability made it possible to pinpoint the performance bottlenecks in the code and fix them.

== Daisee — Lead Software Engineer
==== Apr 2021 - Oct 2022 | Remote (AWS)

Daisee is a SaaS voice analytics platform processing large volumes of audio data into structured insights.

- The voice analytics pipeline was tightly coupled to its database model, hampering product evolution. I reverse engineered and documented its implementation. This empowered the team to understand the limitations of the current product and devise solutions.

- Data transformation and presentation was done in a single PostgreSQL instance, degrading frontend performance every time data was ingested and processed. We replaced that infrastructure with S3 buckets for raw data, SQS queues for message passing between microservices and independent PostgreSQL instances to hold per-customer configuration and presentation layers. This decoupled processing from presentation, making the frontend snappy.

- Platform deployments were done independently for each customer, making version control and deployment governance difficult. We moved it to a multi‑tenant architecture, using row-level security (PostgreSQL) to maintain customer separation. Monthly iteration rate went from ~10 code changes to over 300; from 4‑8 deployments to 50; AWS infrastructure bill was reduced 70%.

- Tokenisers and embeddings algorithms (Python/Numpy) were reimplemented by Engineering (Haskell/Python), creating a responsibility gap when outcomes didn’t match expectations. I created an API for Data Science so their implementation would run in production as pure functions, without Engineering interference. Friction between these teams ceased to be a problem.

== AusNet Services — Operations and Analytics Engineer
==== Jul 2018 - Mar 2021 | Melbourne

AusNet distributes electricity to over one million Victorian premises, operating large‑scale metering and network data systems (> 1 Petabyte).

- Engineers needed to know how much solar generation could each substation (transformer) sustain safely. I devised a regression algorithm (scikit-learn, Python) that predicted voltage at the substation in response to known solar generation by customers. Engineers used the fullstack app (Oracle, PHP, Python, MapBox, AngularJS) to define how much solar generation could be permitted to be installed in each substation’s local grid.

- Customers could be rewarded instead of charged for their electrical consumption by inverting the polarity of their meters. I designed an algorithm that identified solar generation by its signature curve shape over a day. The algorithm was used to flag non‑solar looking net‑generating customers for further investigation.

- Estimated voltage at substation can vary abruptly each day, making prioritisation difficult. I designed a sliding window smoothing algorithm (pandas, Python) that privileged recent estimates over older ones. This made estimates change slowly over time, giving engineers a more stable signal on which to prioritise their work.

== Victorian Centre for Data Insights — Senior Data Analyst
==== Jul 2017 - Jun 2018 | Melbourne

VCDI was designed as an internal consultancy for the Victorian state government. It existed under the Department of Premier and Cabinet.

- The Victorian Cladding Taskforce needed to identify buildings that had been built with external flammable cladding. I normalised street addresses and deduplicated datasets using the G-NAF dataset and regex. 1,400 buildings were identified, less than the original 8,000 estimate, leading to $130M–$230M+ avoided government and contractor expenditure.

- Projects were clear on goals and vision but unclear on feasibility and implementation. I identified governance and implementation gaps early in conversations. This empowered stakeholders to make informed decisions.

- The analytics grew quickly with junior hires. I mentored new hires on the use of version control (git), automated tests (pytest, behave) and modularising code. This improved code quality and reproducibility.

== Bunnings — Data Analyst
==== Jun 2013 - Jul 2017 | Melbourne

Bunnings is a major home improvement and hardware retail with presence in Australia and New Zealand.

- The National Safety team needed to report on incident counts correct to the minute each end of month. I replaced the original Excel download‑pivot‑add latest incidents by hand workflow with a web dashboard (AngularJS, Sails.js), where clicking on each count opened a modal with a list of incidents and their respective details. Reports were accurate with less heroics, and the safety managers could focus less on numbers and more on story and policy.

- The National Learning & Development team used VBA scripts and monthly Excel reports to match staff with their training needs. I moved that workflow to Jupyter notebooks & Python, speeding up delivery, improving code reusability and making it possible to use the latest data directly from databases.

- Bunnings needed to compare different forklift models on their relative safety. I worked with external vendors to acquire odometer readings so incident counts could be normalised against actual forklift usage. The more complex forklift model was shown to not differ in safety outcomes to the cheaper ones, preventing unnecessary ~\$15‑20M capital and rollout costs.

== Royal Australian College of GPs — Data Analyst
==== Sep 2011 - Jun 2013 | Melbourne

The RACGP is the main certification body in Australia for General Practitioners.

- The RACGP needed to understand its member base in order to create relevant programs and content. I surfaced statistical data from its database (MS SQL Server), identifying membership gaps among fertile age women and older medical practitioners of both genders. That insight guided the ensuing editorial focus of its publications.

- RACGP membership is renewed annually through mail sent to known GP practices and practitioners. I broadened the discovery of targets by rewriting the queries used in the data preparation. I discovered large numbers of targets that were formerly ignored (R/ggplot2).

- Call operators made most of the member’s data entry, often copying it from one system to another manually. I automated the data transfers via direct SQL queries, skipping GUIs. Data was validated and corrected (Python/Pandas) before mailouts were made, improving correctness and reducing toil.
