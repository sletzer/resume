
#import "@preview/fontawesome:0.5.0": fa-icon

#let name = "Sean Letzer"
#let locale-catalog-page-numbering-style = context { "Sean Letzer - Page " + str(here().page()) + " of " + str(counter(page).final().first()) + "" }
#let locale-catalog-last-updated-date-style = "Last updated in June 2025"
#let locale-catalog-language = "en"
#let design-page-size = "us-letter"
#let design-section-titles-font-size = 1.4em
#let design-colors-text = rgb(0, 0, 0)
#let design-colors-section-titles = rgb(0, 79, 144)
#let design-colors-last-updated-date-and-page-numbering = rgb(128, 128, 128)
#let design-colors-name = rgb(0, 79, 144)
#let design-colors-connections = rgb(0, 79, 144)
#let design-colors-links = rgb(0, 79, 144)
#let design-section-titles-font-family = "Source Sans 3"
#let design-section-titles-bold = true
#let design-section-titles-line-thickness = 0.5pt
#let design-section-titles-font-size = 1.4em
#let design-section-titles-type = "with-parial-line"
#let design-section-titles-vertical-space-above = 0.5cm
#let design-section-titles-vertical-space-below = 0.3cm
#let design-section-titles-small-caps = false
#let design-links-use-external-link-icon = true
#let design-text-font-size = 10pt
#let design-text-leading = 0.6em
#let design-text-font-family = "Source Sans 3"
#let design-text-alignment = "justified"
#let design-text-date-and-location-column-alignment = right
#let design-header-photo-width = 3.5cm
#let design-header-use-icons-for-connections = true
#let design-header-name-font-family = "Source Sans 3"
#let design-header-name-font-size = 30pt
#let design-header-name-bold = true
#let design-header-connections-font-family = "Source Sans 3"
#let design-header-vertical-space-between-name-and-connections = 0.7cm
#let design-header-vertical-space-between-connections-and-first-section = 0.7cm
#let design-header-use-icons-for-connections = true
#let design-header-horizontal-space-between-connections = 0.5cm
#let design-header-separator-between-connections = ""
#let design-header-alignment = center
#let design-highlights-summary-left-margin = 0cm
#let design-highlights-bullet = "•"
#let design-highlights-top-margin = 0.25cm
#let design-highlights-left-margin = 0.4cm
#let design-highlights-vertical-space-between-highlights = 0.25cm
#let design-highlights-horizontal-space-between-bullet-and-highlights = 0.5em
#let design-entries-vertical-space-between-entries = 1.2em
#let design-entries-date-and-location-width = 4.15cm
#let design-entries-allow-page-break-in-entries = true
#let design-entries-horizontal-space-between-columns = 0.1cm
#let design-entries-left-and-right-margin = 0.2cm
#let design-page-top-margin = 2cm
#let design-page-bottom-margin = 2cm
#let design-page-left-margin = 2cm
#let design-page-right-margin = 2cm
#let design-page-show-last-updated-date = true
#let design-page-show-page-numbering = true
#let design-links-underline = false
#let design-entry-types-education-entry-degree-column-width = 1cm
#let date = datetime.today()

// Metadata:
#set document(author: name, title: name + "'s CV", date: date)

// Page settings:
#set page(
  margin: (
    top: design-page-top-margin,
    bottom: design-page-bottom-margin,
    left: design-page-left-margin,
    right: design-page-right-margin,
  ),
  paper: design-page-size,
  footer: if design-page-show-page-numbering {
    text(
      fill: design-colors-last-updated-date-and-page-numbering,
      align(center, [_#locale-catalog-page-numbering-style _]),
      size: 0.9em,
    )
  } else {
    none
  },
  footer-descent: 0% - 0.3em + design-page-bottom-margin / 2,
)
// Text settings:
#let justify
#let hyphenate
#if design-text-alignment == "justified" {
  justify = true
  hyphenate = true
} else if design-text-alignment == "left" {
  justify = false
  hyphenate = false
} else if design-text-alignment == "justified-with-no-hyphenation" {
  justify = true
  hyphenate = false
}
#set text(
  font: design-text-font-family,
  size: design-text-font-size,
  lang: locale-catalog-language,
  hyphenate: hyphenate,
  fill: design-colors-text,
  // Disable ligatures for better ATS compatibility:
  ligatures: true,
)
#set par(
  spacing: 0pt,
  leading: design-text-leading,
  justify: justify,
)
#set enum(
  spacing: design-entries-vertical-space-between-entries,
)

