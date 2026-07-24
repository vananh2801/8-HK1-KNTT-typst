#import "../style/lib.typ": *
#show: appearance

#section()[Hình chóp tứ giác đều]

#subsection()[Tóm tắt lý thuyết]

#subsubsection()[Hình chóp tứ giác đều]

#immini()[
  Hình chóp _tứ giác đều_ $S.A B C D$ (như hình bên) có:
  - $S$ gọi là _đỉnh_.
  - Mặt $A B C D$ là một hình vuông và được gọi là _mặt đáy_ (gọi tắt là _đáy_).
  - Các đoạn thẳng $S A, S B, S C, S D$ bằng nhau và được gọi là các _cạnh bên_.
  - Bốn mặt $S A B, S B C, S C D, S D A$ là các tam giác cân bằng nhau và được gọi là bốn _mặt bên_.
  - Các đoạn thẳng $A B, B C, C D, D A$ được gọi là _cạnh đáy_.
  - Gọi $O$ là giao điểm hai đường chéo của mặt đáy, khi đó $S O$ là _đường cao_, độ dài $S O$ là _chiều cao_.
  - Gọi $H$ là chân đường cao kẻ từ đỉnh của một mặt bên, khi đó $S H$ gọi là _trung đoạn_ (tương tự đối với các mặt bên còn lại).
][
  #import "@preview/cetz:0.5.2"
  #set text(size: 10pt)
  #cetz.canvas(length: 1.2cm, {
    import cetz.draw: *
    import cetz.angle: *
    set-style(stroke: (thickness: 0.7pt, cap: "round", join: "round"), mark: (fill: black))
    let A = (0, 0)
    let B = (1.7, -1)
    let C = (5, 0)
    let D = (3.3, 1)
    let O = ((A.at(0) + C.at(0)) / 2, (A.at(1) + C.at(1)) / 2)
    let S = (O.at(0) + 0, O.at(1) + 4)
    let H = ((A.at(0) + B.at(0)) / 2, (A.at(1) + B.at(1)) / 2)
    // 2. Tô màu mặt đáy hình chóp
    line(A, B, C, D, close: true, fill: orange.lighten(70%), stroke: none)
    // 3. Vẽ các cạnh đáy
    line(A, B, C)
    line(C, D, A, stroke: (dash: "dashed"))
    // 4. Vẽ các đường chéo đáy và đường cao (nét đứt)
    line(S, O, stroke: (dash: "dashed"))
    line(A, C, stroke: (dash: "dashed"))
    line(B, D, stroke: (dash: "dashed"))
    // 5. Vẽ các cạnh bên
    line(S, A)
    line(S, B)
    line(S, C)
    line(S, D, stroke: (dash: "dashed"))
    line(S, H)
    // 6. Gắn nhãn tên các đỉnh
    content(A, [$A$], anchor: "east", padding: 5pt)
    content(B, [$B$], anchor: "north", padding: 5pt)
    content(C, [$C$], anchor: "west", padding: 5pt)
    content(D, [$D$], anchor: "south-west", padding: 5pt)
    content(O, [$O$], anchor: "north-west", padding: 5pt)
    content(S, [$S$], anchor: "south", padding: 5pt)
    content(H, [$H$], anchor: "north-east", padding: 5pt)
    right-angle(O, S, C, radius: 0.2, label: none)
    right-angle(O, S, B, radius: 0.2, label: none)
    right-angle(H, S, B, radius: 0.2, label: none)
    // Đỉnh
    line((S.at(0) + 1.3, S.at(1) + 0), (S.at(0) + 0.2, S.at(1) + 0), mark: (end: ">"))
    content((S.at(0) + 1.4, S.at(1) + 0), [Đỉnh], anchor: "west")
    // Đường cao
    line((S.at(0) + 1.3, S.at(1) - 1), (S.at(0) + 0.05, S.at(1) - 2), mark: (end: ">"))
    content((S.at(0) + 1.4, S.at(1) - 1), [Đường cao], anchor: "west")
    // Mặt bên
    line((S.at(0) + 2.5, S.at(1) - 2), (S.at(0) + 1, S.at(1) - 2), mark: (end: ">"))
    content((S.at(0) + 2.6, S.at(1) - 2), [Mặt bên], anchor: "west")
    // Trung đoạn
    line((S.at(0) - 1.5, S.at(1) - 2), (S.at(0) - 1, S.at(1) - 2.6), mark: (end: ">"))
    content((S.at(0) - 1.6, S.at(1) - 2), [Trung đoạn], anchor: "east")
    // Cạnh đáy
    line((S.at(0) + 2.0, S.at(1) - 5.5), (S.at(0) + 1.4, S.at(1) - 4.4), mark: (end: ">"))
    content((S.at(0) + 2.1, S.at(1) - 5.5), [Cạnh đáy], anchor: "west")
    // Cạnh bên
    line((S.at(0) - 1.5, S.at(1) - 1), (S.at(0) - 1, S.at(1) - 1.6), mark: (end: ">"))
    content((S.at(0) - 1.6, S.at(1) - 1), [Cạnh bên], anchor: "east")
    // Mặt đáy
    line((S.at(0), S.at(1) - 5.4), (S.at(0), S.at(1) - 4.4), mark: (end: ">"))
    content((S.at(0), S.at(1) - 5.5), [Mặt đáy], anchor: "north")
  })
]

