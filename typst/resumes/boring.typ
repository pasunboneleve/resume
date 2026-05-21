#import "../layouts/master.typ": conf

#let body-font = "Open Sans"
#let sans-font = "Open Sans"
#let accent-fill = blue
#let muted-fill = luma(45%)

#let section-title(body) = block[
  #text(
    font: sans-font,
    size: 10pt,
    weight: "bold",
    fill: accent-fill,
    body,
  )
]

#let skill-label(body) = box(strong(body))

#let subtitle = "Senior Data Engineer"
#let utm-campaign = "senior-data-engineer"
#let resume-date = datetime.today().display()
#let blog-url = "https://boneleve.blog?utm_source=resume&utm_medium=pdf&utm_campaign=" + utm-campaign + "&utm_content=blog-icon&utm_term=" + resume-date

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

#show: doc => conf(
  subtitle: subtitle,
  text-font: body-font,
  sans-font: sans-font,
  accent-fill: accent-fill,
  muted-fill: muted-fill,
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
    #text(fill: muted-fill)[
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

Software engineer focused on systems that are easier to evolve, observe, and maintain.

I reverse engineer existing systems, expose stable primitives through APIs, and connect them into composable workflows. My work helps businesses onboard more customers while reducing cost, latency, and operational risk.

I adapt quickly, document what I learn, build tested data pipelines from ingestion to frontend, and share technical knowledge respectfully across teams.

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

PaidRight built a payroll compliance platform that compared payroll data with enterprise agreements to identify underpayment and overpayment.

- Deployed Airbyte to Kubernetes so customer payroll data could be ingested directly from external SaaS APIs instead of manual CSV uploads.

- Introduced OpenTelemetry to the frontend codebase, exposing performance bottlenecks and supporting page-load improvements of up to 50 times.

- Split a Nix flake monolith into independently deployable database, web server, Spark, and frontend components, reducing CI/CD build and test cycles.

- Decoupled Spark workflow code from its cloud runtime and added local mocks, making cloud behaviour testable before deployment and greatly reducing shipped workflow bugs.

== Daisee — Lead Software Engineer
==== Apr 2021 - Oct 2022 | Remote (AWS)

Daisee built voice analytics software that turned call-centre audio into searchable transcripts, agent scores, and structured conversation themes.

- Reverse engineered Lisa, the flagship application, to support a redesign of its infrastructure for scale, CI, and continuous delivery.

- Helped move Lisa from per-customer deployments to a multi-tenant platform while decoupling services from infrastructure; monthly change volume rose from about 10 to over 300, deployments rose from 4-8 to 50, and AWS costs fell 70%.

- Built abstractions that let the Data Science team ship Python algorithms directly to production without Engineering reimplementation, reducing handoff friction and preserving model behaviour.

== AusNet Services — Operations and Analytics Engineer
==== Jul 2018 - Mar 2021 | Melbourne

AusNet Services distributes electricity to a third of Victorian premises and runs the metering, analytics, and operational systems used to monitor network health.

- Authored the algorithm AusNet used to estimate how much solar electricity each residential customer could safely generate.

- Built the algorithm and microservice that detected customers generating more electricity than allowed, helping operational teams prioritise investigation.

- Delivered dashboards for customer, local, regional, and network-wide views, combining geolocation, tables, and aggregate charts with client-side updates for better performance.

== Victorian Centre for Data Insights — Senior Data Analyst
==== Jul 2017 - Jun 2018 | Melbourne

VCDI was created to help the Victorian government make data-driven decisions through analytics, dashboards, design sprints, and long-running cross-department projects.

- Built the first version of an internal executive dashboard, identifying relevant data sources with stakeholders, performing ETL, and designing the Tableau output.

- Helped the Victorian Cladding Taskforce identify buildings that may have had external flammable cladding by standardising addresses, deduplicating records, optimising million-row joins, and producing the published estimate of 1,400 buildings.

- Supported the analytics team as it grew by setting up Docker-based data science tooling and mentoring junior analysts in test-driven development, version control, and reproducible workflows.

== Bunnings — Data Analyst
==== Jun 2013 - Jul 2017 | Melbourne

Bunnings held HR, safety, payroll, and training data in systems that did not interoperate, often forcing analysts into manual downloads and Excel workflows.

- Rebuilt recurring workforce, payroll, training, and safety reporting around PostgreSQL, SQL, Python, and Jupyter notebooks, producing formatted Excel outputs from reproducible code.

- Built a Node/Angular safety dashboard with live month-to-date incident counts, comparisons with prior periods, divisional drilldowns, and clickable detail dialogs for every count.

- Created reusable reporting libraries and workflows for Learning & Development, reducing repeated manual work and making current database data available directly to reports.

- Supported safety deep dives with auditable Python workflows that combined SQL, data transformations, investigative plots, and formatted outputs for leadership decisions.

== Royal Australian College of GPs — Data Analyst
==== Sep 2011 - Jun 2013 | Melbourne

The RACGP certifies Australian general practitioners and uses member data to support professional development, publications, and annual renewal activity.

- Segmented the member base for Marketing and Membership, helping publication editors tailor content to relevant GP audiences.

- Analysed professional-development career paths across members and non-members, revealing GP populations missing from regular reporting and marketing activity.

- Expanded campaign target discovery by rewriting preparation queries, improving data quality before mailouts and reducing manual transfer work through direct SQL automation.

- Developed visualisations in R and MapInfo, including population pyramids, GIS maps, and multidimensional views of membership data.