// Highlights settings:
#let highlights(..content) = {
  list(
    ..content,
    marker: design-highlights-bullet,
    spacing: design-highlights-vertical-space-between-highlights,
    indent: design-highlights-left-margin,
    body-indent: design-highlights-horizontal-space-between-bullet-and-highlights,
  )
}
#show list: set list(
  marker: design-highlights-bullet,
  spacing: 0pt,
  indent: 0pt,
  body-indent: design-highlights-horizontal-space-between-bullet-and-highlights,
)

// Entry utilities:
#let three-col(
  left-column-width: 1fr,
  middle-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  middle-content: "",
  right-content: "",
  alignments: (auto, auto, auto),
) = [
  #block(
    grid(
      columns: (left-column-width, middle-column-width, right-column-width),
      column-gutter: design-entries-horizontal-space-between-columns,
      align: alignments,
      ([#set par(spacing: design-text-leading); #left-content]),
      ([#set par(spacing: design-text-leading); #middle-content]),
      ([#set par(spacing: design-text-leading); #right-content]),
    ),
    breakable: true,
    width: 100%,
  )
]

#let two-col(
  left-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  right-content: "",
  alignments: (auto, auto),
  column-gutter: design-entries-horizontal-space-between-columns,
) = [
  #block(
    grid(
      columns: (left-column-width, right-column-width),
      column-gutter: column-gutter,
      align: alignments,
      ([#set par(spacing: design-text-leading); #left-content]),
      ([#set par(spacing: design-text-leading); #right-content]),
    ),
    breakable: true,
    width: 100%,
  )
]

// Main heading settings:
#let header-font-weight
#if design-header-name-bold {
  header-font-weight = 700
} else {
  header-font-weight = 400
}
#show heading.where(level: 1): it => [
  #set par(spacing: 0pt)
  #set align(design-header-alignment)
  #set text(
    font: design-header-name-font-family,
    weight: header-font-weight,
    size: design-header-name-font-size,
    fill: design-colors-name,
  )
  #it.body
  // Vertical space after the name
  #v(design-header-vertical-space-between-name-and-connections)
]

#let section-title-font-weight
#if design-section-titles-bold {
  section-title-font-weight = 700
} else {
  section-title-font-weight = 400
}

#show heading.where(level: 2): it => [
  #set align(left)
  #set text(size: (1em / 1.2)) // reset
  #set text(
    font: design-section-titles-font-family,
    size: (design-section-titles-font-size),
    weight: section-title-font-weight,
    fill: design-colors-section-titles,
  )
  #let section-title = (
    if design-section-titles-small-caps [
      #smallcaps(it.body)
    ] else [
      #it.body
    ]
  )
  // Vertical space above the section title
  #v(design-section-titles-vertical-space-above, weak: true)
  #block(
    breakable: false,
    width: 100%,
    [
      #if design-section-titles-type == "moderncv" [
        #two-col(
          alignments: (right, left),
          left-column-width: design-entries-date-and-location-width,
          right-column-width: 1fr,
          left-content: [
            #align(horizon, box(width: 1fr, height: design-section-titles-line-thickness, fill: design-colors-section-titles))
          ],
          right-content: [
            #section-title
          ]
        )

      ] else [
        #box(
          [
            #section-title
            #if design-section-titles-type == "with-parial-line" [
              #box(width: 1fr, height: design-section-titles-line-thickness, fill: design-colors-section-titles)
            ] else if design-section-titles-type == "with-full-line" [

              #v(design-text-font-size * 0.4)
              #box(width: 1fr, height: design-section-titles-line-thickness, fill: design-colors-section-titles)
            ]
          ]
        )
      ]
     ] + v(1em),
  )
  #v(-1em)
  // Vertical space after the section title
  #v(design-section-titles-vertical-space-below - 0.5em)
]

