#set page(
  paper: "a4",
  margin: (top: 2cm, left: 3cm, right: 3cm, bottom: 2cm),
  numbering: none,
)

#let background = [
  #place(top + right)[
    #circle(radius: 5cm, fill: red.lighten(90%))
  ]
  #place(bottom + left)[
    #polygon(
      fill: orange.lighten(70%),
      (0cm, 0cm),
      (10cm, -2cm),
      (2cm, -8cm),
    )
  ]
]

#background

#let xuyen-thau = tiling(size: (21cm, 29.7cm))[
  #background
]

#v(1em)

#align(center)[
  #set text(font: "Varela Round", size: 16pt)
  // Tác giả
]

#v(2fr)

#align(center)[
  #set text(font: "Varela Round", size: 100pt, weight: "medium")
  TOÁN
  #box(inset: 15pt, fill: red, radius: 15pt)[
    #set text(fill: white)
    8
  ]
]

#v(-9em)

#align(center)[
  #box(inset: 15pt, radius: 10pt)[
    #set text(font: "Corinthia", size: 50pt, fill: red.darken(30%))
    Lý thuyết #h(0.3em)-#h(0.3em)  Bài tập
  ]
]

#v(3fr)

#align(center)[
  #set text(font: "Varela Round", size: 16pt)
  Năm học 2026 - 2027
]

#v(1em)
