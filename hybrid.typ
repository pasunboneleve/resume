#import "master.typ": conf

#let body-font = ("Garamond Libre", "Libertinus Serif", "TeX Gyre Pagella")
#let sans-font = body-font
#let accent-fill = rgb("#555")
#let muted-fill = rgb("#555")

#let section-title(body) = block[
  #text(
    font: sans-font,
    size: 10pt,
    weight: "regular",
    fill: accent-fill,
    tracking: 0.1em,
    upper(body),
  )
]

#let skill-label(body) = box(strong(body))

#let subtitle = "Software and Data Engineer"
#let utm-campaign = "software-and-data-engineer"
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
  text-font: body-font,
  sans-font: sans-font,
  body-size: 9.5pt,
  sidebar-size: 9.5pt,
  title-size: 31pt,
  subtitle-size: 9.5pt,
  section-title-size: 10pt,
  role-size: 9.5pt,
  grid-gutter: 12pt,
  sidebar-column: 0.82fr,
  accent-fill: accent-fill,
  muted-fill: muted-fill,
  role-fill: muted-fill,
  date-fill: muted-fill,
  header-fill: accent-fill,
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
      #set par(justify: false)
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

    == #link("https://github.com/pasunboneleve/oiticica-style")[oiticica-style] — Codex writing skills from José Oiticica

    Most writing advice is too broad for agents to apply consistently. Oiticica-style turns José Oiticica’s Manual of Style into focused Codex skills with rules, examples, and evals for diagnosing concrete prose faults.

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

I make complex systems easier to change, test, and operate.

I work across product discovery, data pipelines, platform architecture, and application code, usually where business workflows and technical systems have grown tangled. I map the real process, find the stable boundaries, and turn them into tested services, faster feedback loops, and clearer operational signals.

My strongest work sits at the intersection of software engineering, data engineering, and stakeholder translation: replacing manual workflows, reducing cloud and delivery costs, improving observability, and helping teams make better technical decisions from messy constraints.

#set pad(bottom: 10pt)
= CORE COMPETENCIES

#text(size: 10pt)[
- *Systems Discovery & Process Mapping* – tracing workflows, data lineage, ownership, and hidden constraints.
- *Software & Data Engineering* – Python, SQL, TypeScript, Spark, APIs, data pipelines, and application code.
- *Platform & Delivery Engineering* – CI/CD, Kubernetes, cloud services, local validation, faster feedback loops.
- *Observability & Reliability* – OpenTelemetry, tracing, metrics, bottleneck diagnosis, operational confidence.
- *Stakeholder Translation* – turning business needs, feasibility gaps, and technical constraints into delivery choices.
- *Cost & Workflow Reduction* – replacing manual processes, reducing cloud spend, and removing repeated toil.
]

= PROFESSIONAL EXPERIENCE

== PaidRight — Senior Data Engineer (Platform Engineering)

==== Nov 2022 - Oct 2025 | Remote (GCP)

PaidRight runs a GCP SaaS platform that compares payroll data with enterprise agreements to identify underpayments and overpayments at scale.

- The Scala/Spark payroll model could not be tested before deployment. I separated the model from its cloud runtime, added mocks for inputs and expected outputs, and gave engineers a local Spark path for testing before release.

- Customer CSV data was still uploaded by customer staff or sales. I deployed Airbyte to Kubernetes with Helm, giving non-technical staff a low-code path to configure SaaS ingestion and remove routine manual uploads.

- A single Nix flake wrapped database, web server, Spark, and frontend work into one slow build path. I split it into independently deployable components, cutting build and test feedback from tens of minutes to 2-5 minutes.

- The React frontend and React Router server were slow, but the team lacked request-level evidence. I instrumented both with OpenTelemetry and sent traces to Honeycomb, exposing the bottlenecks behind page-load regressions.

== Daisee — Lead Software Engineer
==== Apr 2021 - Oct 2022 | Remote (AWS)

Daisee runs an AWS SaaS voice analytics platform that turns call-centre audio into searchable transcripts, agent scores, and structured conversation themes.

- The voice analytics pipeline was tightly coupled to its database model, blocking product changes. I reverse engineered Lisa, documented the dependency graph, and gave the team a concrete basis for redesigning its infrastructure.