// Links:
#let original-link = link
#let link(url, body) = {
  body = [#if design-links-underline [#underline(body)] else [#body]]
  body = [#if design-links-use-external-link-icon [#body#h(design-text-font-size/4)#box(
        fa-icon("external-link", size: 0.7em),
        baseline: -10%,
      )] else [#body]]
  body = [#set text(fill: design-colors-links);#body]
  original-link(url, body)
}

// Last updated date text:
#if design-page-show-last-updated-date {
  let dx
  if design-section-titles-type == "moderncv" {
    dx = 0cm
  } else {
    dx = -design-entries-left-and-right-margin
  }
  place(
    top + right,
    dy: -design-page-top-margin / 2,
    dx: dx,
    text(
      [_#locale-catalog-last-updated-date-style _],
      fill: design-colors-last-updated-date-and-page-numbering,
      size: 0.9em,
    ),
  )
}

#let connections(connections-list) = context {
  set text(fill: design-colors-connections, font: design-header-connections-font-family)
  set par(leading: design-text-leading*1.7, justify: false)
  let list-of-connections = ()
  let separator = (
    h(design-header-horizontal-space-between-connections / 2, weak: true)
      + design-header-separator-between-connections
      + h(design-header-horizontal-space-between-connections / 2, weak: true)
  )
  let starting-index = 0
  while (starting-index < connections-list.len()) {
    let left-sum-right-margin
    if type(page.margin) == "dictionary" {
      left-sum-right-margin = page.margin.left + page.margin.right
    } else {
      left-sum-right-margin = page.margin * 4
    }

    let ending-index = starting-index + 1
    while (
      measure(connections-list.slice(starting-index, ending-index).join(separator)).width
        < page.width - left-sum-right-margin - design-header-photo-width * 1.1
    ) {
      ending-index = ending-index + 1
      if ending-index > connections-list.len() {
        break
      }
    }
    if ending-index > connections-list.len() {
      ending-index = connections-list.len()
    }
    list-of-connections.push(connections-list.slice(starting-index, ending-index).join(separator))
    starting-index = ending-index
  }
  align(list-of-connections.join(linebreak()), design-header-alignment)
  v(design-header-vertical-space-between-connections-and-first-section - design-section-titles-vertical-space-above)
}

#let three-col-entry(
  left-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  middle-content: "",
  right-content: "",
  alignments: (left, auto, right),
) = (
  if design-section-titles-type == "moderncv" [
    #three-col(
      left-column-width: right-column-width,
      middle-column-width: left-column-width,
      right-column-width: 1fr,
      left-content: right-content,
      middle-content: [
        #block(
          [
            #left-content
          ],
          inset: (
            left: design-entries-left-and-right-margin,
            right: design-entries-left-and-right-margin,
          ),
          breakable: design-entries-allow-page-break-in-entries,
          width: 100%,
        )
      ],
      right-content: middle-content,
      alignments: (design-text-date-and-location-column-alignment, left, auto),
    )
  ] else [
    #block(
      [
        #three-col(
          left-column-width: left-column-width,
          right-column-width: right-column-width,
          left-content: left-content,
          middle-content: middle-content,
          right-content: right-content,
          alignments: alignments,
        )
      ],
      inset: (
        left: design-entries-left-and-right-margin,
        right: design-entries-left-and-right-margin,
      ),
      breakable: design-entries-allow-page-break-in-entries,
      width: 100%,
    )
  ]
)

