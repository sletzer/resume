// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Sean Letzer",
  title: "Sean Letzer - CV",
  footer: context { [#emph[Sean Letzer -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated in May 2026] ],
  locale-catalog-language: "en",
  text-direction: ltr,
  page-size: "us-letter",
  page-top-margin: 0.7in,
  page-bottom-margin: 0.7in,
  page-left-margin: 0.7in,
  page-right-margin: 0.7in,
  page-show-footer: false,
  page-show-top-note: false,
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(0, 79, 144),
  colors-headline: rgb(0, 79, 144),
  colors-connections: rgb(0, 79, 144),
  colors-section-titles: rgb(0, 79, 144),
  colors-links: rgb(0, 79, 144),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.6em,
  typography-alignment: "justified",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "Source Sans 3",
  typography-font-family-name: "Source Sans 3",
  typography-font-family-headline: "Source Sans 3",
  typography-font-family-connections: "Source Sans 3",
  typography-font-family-section-titles: "Source Sans 3",
  typography-font-size-body: 10pt,
  typography-font-size-name: 30pt,
  typography-font-size-headline: 10pt,
  typography-font-size-connections: 10pt,
  typography-font-size-section-titles: 1.4em,
  typography-small-caps-name: false,
  typography-small-caps-headline: false,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: false,
  typography-bold-name: true,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: true,
  links-underline: false,
  links-show-external-link-icon: false,
  header-alignment: center,
  header-photo-width: 3.5cm,
  header-space-below-name: 0.7cm,
  header-space-below-headline: 0.7cm,
  header-space-below-connections: 0.7cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: true,
  header-connections-display-urls-instead-of-usernames: false,
  header-connections-separator: "",
  header-connections-space-between-connections: 0.5cm,
  section-titles-type: "with_partial_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.5cm,
  section-titles-space-below: 0.3cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.3em,
  sections-space-between-regular-entries: 1.2em,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0.2cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: false,
  entries-short-second-row: true,
  entries-degree-width: 1cm,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0cm,
  entries-highlights-bullet:  "•" ,
  entries-highlights-nested-bullet:  "•" ,
  entries-highlights-space-left: 0.15cm,
  entries-highlights-space-above: 0cm,
  entries-highlights-space-between-items: 0cm,
  entries-highlights-space-between-bullet-and-text: 0.5em,
  date: datetime(
    year: 2026,
    month: 5,
    day: 28,
  ),
)


#grid(
  columns: (auto, 1fr),
  column-gutter: 0cm,
  align: horizon + left,
  [#pad(left: 0.4cm, right: 0.4cm, image("profile_picture.jpg", width: 3.5cm))
],
  [
= Sean Letzer

  #headline([Software Engineer])

#connections(
  [#link("mailto:seanletzer@gmail.com", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[seanletzer\@gmail.com]]],
  [#link("tel:+1-818-224-9948", icon: false, if-underline: false, if-color: false)[#connection-with-icon("phone")[(818) 224-9948]]],
  [#connection-with-icon("location-dot")[Los Angeles, CA, USA]],
  [#link("https://linkedin.com/in/sletzer", icon: false, if-underline: false, if-color: false)[#connection-with-icon("linkedin")[sletzer]]],
  [#link("https://github.com/sletzer", icon: false, if-underline: false, if-color: false)[#connection-with-icon("github")[sletzer]]],
)
  ]
)


== Objective

Looking to bring my expertise in embedded systems alongside a fluid mix of soft skills and technical skills to a team that values collaboration and innovation.

== Experience

#regular-entry(
  [
    #strong[Fisica], Senior Software Engineer

    - Maintained and optimized the core embedded software codebase for a #strong[Battery Management System (BMS)].

    - Achieved 100\% MC\/DC coverage using #strong[Parasoft], advancing the BMS codebase towards #strong[DO-178C DAL-A] (SW-CI 1) compliance.

    - Designed and deployed DevOps infrastructure using #strong[Docker Compose] and Infrastructure-as-Code (IaC) best practices, self-hosting #strong[GitLab], #strong[Parasoft DTP], #strong[Nginx] (reverse proxy), and Go-links.

  ],
  [
    Simi Valley, CA, USA

    Nov 2025 – present

    

    7 months

  ],
)

#regular-entry(
  [
    #strong[Canoga Perkins], Software Engineering Manager

    - Led a team of 4 Embedded Software Engineers (1:1 meetings, code reviews, mentoring) in a team called #strong[Diagnostics].

    - Led SCRUM ceremonies (Daily Standups, Sprint Planning, Sprint Retrospectives).

    - Created user stories, epics, and tasks that aligned with the product roadmap.

    - Worked with Product Management to define the product roadmap and prioritize features.

    - Created career development plans for team members.

    - Created software architecture documents for new features.

  ],
  [
    Chatsworth, CA, USA

    Apr 2023 – May 2025

    

    2 years 2 months

  ],
)

#regular-entry(
  [
    #strong[Google], Customer and Partner Engineer

    - Understand product area partner\/Original Equipment Manufacturer (OEM) use-cases, distilling them into product requirements and implementation.

    - Support enablement of third-party labs for automated and manual device certifications.

    - Define experiences that realize requirements and build the necessary pieces working with key platforms and partner devices.

    - Identify opportunities to improve scaled solutions to more device categories.

    - Drive technical execution of strategic partner relationships within Google and launch third-party products.

    - Support partners in product feature definition, implementation, pre-test, and production.

    - Support partners to develop and customize features.

    - Work with product area Engineering sub-teams to get features built and implemented.

    - Support SoC partners, bring up, and development.

    - Assist System Integrators, Original Design Manufacturers (ODMs), and Distributors in scaling products.

  ],
  [
    Playa Vista, CA, USA

    Oct 2022 – Mar 2023

    

    6 months

  ],
)

#regular-entry(
  [
    #strong[Canoga Perkins], Software Engineer

    - Developed\/maintained an application that ran on a Time-Sensitive Network Switch written in C.

    - Developed a Linux device driver for a custom FPGA image on the Time-Sensitive Network Switch.

    - Created\/customized a Linux distribution via Yocto that was the main embedded-OS that ran on the Time-Sensitive Network Switch.

    - Created DevOps pipelines for said projects using Gitlab's CI\/CD framework written in YAML.

  ],
  [
    Chatsworth, CA, USA

    Apr 2020 – Sept 2022

    

    2 years 6 months

  ],
)