#subsubsection()[Diện tích xung quanh và thể tích của hình chóp tứ giác đều]

#dl(tieude: "Diện tích xung quanh của hình chóp tứ giác đều")[

  _Diện tích xung quanh_ của hình chóp tứ giác đều bằng tích của nửa chu vi đáy với trung đoạn:
  $ S_"xq"=p dot d, $
  trong đó $p$ là nửa chu vi đáy, $d$ là trung đoạn.
]

#vd()[
  #immini()[
    Một tấm bìa gấp thành hình chóp tam giác đều với các mặt đều là hình tam giác đều. Với số đo như hình bên, hãy tính diện tích xung quanh và diện tích toàn phần của hình này.
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 1.3cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round", join: "round"), mark: (fill: black), content: (padding: 2pt))
      let O = (0, 0)
      let A = (3, 0)
      let B = (calc.cos(60deg) * 3, calc.sin(60deg) * 3)
      line(O, A, B, O)
      let O_mid = (A, 50%, B)
      let A_mid = (O, 50%, B)
      let B_mid = (A, 50%, O)
      line(O_mid, A_mid, B_mid, O_mid)
      let A_midd = (O_mid, 50%, B_mid)
      line(A_midd, A)
      content((A_midd, 40%, A), [$8,7$ cm], anchor: "south", angle: -30deg)
      content((O_mid, 50%, B_mid), [$10$ cm], anchor: "south", angle: 60deg)
    })
  ]
  #loigiai()[
    Diện tích một mặt bên là: $frac(1, 2) dot 10 dot 8","7 = 43","5$ ($"cm"^2$).\
    Diện tích xung quanh là: $S_text("xq") = 3 dot 43","5 = 130","5$ ($"cm"^2$).\
    Vì diện tích mặt đáy bằng diện tích một mặt bên nên $S_text("đáy") = 43","5$ ($"cm"^2$).\
    Do đó, diện tích toàn phần là $S_text("tp") = S_text("xq") + S_text("đáy") = 130","5 + 43","5 = 174$ ($"cm"^2$).
  ]
]

#luuy()[
  Diện tích toàn phần của hình chóp tứ giác đều bằng tổng của diện tích xung quanh và diện tích đáy:
  $ S_("tp") = S_("xq") + S_("đáy"), $
  trong đó $S_("tp")$ là diện tích toàn phần, $S_("xq")$ là diện tích xung quanh, $S_("đáy")$ là diện tích đáy.
]

#subsubsection()[Thể tích]