#let two-col-entry(
  left-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  right-content: "",
  alignments: (auto, design-text-date-and-location-column-alignment),
  column-gutter: design-entries-horizontal-space-between-columns,
) = (
  if design-section-titles-type == "moderncv" [
    #two-col(
      left-column-width: right-column-width,
      right-column-width: left-column-width,
      left-content: right-content,
      right-content: [
        #block(
          [
            #left-content
          ],
          inset: (
            left: design-entries-left-and-right-margin,
            right: design-entries-left-and-right-margin,
          ),
          breakable: design-entries-allow-page-break-in-entries,
          width: 100%,
        )
      ],
      alignments: (design-text-date-and-location-column-alignment, auto),
    )
  ] else [
    #block(
      [
        #two-col(
          left-column-width: left-column-width,
          right-column-width: right-column-width,
          left-content: left-content,
          right-content: right-content,
          alignments: alignments,
        )
      ],
      inset: (
        left: design-entries-left-and-right-margin,
        right: design-entries-left-and-right-margin,
      ),
      breakable: design-entries-allow-page-break-in-entries,
      width: 100%,
    )
  ]
)

#let one-col-entry(content: "") = [
  #let left-space = design-entries-left-and-right-margin
  #if design-section-titles-type == "moderncv" [
    #(left-space = left-space + design-entries-date-and-location-width + design-entries-horizontal-space-between-columns)
  ]
  #block(
    [#set par(spacing: design-text-leading); #content],
    breakable: design-entries-allow-page-break-in-entries,
    inset: (
      left: left-space,
      right: design-entries-left-and-right-margin,
    ),
    width: 100%,
  )
]

