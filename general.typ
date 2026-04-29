#import "master.typ": conf

#show: conf

=== Systems translator and operational optimiser

#set pad(bottom: 10pt)
= SUMMARY

I make messy systems legible, evolvable, and cheaper to change.

I reverse engineer technical and operational workflows, expose hidden constraints, and redesign systems to reduce friction, accelerate feedback, and improve adaptability.

My work combines discovery, stakeholder translation, and hands-on systems design to create scalable pathways that enable teams to operate more effectively.

#set pad(bottom: 10pt)
= CORE COMPETENCIES

- *Systems Discovery & Process Mapping* – reverse engineering workflows, surfacing hidden constraints.
- *Product & Stakeholder Translation* – translating business needs into practical technical pathways.
- *Workflow & Operational Optimisation* – reducing friction, improving throughput, scaling delivery.
- *Platform & Systems Design* – reusable systems, service boundaries, maintainable architectures.
- *Delivery Acceleration* – CI/CD, local validation, faster iteration.
- *Observability & Reliability* – operational visibility, measurable system confidence.

= PROFESSIONAL EXPERIENCE

== PaidRight — Senior Data Engineer (Platform Engineering)

==== Nov 2022 - Oct 2025 | Remote (GCP)

PaidRight is a SaaS platform (GCP) identifying payroll compliance issues through large-scale data processing.

- PayPrecision could not be tested before deployment. I decoupled its core model and created mocks providing test inputs and expected outputs. Engineers could test locally before deploying.

- Customer data had to be uploaded manually by their staff or our sales people. I added an off-the-shelf low-code ingestion solution that could be configured by non technical staff. Automated ingestion became possible.

- The web frontend was slow and buggy. I added OpenTelemetry to the frontend’s client and server. This observability made it possible to pinpoint the performance bottlenecks in the code and fix them.

== Daisee — Lead Software Engineer
==== Apr 2021 - Oct 2022 | Remote (AWS)

Daisee is a SaaS voice analytics platform processing large volumes of audio data into structured insights.

- Lisa was tightly coupled to its database model, hampering product evolution. I reverse engineered and documented its implementation. This empowered the team to understand the limitations of the current product and devise solutions.

- Lisa deployments were done independently for each customer. We moved Lisa to a multi-tenant platform while decoupling services from the infrastructure. Monthly iteration rate went from ~10 code changes to over 300; from 4-8 deployments to 50; AWS infrastructure bill was reduced 70%.

- Data Science algorithms were reimplemented by Engineering, creating a responsibility gap when outcomes didn’t match expectations. I created an API for Data Science so their implementation would run in production without Engineering interference. Friction between these teams ceased to be a problem.

== AusNet Services — Operations and Analytics Engineer
==== Jul 2018 - Mar 2021 | Melbourne

AusNet distributes electricity to over one million Victorian premises, operating large-scale metering and network data systems (> 1 Petabyte).

- Engineers needed to know how much solar generation could each substation (transformer) sustain safely. I devised a regression algorithm that predicted voltage at the substation in response to known solar generation by customers. Engineers used the resulting app to define how much solar generation could be permitted to be installed in each substation’s local grid.

- Customers could be rewarded instead of charged for their electrical consumption by inverting the polarity of their meters. I designed an algorithm that identified solar generation by its signature curve shape over a day. The algorithm was used to flag non-solar looking net-generating customers for further investigation.

- Estimated voltage at substation can vary abruptly each day, making prioritisation difficult. I designed a sliding window smoothing algorithm that privileged recent estimates over older ones. This made estimates change slowly over time, giving engineers a more stable signal on which to prioritise their work.

== Victorian Centre for Data Insights — Senior Data Analyst
==== Jul 2017 - Jun 2018 | Melbourne

VCDI was designed as an internal consultancy for the Victorian state government. It existed under the Department of Premier and Cabinet.

- The Victorian Cladding Taskforce needed to identify buildings that had been built with external flammable cladding. I normalised street addresses and deduplicated datasets. 1,400 buildings were identified, less than the original 8,000 estimate, leading to $130M–$230M+ avoided government and contractor expenditure.

- Projects were clear on goals and vision but unclear on feasibility and implementation. I identified governance and implementation gaps early in conversations. This empowered stakeholders to make informed decisions.

- The analytics grew quickly with junior hires. I mentored new hires on the use of version control, automated tests and modularising code. This improved code quality and reproducibility.

== Bunnings — Data Analyst
==== Jun 2013 - Jul 2017 | Melbourne

Bunnings is a major home improvement and hardware retail with presence in Australia and New Zealand.

- The National Safety team needed to report on incident counts correct to the minute each end of month. I replaced the original Excel download-pivot-add latest incidents by hand workflow with a web dashboard, where clicking on each count opened a modal with a list of incidents and their respective details. Reports were accurate with less heroics, and the safety managers could focus less on numbers and more on story and policy.

- The National Learning & Development team used VBA scripts and monthly Excel reports to match staff with their training needs. I moved that workflow to Jupyter notebooks & Python, speeding up delivery, improving code reusability and making it possible to use the latest data directly from databases.
Bunnings needed to compare different forklift models on their relative safety.

- I worked with external vendors to acquire odometer readings so incident counts could be normalised against actual forklift usage. The more complex forklift model was shown to not differ in safety outcomes to the cheaper ones, preventing unnecessary ~\$15-20M capital and rollout costs.

== Royal Australian College of GPs — Data Analyst
==== Sep 2011 - Jun 2013 | Melbourne

The RACGP is the main certification body in Australia for General Practitioners.

- The RACGP needed to understand its member base in order to create relevant programs and content. I surfaced statistical data from its database, identifying membership gaps among fertile age women and older medical practitioners of both genders. That insight guided the ensuing editorial focus of its publications.

- RACGP membership is renewed annually through mail sent to known GP practices and practitioners. I broadened the discovery of targets by rewriting the queries used in the data preparation. I discovered large numbers of targets that were formerly ignored.

- Call operators made most of the member’s data entry, often copying it from one system to another manually. I automated the data transfers via direct SQL queries, skipping GUIs. Data was validated and corrected before mailouts were made, improving correctness and reducing toil.

= PROJECTS

== #link("https://github.com/pasunboneleve/devloop")[devloop] — Local development orchestrator (Rust)


Developer workflows rely on many disconnected tools, but orchestration between them is sparse. Devloop is a config-driven CLI that coordinates processes, propagates state, and automates routine development workflows so developers can focus on building rather than orchestration.

== #link("https://github.com/pasunboneleve/dress-rehearsal")[dress-rehearsal] — Infrastructure validation harness (Rust)


Infrastructure is often deployed iteratively but rarely validated through full creation-to-destruction lifecycles. Dress-rehearsal automates deploy → verify → destroy workflows using isolated state, preserving logs and reducing production risk before release.

== cloud service delivery templates — #link("https://github.com/pasunboneleve/aws-service-delivery-template")[AWS] & #link("https://github.com/pasunboneleve/gcp-service-delivery-template")[GCP]


Service delivery patterns are often repeated across projects. These reusable AWS and GCP templates standardise infrastructure, CI/CD, and deployment workflows, accelerating project startup while reducing boilerplate and operational inconsistency.

= EDUCATION

PhD, Neuroscience | University of São Paulo

MSc, Neuroscience | University of São Paulo

BPsych, Psychology | University of São Paulo