#dl()[
  Thể tích của hình chóp tam giác đều (hình chóp tứ giác đều) bằng $frac(1, 3)$ diện tích đáy nhân với chiều cao:
  $ V = frac(1, 3) dot S_"đáy" dot h, $
  trong đó $V$ là thể tích, $S_"đáy"$ là diện tích đáy và $h$ là chiều cao.
]

#vd()[
  #immini()[
    Tính thể tích của một chiếc hộp bánh ít gai có dạng hình chóp tứ giác đều, có độ dài cạnh đáy là $3$ cm và chiều cao là $2","6$ cm.
  ][
    #image("../imgs/8H10-banhit.png", width: 4.5cm)
  ]
  #loigiai()[
    Diện tích mặt đáy là: $S_text("đáy") = 3 dot 3 = 9$ ($"cm"^2$).\
    Thể tích của một chiếc hộp bánh ít gai là: $V = frac(1, 3) dot S_text("đáy") dot h = frac(1, 3) dot 9 dot 2","6 = 23","4$ ($"cm"^3$).
  ]
]

#subsection()[Bài tập tự luận]

#bt()[
  Quan sát hình dưới đây và thay mỗi dấu $?$ cho thích hợp.
  #align(center)[
    #table(
      columns: (auto, auto, auto, auto, auto, auto),
      inset: 8pt,
      align: center + horizon,
      [*Hình*], [*Đáy*], [*Mặt bên*], [*Số cạnh đáy*], [*Số cạnh bên*], [*Số mặt*],
      [
        #import "@preview/cetz:0.5.2"
        #set text(size: 10pt)
        #cetz.canvas(length: 0.4cm, {
          import cetz.draw: *
          import cetz.angle: *
          set-style(
            stroke: (thickness: 0.7pt, cap: "round", join: "round"),
            mark: (fill: black),
            content: (padding: 2pt),
          )
          let A = (0, 0)
          let B = (2, -1)
          let C = (5, 0)
          let D = (3, 1)
          let S = (2.5, 4)
          line(A, B, C)
          line(S, A)
          line(S, B)
          line(S, C)
          line(S, D, stroke: (dash: "dashed"))
          line(A, D, stroke: (dash: "dashed"))
          line(C, D, stroke: (dash: "dashed"))
        })
      ],
      [Hình vuông],
      [$?$],
      [$?$],
      [$?$],
      [$?$],
    )
  ]
]

#bt()[
  Tính diện tích xung quanh của mỗi hình chóp tứ giác đều dưới đây:
  #listEX(socot: 2)[
    + #set text(size: 10pt)
      #import "@preview/cetz:0.5.2"
      #cetz.canvas(length: 1.2cm, {
        import cetz.draw: *
        import cetz.angle: *
        set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), content: (padding: 3pt))
        let O = (0, 0)
        let A = (2, 0.5)
        let B = (1, -0.5)
        let C = (-2, -0.5)
        let D = (-1, 0.5)
        let S = (0, 2)
        let H = (1.5, 0)
        line(S, A)
        line(S, B)
        line(S, C)
        line(B, C)
        line(A, B)
        line(C, D, stroke: (dash: "dashed"))
        line(S, D, stroke: (dash: "dashed"))
        line(S, H)
        line(S, O, stroke: (dash: "dashed"))
        line(D, A, stroke: (dash: "dashed"))
        right-angle(H, A, S, radius: 0.2, label: none)
        content((B, 50%, C), [6 cm], anchor: "north")
        content((S, 60%, H), [5 cm], anchor: "south", angle: -50deg)
      })
    + #set text(size: 10pt)
      #import "@preview/cetz:0.5.2"
      #cetz.canvas(length: 1.2cm, {
        import cetz.draw: *
        import cetz.angle: *
        set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), content: (padding: 3pt))
        let S = (0, -2)
        let O = (0, 0)
        let A = (-2, -0.5)
        let B = (1, -0.5)
        let C = (2, 0.5)
        let D = (-1, 0.5)
        let H = (0.5, 0.5)
        line(A, B, C, D, close: true)
        right-angle(H, C, S, radius: 0.2, label: none)
        line(S, A)
        line(S, B)
        line(S, C)
        line(S, D, stroke: (dash: "dashed"))
        line(S, O, stroke: (dash: "dashed"))
        line(S, H, stroke: (dash: "dashed"))
        content((C.at(0) / 2 + D.at(0) / 2, C.at(1) / 2 + D.at(1) / 2), [10 cm], anchor: "south")
        content((S, 45%, H), [13 cm], anchor: "south", angle: -100deg)
      })
  ]
  Cho biết chiều cao của hình chóp tứ giác đều trong hình a và hình b lần lượt là $4$ cm và $12$ cm. Tính thể tích của mỗi hình.
]