#regular-entry(
  [
    #strong[Panasonic Avionics Inc], MTS 2 Software Engineer

    - Developed\/Maintained a File Delivery application written in C\/C++ that was responsible for pushing a large file-set over a Multicast UDP stream to hundreds of seat-back monitors of the InFlight Entertainment System.

    - Developed\/Maintained a loading application in C++\/QT for use by Field Engineers to load initial software set to the plane in a factory-fresh state.

    - Dockerized build environments for said apps and integrated them into Gitlab CI pipeline.

  ],
  [
    Lake Forest, CA, USA

    Mar 2016 – Oct 2019

    

    3 years 8 months

  ],
)

== Skills

#strong[Programming Languages (Proficient):] C\/C++, Java, Python, Bash

#strong[Programming Languages (Familiar):] Expect Script\/TCL, Python, QML\/QT, YAML

#strong[Databases:] MySQL, Sqlite3, Redis

#strong[Platforms & OS:] Linux, Android, Docker, Yocto

#strong[Debugging & Network Analysis:] GDB, Valgrind, Tcpdump, Wireshark

#strong[Web Technologies:] Java EE, Apache Tomcat, Spring, JSP, JDBC, RESTful

#strong[Source Control:] Git, SVN, Gitlab

#strong[Static Analysis & Code Review:] Codebear Collaborator, Klockwork, Coverity, Parasoft

#strong[Security:] SELINUX, TLS, Linux PAM Module

#strong[Toolchains:] GCC, Crosstool-ng, Buildroot, Yocto

== Education

#education-entry(
  [
    #strong[University Of California, Irvine], Computer Science

  ],
  [
    June 2016

  ],
  degree-column: [
    #strong[B.S.]
  ],
)