#two-col(
  left-column-width: design-header-photo-width * 1.1,
  right-column-width: 1fr,
  left-content: [
    #align(
      left + horizon,
      image("profile_picture.jpg", width: design-header-photo-width),
    )
  ],
  column-gutter: 0cm,
  right-content: [
= Sean Letzer

// Print connections:
#let connections-list = (
  [#fa-icon("location-dot", size: 0.9em) #h(0.05cm)Los Angeles, CA, USA],
  [#box(original-link("mailto:seanletzer@gmail.com")[#fa-icon("envelope", size: 0.9em) #h(0.05cm)seanletzer\@gmail.com])],
  [#box(original-link("tel:+1-818-224-9948")[#fa-icon("phone", size: 0.9em) #h(0.05cm)\(818\) 224-9948])],
  [#box(original-link("https://www.linkedin.com/in/sletzer")[#fa-icon("link", size: 0.9em) #h(0.05cm)www.linkedin.com\/in\/sletzer])],
  [#box(original-link("https://linkedin.com/in/sletzer")[#fa-icon("linkedin", size: 0.9em) #h(0.05cm)sletzer])],
  [#box(original-link("https://github.com/sletzer")[#fa-icon("github", size: 0.9em) #h(0.05cm)sletzer])],
)
#connections(connections-list)

  ],
)


== Objective


#one-col-entry(
  content: [Looking to bring my expertise in embedded systems alongside a fluid mix of soft skills and technical skills to a team that values collaboration and innovation.]
)


== Experience


#two-col-entry(
  left-content: [
    #strong[Canoga Perkins], Software Engineering Manager
    #v(-design-text-leading)

    #v(design-highlights-top-margin);#highlights([Led a team of 4 Embedded Software Engineers \(1:1 meetings, code reviews, mentoring\) in a team called #strong[Diagnostics].],[Led SCRUM ceremonies \(Daily Standups, Sprint Planning, Sprint Retrospectives\).],[Created user stories, epics, and tasks that aligned with the product roadmap.],[Worked with Product Management to define the product roadmap and prioritize features.],[Created career development plans for team members.],[Created software architecture documents for new features.],)
  ],
  right-content: [
    Chatsworth, CA, USA

Apr 2023 – May 2025
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Google], Customer and Partner Engineer
    #v(-design-text-leading)

    #v(design-highlights-top-margin);#highlights([Understand product area partner\/Original Equipment Manufacturer \(OEM\) use-cases, distilling them into product requirements and implementation.],[Support enablement of third-party labs for automated and manual device certifications.],[Define experiences that realize requirements and build the necessary pieces working with key platforms and partner devices.],[Identify opportunities to improve scaled solutions to more device categories.],[Drive technical execution of strategic partner relationships within Google and launch third-party products.],[Support partners in product feature definition, implementation, pre-test, and production.],[Support partners to develop and customize features.],[Work with product area Engineering sub-teams to get features built and implemented.],[Support SoC partners, bring up, and development.],[Assist System Integrators, Original Design Manufacturers \(ODMs\), and Distributors in scaling products.],)
  ],
  right-content: [
    Playa Vista, CA, USA

Oct 2022 – Mar 2023
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Canoga Perkins], Software Engineer
    #v(-design-text-leading)

    #v(design-highlights-top-margin);#highlights([Developed\/maintained an application that ran on a Time-Sensitive Network Switch written in C.],[Developed a Linux device driver for a custom FPGA image on the Time-Sensitive Network Switch.],[Created\/customized a Linux distribution via Yocto that was the main embedded-OS that ran on the Time-Sensitive Network Switch.],[Created DevOps pipelines for said projects using Gitlab's CI\/CD framework written in YAML.],)
  ],
  right-content: [
    Chatsworth, CA, USA

Apr 2020 – Sept 2022
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Frostkeep Studios\/Indi-Ev], Software Engineer
    #v(-design-text-leading)

    #v(design-highlights-top-margin);#highlights([Embedded Android development for an electric vehicle Infotainment System on an NXP IMX8 SoM.],[Developed android navigation app using mapbox android SDK.],[Integrated Alexa-Auto SDK into navigation application.],)
  ],
  right-content: [
    Irvine, CA, USA

Oct 2019 – Apr 2020
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Panasonic Avionics Inc], MTS 2 Software Engineer
    #v(-design-text-leading)

    #v(design-highlights-top-margin);#highlights([Developed\/Maintained a File Delivery application written in C\/C++ that was responsible for pushing a large file-set over a Multicast UDP stream to hundreds of seat-back monitors of the InFlight Entertainment System.],[It advertised these files to upper layers via a FUSE FS. Android SELINUX compliant.],[Developed\/Maintained a loading application in C++\/QT for use by Field Engineers to load initial software set to the plane in a factory-fresh state.],[Created a toolchain for a legacy target.],[Dockerized build environments for said apps and integrated them into Gitlab CI pipeline.],[Created Expect scripts to automate user-input to hundreds of seatback monitors for testing.],)
  ],
  right-content: [
    Lake Forest, CA, USA

Mar 2016 – Oct 2019
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Kiersted System LP], Software Engineer
    #v(-design-text-leading)

    #v(design-highlights-top-margin);#highlights([Developed dynamic web applications using the Java EE + Spring frameworks.],[Incorporated data visualization techniques into web apps.],)
  ],
  right-content: [
    Irvine, CA, USA

Nov 2015 – Mar 2016
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Magzor Robotics Inc], Platform Architect Intern
  ],
  right-content: [
    June 2015 – Nov 2015
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([Design and development of an Embedded Library that allows Magzor Solutions to integrate smoothly into popular electronics development platforms \(Arduino, Texas Instrument's MSP430\/432, Intel Edison, etc\).],[Designed and developed a Code Generator to give Magzor customers custom programs to use with their online hardware purchases.],)
  ],
)



== Skills


#one-col-entry(
  content: [#strong[Programming Languages \(Proficient\):] C\/C++, Java, Python, Bash]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Programming Languages \(Familiar\):] Expect Script\/TCL, Python, QML\/QT, YAML]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Databases:] MySQL, Sqlite3, Redis]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Platforms & OS:] Linux, Android, Docker, Yocto]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Debugging & Network Analysis:] GDB, Valgrind, Tcpdump, Wireshark]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Web Technologies:] Java EE, Apache Tomcat, Spring, JSP, JDBC, RESTful]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Source Control:] Git, SVN, Gitlab]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Static Analysis & Code Review:] Codebear Collaborator, Klockwork, Coverity]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Security:] SELINUX, TLS, Linux PAM Module]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Toolchains:] GCC, Bionic NDK, Crosstool-ng, Buildroot, Yocto]
)


== Education


// YES DATE, YES DEGREE
#three-col-entry(
  left-column-width: 1cm,
  left-content: [#strong[B.S.]],
  middle-content: [
    #strong[University Of California, Irvine], Computer Science
  ],
  right-content: [
    June 2016
  ],
)