#bt()[
  Cho hình chóp tứ giác đều $S.M N P Q$ có cạnh bên $S M = 15$ cm và cạnh đáy $M N = 8$ cm.
  Hãy cho biết:
  #listEX()[
    + Mặt bên và mặt đáy của hình đó;
    + Độ dài các cạnh bên và cạnh đáy còn lại của hình đó.
  ]
]

#bt()[
  Các phát biểu sau đúng hay sai? Nếu sai thì sửa lại cho đúng.
  #listEX()[
    + Hình chóp tam giác đều có các cạnh bên bằng nhau và đáy là hình tam giác có ba cạnh bằng nhau;
    + Hình chóp tứ giác đều có tất cả các cạnh bằng nhau.
  ]
]

#bt()[
  Trong các tấm bìa dưới đây, tấm bìa nào gấp theo đường rạch đứt thì được một hình chóp tứ giác đều?
  #listEX(socot: 2)[
    + #import "@preview/ctz-euclide:0.2.0": *
      #cetz.canvas(length: 0.8cm, {
        import cetz.draw: *
        set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
        ctz-init()
        ctz-def-points(
          O: (0, 0),
          A1: (230deg, 3),
          A2: (260deg, 3),
          A3: (290deg, 3),
          A4: (320deg, 3),
        )
        ctz-draw-line("A4", "O", "A1", "A2", "A3")
        ctz-draw-line("A2", "O", "A3", "A4", stroke: (dash: "dashed", paint: blue))
        ctz-def-rotation("B1", "A3", "A4", 90)
        ctz-def-rotation("B2", "A4", "B1", 90)
        ctz-draw-line("A4", "B1", "B2", "A3")
      })
    + #import "@preview/ctz-euclide:0.2.0": *
      #cetz.canvas(length: 0.8cm, {
        import cetz.draw: *
        set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
        ctz-init()
        ctz-def-points(
          O: (0, 0),
          A1: (230deg, 3),
          A2: (260deg, 3),
          A3: (290deg, 3),
          A4: (320deg, 3),
          A5: (350deg, 3),
        )
        ctz-draw-line("A4", "A5", "O", "A1", "A2", "A3")
        ctz-draw-line("A2", "O", "A3", "A4", "O", stroke: (dash: "dashed", paint: blue))
        ctz-def-rotation("B1", "A3", "A4", 90)
        ctz-def-rotation("B2", "A4", "B1", 90)
        ctz-draw-line("A4", "B1", "B2", "A3")
      })
    + #import "@preview/ctz-euclide:0.2.0": *
      #cetz.canvas(length: 0.8cm, {
        import cetz.draw: *
        set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
        ctz-init()
        ctz-def-points(
          O: (0, 0),
          A1: (230deg, 3),
          A2: (260deg, 3),
          A3: (290deg, 3),
          A4: (320deg, 3),
        )
        ctz-def-rotation("B1", "A1", "A2", 90)
        ctz-def-rotation("B2", "A2", "B1", 90)
        ctz-def-points(
          B3: ("A2", 50%, "B2"),
        )
        ctz-def-rotation("B4", "O", "B3", 90)
        ctz-draw-line("A4", "O", "A1")
        ctz-draw-line("A3", "O", "A2", "A1", "B2", stroke: (dash: "dashed", paint: blue))
        ctz-draw-line("A4", "A3", "A2", "B1", "B2", "B4", "A1")
      })
    + #import "@preview/ctz-euclide:0.2.0": *
      #cetz.canvas(length: 0.8cm, {
        import cetz.draw: *
        set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
        ctz-init()
        ctz-def-points(
          O: (0, 0),
          A1: (60deg, 3),
          A2: (90deg, 3),
          A3: (150deg, 3),
          A4: (180deg, 3),
        )
        ctz-draw-line("A2", "A1", "O", "A4", "A3")
        ctz-draw-line("A2", "O", "A3", "A2", stroke: (dash: "dashed", paint: blue))
        ctz-def-rotation("B1", "A1", "A2", 135)
        ctz-def-rotation("B2", "A4", "A3", -135)
        ctz-draw-line("A2", "B1", "B2")
        ctz-draw-line("A3", "B2", stroke: (dash: "dashed", paint: blue))
        ctz-def-rotation("B3", "O", "A3", 225)
        ctz-draw-line("B2", "B3", "A3")
      })
  ]
]