- A single PostgreSQL instance handled transformation and presentation, so each ingestion run degraded the frontend. We moved raw data to S3, passed work through SQS-backed microservices, and kept presentation data in separate PostgreSQL stores, separating processing load from the user interface.

- Each customer had an independent deployment, making version control and deployment governance brittle. We moved Lisa to a multi-tenant PostgreSQL architecture with row-level security; monthly change volume rose from about 10 to over 300, deployments rose from 4-8 to 50, and AWS costs fell from about AUD \$16k/month to \$4.5k/month.

- Data Science wrote tokenisers and embedding algorithms in Python/NumPy, then Engineering reimplemented them in Haskell or Python, creating mismatches no team owned cleanly. I built an API that ran Data Science code in production as pure functions, preserving model behaviour and removing the reimplementation handoff.

- I mentored five graduate engineers through test watch loops, minimal fixtures, and reviewable pull requests, helping them become independent contributors without lowering the team's delivery standard.

== AusNet Services — Operations and Analytics Engineer
==== Jul 2018 - Mar 2021 | Melbourne

AusNet distributes electricity to over one million Victorian premises and operates large-scale metering and network data systems (> 1 Petabyte).

- Engineers needed to know how much solar generation each substation could safely absorb. I built a Python/scikit-learn regression model that predicted transformer voltage from customer solar generation, then surfaced it in an Oracle, PHP, Python, MapBox, and AngularJS application used to set local grid limits.

- Inverted meter polarity could make consuming customers look like generators and earn credits instead of charges. I wrote a Python algorithm that recognised solar generation by its daily curve shape and flagged net-generating customers whose profiles did not look solar.

- Daily substation voltage estimates moved too abruptly for planning. I used pandas to build a sliding-window smoothing algorithm that weighted recent estimates more heavily, giving engineers a steadier signal for prioritising network work.

== Victorian Centre for Data Insights — Senior Data Analyst
==== Jul 2017 - Jun 2018 | Melbourne

VCDI was an internal data consultancy for the Victorian Department of Premier and Cabinet.

- The Victorian Cladding Taskforce needed a defensible list of buildings with possible external flammable cladding. I used G-NAF, regex, and join optimisation to normalise addresses and deduplicate records; the final estimate fell from 8,000 buildings to 1,400, avoiding \$130M-\$230M+ in government and contractor expenditure.

- Government projects often arrived with clear goals but unresolved feasibility, data access, or governance constraints. I mapped data lineage across internal teams, vendors, and inaccessible systems so stakeholders could choose whether to change scope, change delivery path, or stop.

- As the analytics team grew, junior analysts needed repeatable engineering habits. I mentored them in Git, pytest, behave, Docker-based tooling, and modular code, improving reproducibility across shared analysis work.

== Bunnings — Data Analyst
==== Jun 2013 - Jul 2017 | Melbourne

Bunnings is a major home improvement and hardware retailer across Australia and New Zealand.

- The National Safety team needed end-of-month incident counts accurate to the minute, but the workflow depended on Excel downloads, pivots, and manual late edits. I built an AngularJS and Sails.js dashboard with live counts, period comparisons, divisional drilldowns, and detail dialogs for each count.

- The National Learning & Development team used VBA scripts and monthly Excel files to match staff with training needs. I moved the workflow to Python and Jupyter notebooks backed by database queries, making reports reproducible and current at run time.

- Bunnings needed to compare forklift models by safety, not raw incident counts. I worked with vendors to acquire odometer readings, normalised incidents by actual usage, and showed the more complex model did not improve safety enough to justify ~\$15-20M in capital and rollout costs.

== Royal Australian College of GPs — Data Analyst
==== Sep 2011 - Jun 2013 | Melbourne

The RACGP is Australia's main certification body for general practitioners.

- The RACGP needed clearer member segments for programs and publications. I queried MS SQL Server data and identified membership gaps among women of childbearing age and older practitioners of both genders, guiding the editorial focus of later publications.

- Annual membership renewal depended on mailouts to known GP practices and practitioners. I rewrote the preparation queries, broadened target discovery, and used R/ggplot2 to visualise newly found populations that previous reporting had missed.

- Call operators copied member data manually between systems before mailouts. I automated transfers with direct SQL queries and validated data with Python/pandas, reducing manual entry and catching errors before campaign lists were sent.