#bt()[
  #immini()[
    Chị Hà dự định gấp một hộp quà từ tấm bìa như hình bên. Cái hộp mà chị Hà dự định gấp có dạng hình gì?
  ][
    #import "@preview/cetz:0.5.2"
    #cetz.canvas(length: 0.8cm, {
      import cetz.draw: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
      rect((-1, -1), (1, 1), fill: orange.lighten(70%))
      line((-1, 1), (0, 3), (1, 1), close: true, fill: blue.lighten(70%))
      line((1, 1), (3, 0), (1, -1), close: true, fill: blue.lighten(70%))
      line((1, -1), (0, -3), (-1, -1), close: true, fill: blue.lighten(70%))
      line((-1, 1), (-3, 0), (-1, -1), close: true, fill: blue.lighten(70%))
    })
  ]
]


#bt()[
  #immini()[
    Quan sát hình chóp tứ giác đều ở hình bên và cho biết:
    #listEX()[
      + Mặt đáy và các mặt bên của hình đó;
      + Đường cao của hình chóp đó;
      + Độ dài cạnh $S B$ và cạnh $B C$.
    ]
  ][
    #set text(size: 10pt)
    #import "@preview/cetz:0.5.2"
    #cetz.canvas(length: 1cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), content: (padding: 5pt))
      let A = (0, 0)
      let B = (2, -1)
      let C = (5, 0)
      let D = (3, 1)
      let O = (2.5, 0)
      let S = (2.5, 3)
      line(A, B, C)
      line(S, A)
      line(S, B)
      line(S, C)
      line(A, C, stroke: (dash: "dashed"))
      line(B, D, stroke: (dash: "dashed"))
      line(S, O, stroke: (dash: "dashed"))
      line(S, D, stroke: (dash: "dashed"))
      line(A, D, stroke: (dash: "dashed"))
      line(C, D, stroke: (dash: "dashed"))
      content(A, [$A$], anchor: "east")
      content(B, [$B$], anchor: "north")
      content(C, [$C$], anchor: "west")
      content(D, [$D$], anchor: "south-west")
      content(O, [$O$], anchor: "north-west")
      content(S, [$S$], anchor: "south")
      content((S, 50%, C), [20 cm], anchor: "south", angle: -50deg)
      content((B, 50%, C), [15 cm], anchor: "north", angle: 20deg)
      right-angle(O, S, C, label: none, radius: 0.3)
    })
  ]
]

#bt()[
  #immini()[
    Cho hình chóp tứ giác đều $S.A B C D$ có cạnh bên $S D = 15$ cm và cạnh đáy $B C = 8$ cm. Hãy cho biết:
    #listEX()[
      + Mặt bên và mặt đáy của hình đó;
      + Độ dài các cạnh bên và cạnh đáy còn lại của hình đó.
    ]
  ][
    #set text(size: 10pt)
    #import "@preview/cetz:0.5.2"
    #cetz.canvas(length: 0.8cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), content: (padding: 5pt))
      let A = (-1, 0.5)
      let B = (-2, -0.5)
      let C = (1, -0.5)
      let D = (2, 0.5)
      let S = (0, 3)
      line(S, B)
      line(S, C)
      line(S, D)
      line(B, C, D)
      line(S, A, stroke: (dash: "dashed"))
      line(A, D, stroke: (dash: "dashed"))
      line(A, B, stroke: (dash: "dashed"))
      content(A, [$A$], anchor: "north-west", padding: 2pt)
      content(B, [$B$], anchor: "north-east")
      content(C, [$C$], anchor: "north-west")
      content(D, [$D$], anchor: "west")
      content(S, [$S$], anchor: "south")
      content((B, 50%, C), [8 cm], anchor: "north")
      content((S, 50%, D), [15 cm], anchor: "south", angle: -50deg)
    })
  ]
]

#bt(tieude: "https://www.pariscityvision.com/en/paris/museums")[
  Bảo tàng Louvre (Pháp) có một kim tự tháp hình chóp tứ giác đều bằng kính (gọi là kim tự tháp Louvre) có chiều cao $21","3$ m và cạnh đáy $34$ m. Tính thể tích của kim tự tháp này.\
  #align(center)[
    #image("../imgs/8H10-bao-tang-lourvre.png", width: 10cm)
  ]
]

#bt()[
  #immini()[
    Tính thể tích của hình chóp tứ giác đều có chiều cao $3$ cm, độ dài cạnh của tứ giác đáy là $5$ cm.
  ][
    #set text(size: 10pt)
    #import "@preview/cetz:0.5.2"
    #cetz.canvas(length: 0.9cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), content: (padding: 3pt))
      let O = (0, 0)
      let A = (-1, 0.5)
      let B = (-2, -0.5)
      let C = (1, -0.5)
      let D = (2, 0.5)
      let S = (0, 3)
      line(S, B)
      line(S, C)
      line(S, D)
      line(B, C, D)
      line(S, A, stroke: (dash: "dashed"))
      line(A, D, stroke: (dash: "dashed"))
      line(A, B, stroke: (dash: "dashed"))
      line(A, C, stroke: (dash: "dashed"))
      line(B, D, stroke: (dash: "dashed"))
      line(S, O, stroke: (dash: "dashed"))
      content((B.at(0) / 2 + C.at(0) / 2, B.at(1) / 2 + C.at(1) / 2), [5 cm], anchor: "north")
      content((S.at(0) / 2 + O.at(0) / 2, S.at(1) / 2 + O.at(1) / 2), [3 cm], anchor: "south", angle: 90deg)
      content(O, [$O$], anchor: "north")
      content(A, [$A$], anchor: "east")
      content(B, [$B$], anchor: "north-east")
      content(C, [$C$], anchor: "north-west")
      content(D, [$D$], anchor: "west")
      content(S, [$S$], anchor: "south")
    })
  ]
]

#bt()[
  Tính diện tích toàn phần và thể tích của hình chóp tứ giác đều có độ dài cạnh đáy là $72$ dm, chiều cao là $68","1$ dm, chiều cao của mặt bên xuất phát từ đỉnh của hình chóp tứ giác đều là $77$ dm.
]

#bt()[
  Cho hình chóp đều $S.A B C D$ có cạnh đáy bằng $3$ cm, chiều cao của hình chóp là $h = 2$ cm. Tính thể tích của hình chóp đã cho.
]

#bt()[
  Tính chu vi đáy của hình chóp tứ giác đều biết thể tích của hình chóp là $256$ $"cm"^3$, chiều cao của hình chóp là $12$ cm.
]

#bt()[
  Cho hình chóp tứ giác đều có thể tích là $125$ $"cm"^3$, chiều cao của hình chóp là $15$ cm. Tính chu vi đáy.
]

#bt()[
  #immini()[
    Nhân dịp Tết trung thu, Nam dự định làm một chiếc lồng đèn như hình bên. Chiếc lồng đèn có độ dài cạnh đáy và đường cao của mặt bên tương ứng với cạnh đáy lần lượt là $30$ cm và $40$ cm. Em hãy giúp Nam tính xem phải cần bao nhiêu mét vuông giấy vừa đủ để dán tất cả các mặt của mỗi chiếc lồng đèn. Biết rằng nếp gấp không đáng kể và có một mặt không bị dán.
  ][
    #set text(size: 10pt)
    #import "@preview/cetz:0.5.2"
    #cetz.canvas(length: 0.9cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), content: (padding: 2pt))
      let S = (0, 2.2)
      let A = (-1, 0.2)
      let B = (-2, -0.2)
      let C = (1, -0.2)
      let D = (2, 0.2)
      let I = (0, -2.2)
      line(S, B, I)
      line(S, C, I)
      line(S, D, I)
      line(B, C, D)
      line(S, A, stroke: (dash: "dashed"))
      line(A, B, stroke: (dash: "dashed"))
      line(A, D, stroke: (dash: "dashed"))
      line(A, I, stroke: (dash: "dashed"))
      content(S, [$S$], anchor: "south")
      content(A, [$A$], anchor: "south-east")
      content(B, [$B$], anchor: "east")
      content(C, [$C$], anchor: "north-west")
      content(D, [$D$], anchor: "west")
      content(I, [$I$], anchor: "north")
    })
  ]
]

#bt()[
  #immini()[
    Hình bên là một cái lều ở trại hè của học sinh kèm theo các kích thước.
    #listEX()[
      + Thể tích không khí bên trong lều là bao nhiêu?;
      + Xác định số vải bạt cần thiết để dựng lều (không tính đến đường viền, nếp gấp, ...) biết chiều cao của mặt bên xuất phát từ đỉnh của chiếc lều là $2","5$ m.
    ]
  ][
    #set text(size: 10pt)
    #import "@preview/cetz:0.5.2"
    #cetz.canvas(length: 1.4cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), content: (padding: 2pt))
      let S = (0, 2)
      let O = (0, 0)
      let A = (-2, 0.3)
      let B = (-1, -0.5)
      let C = (2, -0.3)
      let D = (1, 0.5)
      let G = (-0.8, 0.85)
      let lerp(p, q, t) = (
        p.at(0) + t * (q.at(0) - p.at(0)),
        p.at(1) + t * (q.at(1) - p.at(1)),
      )
      let H = lerp(A, B, 0.3)
      let I = lerp(A, B, 0.7)
      line(S, A)
      line(S, B)
      line(S, C)
      line(B, C)
      line(S, O, stroke: (dash: "dashed"))
      line(S, D, stroke: (dash: "dashed"))
      line(B, D, stroke: (dash: "dashed"))
      line(C, D, A, stroke: (dash: "dashed"))
      line(A, H, G, I, B)
      bezier(
        G,
        I,
        (G.at(0) - 0.2, G.at(1) - 0.7),
        (G.at(0) + 0.1, G.at(1) - 1),
      )
      content(lerp(S, O, 0.5), anchor: "south", [$2$ m], angle: 90deg)
      content(lerp(B, C, 0.5), anchor: "north", [$3$ m])
    })
  ]
]

#bt(tieude: "https://www.britannica.com/topic/Pyramids-of-Giza")[
  #immini()[
    Kim tự tháp Giza nổi tiếng ở Ai Cập có dạng hình chóp tứ giác đều với chiều cao khoảng $147$ m và đáy là hình vuông cạnh khoảng $230$ m.
    #listEX()[
      + Tính thể tích của kim tự tháp Giza;
      + Đường cao của mặt bên xuất phát từ đỉnh của kim tự tháp đo được dài $186","6$ m. Tính diện tích xung quanh của kim tự tháp Giza.
    ]
  ][
    #image("../imgs/8H10-kim-tu-thap-giza.png", width: 6cm)
  ]
]

#bt()[
  Một bể kính hình hộp chữ nhật chứa nước có hai cạnh đáy là $50$ cm và $40$ cm, khoảng cách từ mực nước tới miệng bể là $15$ cm. Người ta dự định đặt vào bể một khối đá hình chóp tứ giác đều cạnh đáy là $20$ cm, chiều cao $15$ cm. Khi đó khoảng cách mực nước tới miệng bể là bao nhiêu? Biết rằng sau khi đặt khối đá vào, nước ngập khối đá và không tràn ra ngoài.
]

#bt()[
  Đại kim tự tháp của Mỹ (The Great American Pyramid) nằm ở Memphis, bang Tennessee là một trong những kim tự tháp lớn nhất thế giới. Nơi đây hoạt động như một trung tâm thương mại và giải trí sầm uất. Đại kim tự tháp có dạng hình chóp tứ giác đều với đáy là hình vuông cạnh $180$ m và chiều cao của mặt bên kẻ từ đỉnh hình chóp bằng $133$ m. Tính diện tích mặt ngoài của Đại kim tự tháp này.
  #align(center)[
    #box[
      #image("../imgs/8H10-dai-kim-tu-thap-My.png", width: 8cm)
    ]
    #h(1cm)
    #box[
      #set text(size: 10pt)
      #import "@preview/cetz:0.5.2"
      #cetz.canvas(length: 1.4cm, {
        import cetz.draw: *
        import cetz.angle: *
        set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), content: (padding: 3pt))
        let O = (0, 0)
        let A = (-1, 0.5)
        let B = (-2, -0.5)
        let C = (1, -0.5)
        let D = (2, 0.5)
        let S = (0, 2.5)
        let I = (1.5, 0)
        line(S, B)
        line(S, C)
        line(S, D)
        line(B, C, D)
        line(S, I)
        line(S, A, stroke: (dash: "dashed"))
        line(A, D, stroke: (dash: "dashed"))
        line(A, B, stroke: (dash: "dashed"))
        line(A, C, stroke: (dash: "dashed"))
        line(B, D, stroke: (dash: "dashed"))
        line(S, O, stroke: (dash: "dashed"))
        content((B.at(0) / 2 + C.at(0) / 2, B.at(1) / 2 + C.at(1) / 2), [180 m], anchor: "north")
        content(
          (S.at(0) / 2 + I.at(0) / 2, S.at(1) / 2 + I.at(1) / 2),
          [133 m],
          anchor: "south",
          angle: -60deg,
        )
        content(O, [$O$], anchor: "north")
        content(A, [$A$], anchor: "south-east", padding: 2pt)
        content(B, [$B$], anchor: "north-east")
        content(C, [$C$], anchor: "north-west")
        content(D, [$D$], anchor: "west")
        content(S, [$S$], anchor: "south")
        content(I, [$I$], anchor: "north-west")
        right-angle(I, S, D, label: none, radius: 0.2)
      })
    ]
  ]
]

#bt(
  tieude: "https://edmontonjournal.com/life/homes/landmarks-muttart-conservatorys-iconic-pyramids-house-botanical-treasures",
)[
  Khu bảo tồn Muttart là một phần biểu tượng của cảnh quan thành phố Edmonton, Canada với bốn nhà kính hình dạng kim tự tháp. Mỗi toà nhà đều có từng chủ đề riêng. Hai nhà kính lớn đều có dạng hình chóp tứ giác đều với chiều cao $24$ m và diện tích đáy mỗi nhà kính khoảng $660$ $"m"^2$. Tính tổng thể tích của hai nhà kính này.
  #align(center)[
    #box[
      #image("../imgs/8H10-khu-bao-ton-muttart.png", width: 8cm)
    ]
    #h(0.5cm)
    #box[
      #image("../imgs/8H10-khu-bao-ton-muttart-2.png", width: 8cm)
    ]
  ]
]
