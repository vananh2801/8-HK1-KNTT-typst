#import "../style/lib.typ": *
#show: appearance

#section()[Hình chóp tam giác đều]

#subsection()[Tóm tắt lý thuyết]

#subsubsection()[Hình chóp tam giác đều]

#immini()[
  Hình chóp _tam giác đều_ $S.A B C$ (như hình bên) có:
  - $S$ gọi là _đỉnh_.
  - Mặt $A B C$ là một tam giác đều và được gọi là _mặt đáy_ (gọi tắt là _đáy_).
  - Các đoạn thẳng $S A$, $S B$, $S C$ bằng nhau và được gọi là các _cạnh bên_.
  - Ba mặt $S A B$, $S B C$, $S C A$ là các tam giác cân bằng nhau và được gọi là ba _mặt bên_.
  - Các đoạn thẳng $A B, B C, C A$ được gọi là _cạnh đáy_.
  - Gọi $O$ là trọng tâm của mặt đáy, khi đó $S O$ gọi là _đường cao_, độ dài $S O$ gọi là _chiều cao_.
  - Gọi $H$ là chân đường cao kẻ từ đỉnh của một mặt bên, khi đó $S H$ gọi là _trung đoạn_ (tương tự đối với các mặt bên còn lại).
][
  #import "@preview/cetz:0.5.2"
  #set text(size: 10pt)
  #cetz.canvas(length: 0.9cm, {
    import cetz.draw: *
    import cetz.angle: *
    set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
    let A = (0, 0)
    let B = (1.2, -3)
    let C = (6, 0)
    let A_mid = (B, 50%, C)
    let B_mid = (A, 50%, C)
    let C_mid = (B, 50%, A)
    let O = (
      (A.at(0) + B.at(0) + C.at(0)) / 3,
      (A.at(1) + B.at(1) + C.at(1)) / 3,
    )
    let S = (O.at(0) + 0, O.at(1) + 5)
    line(A, B, C, close: true, fill: orange.lighten(70%), stroke: none)
    line(A, B, C)
    line(C, A, stroke: (dash: "dashed"))
    line(A, A_mid, stroke: (dash: "dashed"))
    line(B, B_mid, stroke: (dash: "dashed"))
    line(C, C_mid, stroke: (dash: "dashed"))
    line(S, O, stroke: (dash: "dashed"))
    line(S, A)
    line(S, B)
    line(S, C)
    line(S, C_mid)
    content(A, $A$, anchor: "east", padding: 5pt)
    content(B, $B$, anchor: "north", padding: 5pt)
    content(C, $C$, anchor: "west", padding: 5pt)
    content(O, $O$, anchor: "north", padding: 7pt)
    content(S, $S$, anchor: "south", padding: 5pt)
    content(C_mid, $H$, anchor: "east", padding: 5pt)
    right-angle(O, S, C, radius: 0.2, label: none)
    right-angle(O, S, A, radius: 0.2, label: none)
    right-angle(A_mid, A, C, radius: 0.2, label: none)
    right-angle(B_mid, A, B, radius: 0.2, label: none)
    right-angle(C_mid, B, C, radius: 0.2, label: none)
    right-angle(C_mid, A, S, radius: 0.2, label: none)
    // Đỉnh
    line((S.at(0) + 1.3, S.at(1) + 0), (S.at(0) + 0.2, S.at(1) + 0), mark: (end: ">"))
    content((S.at(0) + 1.4, S.at(1) + 0), [Đỉnh], anchor: "west")
    // Đường cao
    line((S.at(0) + 1.3, S.at(1) - 1), (S.at(0) + 0.2, S.at(1) - 1.8), mark: (end: ">"))
    content((S.at(0) + 1.4, S.at(1) - 1), [Đường cao], anchor: "west")
    // Mặt bên
    line((S.at(0) + 2.5, S.at(1) - 2), (S.at(0) + 1, S.at(1) - 3), mark: (end: ">"))
    content((S.at(0) + 2.6, S.at(1) - 2), [Mặt bên], anchor: "west")
    // Cạnh đáy
    line((S.at(0) + 2.0, S.at(1) - 7), (S.at(0) + 1, S.at(1) - 5.7), mark: (end: ">"))
    content((S.at(0) + 2.1, S.at(1) - 7), [Cạnh đáy], anchor: "west")
    // Cạnh bên
    line((S.at(0) - 1.5, S.at(1) - 1), (S.at(0) - 1, S.at(1) - 1.6), mark: (end: ">"))
    content((S.at(0) - 1.6, S.at(1) - 1), [Cạnh bên], anchor: "east")
    // Trung đoạn
    line((S.at(0) - 1.5, S.at(1) - 2), (S.at(0) - 1, S.at(1) - 2.9), mark: (end: ">"))
    content((S.at(0) - 1.6, S.at(1) - 2), [Trung đoạn], anchor: "east")
    // Mặt đáy
    line((S.at(0) - 2.5, S.at(1) - 6.5), (S.at(0) - 1.2, S.at(1) - 6), mark: (end: ">"))
    content((S.at(0) - 2.6, S.at(1) - 6.5), [Mặt đáy], anchor: "east")
  })
]

#subsubsection()[Diện tích xung quanh và thể tích của hình chóp tam giác đều]

#dl(tieude: "Diện tích xung quanh của hình chóp tam giác đều")[

  _Diện tích xung quanh_ của hình chóp tam giác đều bằng tích của nửa chu vi đáy với trung đoạn:
  $ S_"xq"=p dot d, $
  trong đó $p$ là nửa chu vi đáy, $d$ là trung đoạn.
]

#vd()[
  #immini()[
    Tính diện tích xung quanh của hình chóp tam giác đều $S.M N P$ trong hình bên, biết $I P=3$ cm và cạnh bên $S P=5$ cm.
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 9pt)
    #cetz.canvas(length: 0.45cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
      let M = (0, 0)
      let N = (1.2, -3)
      let P = (6, 0)
      let M_mid = (N, 50%, P)
      let N_mid = (M, 50%, P)
      let P_mid = (N, 50%, M)
      let O = (
        (M.at(0) + N.at(0) + P.at(0)) / 3,
        (M.at(1) + N.at(1) + P.at(1)) / 3,
      )
      let S = (O.at(0) + 0, O.at(1) + 5)
      line(M, N, P)
      line(M, P, stroke: (dash: "dashed"))
      line(S, M)
      line(S, N)
      line(S, P)
      line(S, M_mid)
      content(M, $M$, anchor: "east", padding: 2pt)
      content(N, $N$, anchor: "north", padding: 2pt)
      content(P, $P$, anchor: "west", padding: 2pt)
      content(S, $S$, anchor: "south", padding: 2pt)
      content(M_mid, $I$, anchor: "north-west", padding: 3pt)
      right-angle(M_mid, P, S, radius: 0.4, label: none)
      content((S, 50%, P), [5 cm], angle: -50deg, anchor: "south", padding: 4pt)
      content((M_mid, 50%, P), [5 cm], angle: 35deg, anchor: "north", padding: 3pt)
    })
  ]
  #loigiai()[
    #dotlineEX(10)
  ]
]

#luuy()[
  Diện tích toàn phần của hình chóp tam giác đều bằng tổng của diện tích xung quanh và diện tích đáy:
  $ S_("tp") = S_("xq") + S_("đáy"), $
  trong đó $S_("tp")$ là diện tích toàn phần, $S_("xq")$ là diện tích xung quanh, $S_("đáy")$ là diện tích đáy.
]

#dl(tieude: "Thể tích của hình chóp tam giác đều")[

  Thể tích hình chóp tam giác đều bằng $frac(1, 3)$ tích của diện tích đáy với chiều cao của nó:
  $ V=frac(1, 3)S dot h, $
  trong đó $S$ là diện tích đáy, $h$ là chiều cao của hình chóp.
]

#immini()[
  #vd()[
    Tính thể tích của hình chóp tam giác đều $S.A B C$ trong hình bên, biết cạnh đáy 6 cm, chiều cao của hình chóp $S O=10$ cm. Cho biết $sqrt(27) approx 5","2$
    #loigiai()[
      #dotlineEX(5)
    ]
  ]
][
  #import "@preview/cetz:0.5.2"
  #set text(size: 10pt)
  #cetz.canvas(length: 0.8cm, {
    import cetz.draw: *
    import cetz.angle: *
    set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
    let A = (0, 0)
    let B = (1.2, -3)
    let C = (6, 0)
    let A_mid = (B, 50%, C)
    let B_mid = (A, 50%, C)
    let C_mid = (B, 50%, A)
    let O = (
      (A.at(0) + B.at(0) + C.at(0)) / 3,
      (A.at(1) + B.at(1) + C.at(1)) / 3,
    )
    let S = (O.at(0) + 0, O.at(1) + 5)
    line(A, B, C)
    line(C, A, stroke: (dash: "dashed"))
    line(A, A_mid, stroke: (dash: "dashed"))
    line(B, B_mid, stroke: (dash: "dashed"))
    line(C, C_mid, stroke: (dash: "dashed"))
    line(S, O, stroke: (dash: "dashed"))
    line(S, A)
    line(S, B)
    line(S, C)
    line(S, C_mid)
    content(A, $A$, anchor: "east", padding: 5pt)
    content(B, $B$, anchor: "north", padding: 5pt)
    content(C, $C$, anchor: "west", padding: 5pt)
    content(O, $O$, anchor: "north", padding: 7pt)
    content(S, $S$, anchor: "south", padding: 5pt)
    content(C_mid, $H$, anchor: "east", padding: 5pt)
    right-angle(O, S, C, radius: 0.25, label: none)
    right-angle(O, S, A, radius: 0.25, label: none)
    right-angle(A_mid, A, C, radius: 0.25, label: none)
    right-angle(B_mid, A, B, radius: 0.25, label: none)
    right-angle(C_mid, B, C, radius: 0.25, label: none)
    right-angle(C_mid, B, S, radius: 0.25, label: none)
    content((B, 50%, C), [6 cm], angle: 40deg, anchor: "north", padding: 4pt)
    content((S, 50%, O), [10 cm], angle: -90deg, anchor: "south", padding: 4pt)
  })
]
#v(-1.5em)
#dotlineEX(8)

#subsection()[Bài tập tự luận]

#bt()[
  Quan sát hình dưới đây và thay mỗi dấu $?$ cho thích hợp.
  #align(center)[
    #table(
      columns: (3cm, 2cm, 3cm, 3cm, 3cm, 2cm),
      inset: 8pt,
      align: center + horizon,
      [*Hình*], [*Đáy*], [*Mặt bên*], [*Số cạnh đáy*], [*Số cạnh bên*], [*Số mặt*],
      [
        #import "@preview/cetz:0.5.2"
        #set text(size: 10pt)
        #cetz.canvas(length: 0.4cm, {
          import cetz.draw: *
          import cetz.angle: *
          set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
          let M = (0, 0)
          let N = (1.2, -3)
          let P = (6, 0)
          let M_mid = (N, 50%, P)
          let N_mid = (M, 50%, P)
          let P_mid = (N, 50%, M)
          let O = (
            (M.at(0) + N.at(0) + P.at(0)) / 3,
            (M.at(1) + N.at(1) + P.at(1)) / 3,
          )
          let S = (O.at(0) + 0, O.at(1) + 5)
          line(M, N, P)
          line(M, P, stroke: (dash: "dashed"))
          line(S, M)
          line(S, N)
          line(S, P)
        })
      ],
      [$?$],
      [Tam giác cân],
      [$?$],
      [$?$],
      [$?$],
    )
  ]
]

#bt()[
  Cho hình chóp tam giác đều $S.D E F$ có cạnh bên $S E = 5$ cm và cạnh đáy $E F = 3$ cm. Hãy cho biết:
  #listEX()[
    + Mặt bên và mặt đáy của hình chóp;
    + Độ dài các cạnh bên và cạnh đáy còn lại của hình chóp;
    + Số đo mỗi góc của mặt đáy.
  ]
]

#bt()[
  #immini()[
    Quan sát hình chóp tam giác đều ở hình bên và cho biết:
    #listEX()[
      + Đỉnh, mặt đáy và các mặt bên của hình đó;
      + Độ dài cạnh $H O$ và cạnh $B C$;
      + Đường cao của hình chóp đó.
    ]
  ][
    #set text(size: 10pt)
    #import "@preview/cetz:0.5.2"
    #cetz.canvas(length: 0.6cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
      let A = (0, 0)
      let B = (1.2, -3)
      let C = (6, 0)
      let A_mid = (B, 50%, C)
      let B_mid = (A, 50%, C)
      let C_mid = (B, 50%, A)
      let O = (
        (A.at(0) + B.at(0) + C.at(0)) / 3,
        (A.at(1) + B.at(1) + C.at(1)) / 3,
      )
      let H = (O.at(0) + 0, O.at(1) + 5)
      line(A, B, C)
      line(C, A, stroke: (dash: "dashed"))
      line(A, A_mid, stroke: (dash: "dashed"))
      line(B, B_mid, stroke: (dash: "dashed"))
      line(C, C_mid, stroke: (dash: "dashed"))
      line(H, O, stroke: (dash: "dashed"))
      line(H, A)
      line(H, B)
      line(H, C)
      content(A, $A$, anchor: "east", padding: 5pt)
      content(B, $B$, anchor: "north", padding: 5pt)
      content(C, $C$, anchor: "west", padding: 5pt)
      content(O, $O$, anchor: "north", padding: 7pt)
      content(H, $H$, anchor: "south", padding: 5pt)
      right-angle(O, H, A, radius: 0.3, label: none)
      right-angle(A_mid, A, C, radius: 0.3, label: none)
      right-angle(B_mid, A, B, radius: 0.3, label: none)
      right-angle(C_mid, B, C, radius: 0.3, label: none)
      content((H, 50%, O), [18 cm], anchor: "north", padding: 5pt, angle: 90deg)
      content((H, 50%, C), [20 cm], anchor: "south", padding: 5pt, angle: -45deg)
      content((A, 50%, B), [15 cm], anchor: "north", padding: 5pt, angle: -70deg)
    })
  ]
]

#bt()[
  #immini()[
    Cho hình chóp tam giác đều $S.D E F$ có cạnh bên $S F = 5$ cm và cạnh đáy $E F = 3$ cm. Hãy cho biết:
    #listEX()[
      + Mặt bên và mặt đáy của hình chóp;
      + Độ dài các cạnh bên và cạnh đáy còn lại của hình chóp;
      + Số đo mỗi góc của mặt đáy.
    ]
  ][
    #set text(size: 10pt)
    #import "@preview/cetz:0.5.2"
    #cetz.canvas(length: 0.4cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
      let D = (-1, 0)
      let E = (1, -3)
      let F = (6, 0)
      let O = (
        (D.at(0) + E.at(0) + F.at(0)) / 3,
        (D.at(1) + E.at(1) + F.at(1)) / 3,
      )
      let S = (O.at(0) + 0, O.at(1) + 5)
      line(D, E, F, close: true)
      line(S, D)
      line(S, E)
      line(S, F)
      line(D, F, stroke: (dash: "dashed"))
      content(D, [$D$], anchor: "east", padding: 5pt)
      content(E, [$E$], anchor: "north", padding: 5pt)
      content(F, [$F$], anchor: "west", padding: 5pt)
      content(S, [$S$], anchor: "south", padding: 5pt)
      content((S, 50%, F), [5 cm], anchor: "south", padding: 5pt, angle: -50deg)
      content((E, 50%, F), [3 cm], anchor: "north", padding: 5pt, angle: 35deg)
    })
  ]
]

#bt()[
  Cho chiếc hộp đặc biệt có dạng hình chóp tam giác đều $S.A B C$ lần lượt có hình ảnh nhìn từ trên xuống và hình minh hoạ kích thước như sau:
  #align(center)[
    #box()[
      #set text(size: 10pt)
      #import "@preview/cetz:0.5.2"
      #cetz.canvas(length: 0.7cm, {
        import cetz.draw: *
        import cetz.angle: *
        set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
        let O = (0, 0)
        let P1 = (0, 3)
        let P2 = (3 * calc.cos(-30deg), 3 * calc.sin(-30deg))
        let P3 = (3 * calc.cos(210deg), 3 * calc.sin(210deg))
        // Miền 1 (Cam) tương ứng pattern orange
        line(O, P1, P2, close: true, fill: orange.lighten(50%), stroke: 1pt + orange)
        // Miền 2 (Xanh dương) tương ứng pattern blue
        line(O, P1, P3, close: true, fill: blue.lighten(50%), stroke: 1pt + blue)
        // Miền 3 (Xanh lá) tương ứng pattern green
        line(O, P3, P2, close: true, fill: green.lighten(50%), stroke: 1pt + green)
      })
    ]
    #h(2cm)
    #box()[
      #set text(size: 10pt)
      #import "@preview/cetz:0.5.2"
      #cetz.canvas(length: 0.4cm, {
        import cetz.draw: *
        import cetz.angle: *
        set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), content: (padding: 5pt))
        let D = (-1, 0)
        let E = (1, -3)
        let F = (6, 0)
        let O = (
          (D.at(0) + E.at(0) + F.at(0)) / 3,
          (D.at(1) + E.at(1) + F.at(1)) / 3,
        )
        let S = (O.at(0) + 0, O.at(1) + 5)
        line(D, E, F, close: true)
        line(S, D)
        line(S, E)
        line(S, F)
        line(D, F, stroke: (dash: "dashed"))
        content(D, [$A$], anchor: "east")
        content(E, [$B$], anchor: "north")
        content(F, [$C$], anchor: "west")
        content(S, [$S$], anchor: "south")
        content((S, 50%, D), [5 cm], anchor: "south", angle: 50deg)
        content((D, 50%, E), [4 cm], anchor: "north", angle: -55deg)
      })
    ]
  ]
  #listEX()[
    + Hãy cho biết mặt đáy, mặt bên, cạnh bên của chiếc hộp đó;
    + Cho biết $S A = 5$ cm, $A B = 4$ cm. Tìm độ dài các cạnh còn lại của chiếc hộp;
    + Mỗi góc của tam giác đáy $A B C$ bằng bao nhiêu độ?
  ]
]

#bt()[
  Nhân dịp Tết Trung thu, Nam dự định làm một chiếc lồng đèn hình chóp tam giác đều và một chiếc hình chóp tứ giác đều. Mỗi chiếc lồng đèn có độ dài cạnh đáy và đường cao của mặt bên tương ứng với cạnh đáy lần lượt là $30$ cm và $40$ cm. Em hãy giúp Nam tính xem phải cần bao nhiêu mét vuông giấy vừa đủ để dán tất cả các mặt của mỗi chiếc lồng đèn. Biết rằng nếp gấp không đáng kể.
]

#bt()[
  #listEX()[
    + Tính diện tích xung quanh của hình chóp tam giác đều có độ dài cạnh đáy là $10$ cm, chiều cao của mặt bên xuất phát từ đỉnh của hình chóp tam giác đều là $12$ cm;
    + Tính diện tích toàn phần và thể tích của hình chóp tứ giác đều có độ dài cạnh đáy là $72$ dm, chiều cao là $68","1$ dm, chiều cao của mặt bên xuất phát từ đỉnh của hình chóp tứ giác đều là $77$ dm.
  ]
]

#bt()[
  #immini()[
    Cho một hình chóp tam giác đều $S.A B C$ có độ dài cạnh đáy $B C$ bằng $11$ cm và đường cao của tam giác cân $S A B$ là $S M = 7$ cm. Tính diện tích xung quanh của hình chóp tam giác đều $S.A B C$.
  ][
    #set text(size: 10pt)
    #import "@preview/cetz:0.5.2"
    #cetz.canvas(length: 0.6cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), content: (padding: 5pt))
      let D = (-1, 0)
      let E = (1, -3)
      let F = (6, 0)
      let O = (
        (D.at(0) + E.at(0) + F.at(0)) / 3,
        (D.at(1) + E.at(1) + F.at(1)) / 3,
      )
      let S = (O.at(0) + 0, O.at(1) + 5)
      let M = (D, 50%, E)
      line(D, E, F)
      line(S, D)
      line(S, E)
      line(S, F)
      line(S, M)
      line(D, F, stroke: (dash: "dashed"))
      content(D, [$A$], anchor: "south-east")
      content(E, [$B$], anchor: "north-east")
      content(F, [$C$], anchor: "west")
      content(S, [$S$], anchor: "south")
      content(M, [$M$], anchor: "north-east")
      content((S, 50%, M), [7 cm], anchor: "south", angle: 65deg)
      content((E, 50%, F), [7 cm], anchor: "north", angle: 40deg)
      right-angle(M, S, D, radius: 0.4, label: none)
    })
  ]
]

#bt()[
  Tính diện tích xung quanh của khối chóp tam giác đều có độ dài cạnh đáy là $10$ cm, chiều cao của mặt bên xuất phát từ đỉnh của hình chóp tam giác đều là $12$ cm.
]

#bt()[
  Tính diện tích xung quanh, diện tích toàn phần và thể tích của:
  #listEX()[
    + Hình chóp tam giác đều có chiều cao là $98","3$ cm; tam giác đáy có độ dài cạnh là $40$ cm và chiều cao là $34","6$ cm; chiều cao mặt bên xuất phát từ đỉnh của hình chóp tam giác đều là $99$ cm;
    + Hình chóp tứ giác đều có độ dài cạnh đáy là $120$ cm, chiều cao là $68","4$ cm, chiều cao mặt bên xuất phát từ đỉnh của hình chóp tứ giác đều là $91$ cm.
  ]
]

#bt()[
  Cho hình chóp tam giác đều có độ dài cạnh đáy là $4$ cm, chiều cao của hình chóp là $6$ cm. Tính thể tích của hình chóp.
]

#bt()[
  Cho hình chóp tam giác đều cạnh $5$ cm và độ dài đường cao mặt bên là $6$ cm. Tính diện tích xung quanh của hình chóp.
]

#bt()[
  Một hình chóp tam giác đều có thể tích là $24 sqrt(3)$ $"cm"^3$, diện tích đáy là $8 sqrt(3)$ $"cm"^2$. Tính chiều cao của hình chóp tam giác đều đó.
]

#bt()[
  Cho hình chóp tam giác đều $S.A B C$ có cạnh đáy bằng $8$ cm và chiều cao tam giác đáy là $7$ cm; chiều cao của mặt bên bằng $5$ cm. Tính diện tích xung quanh và diện tích toàn phần (tức là tổng diện tích các mặt) của hình chóp.
]

#bt()[
  #immini()[
    Tính thể tích khối rubik có dạng hình chóp tam giác đều như hình bên. Biết khối rubik này có bốn mặt là các tam giác đều bằng nhau cạnh $4","7$ cm và chiều cao $4","1$ cm; chiều cao của khối rubik bằng $3","9$ cm.
  ][
    #image("../imgs/8H10-rubik-bien-the-kim-tu-thap.png", width: 3cm)
  ]
]

#bt()[
  Một khối rubik có dạng hình chóp tam giác đều. Biết chiều cao khoảng $5","9$ cm, thể tích của khối Rubic là $44","25$ $"cm"^3$. Tính diện tích đáy của khối Rubic.
]

#bt()[
  Một bể kính hình hộp chữ nhật có hai cạnh đáy là $60$ cm và $30$ cm. Trong bể có một khối đá hình chóp tam giác đều với diện tích đáy là $270$ $"cm"^2$, chiều cao $30$ cm. Người ta đổ nước vào bể sao cho nước ngập khối đá và đo được mực nước là $60$ cm.\
  Khi lấy khối đá ra thì mực nước của bể là bao nhiêu?
]

#bt()[
  Lớp bạn Nam dự định gấp $100$ hộp đựng quà dạng hình chóp tam giác đều có tất cả các mặt đều là hình tam giác đều cạnh $5$ cm để đựng các món quà gửi tặng cho học sinh khó khăn nhân dịp Tết Trung thu. Cho biết chiều cao của mỗi mặt là $4","3$ cm. Tính diện tích giấy cần đề làm $100$ hộp quà, biết rằng phải tốn $20%$ diện tích giấy cho các mép giấy và các phần giấy bị bỏ đi.
]

#bt()[
  #immini()[
    Chóp inox đặt trên đỉnh núi Fansipan (Việt Nam) có dạng hình chóp tam giác đều với chu vi đáy khoảng $180$ cm và chiều cao khoảng $90$ cm. Hãy tính diện tích xung quanh và thể tích của chóp inox.
  ][
    #image("../imgs/8H10-chop-inox-dinh-nui-fasipan.png", width: 6cm)
  ]
]

#bt()[
  #immini()[
    Một chiếc đèn thả trần có dạng hình chóp tam giác đều có tất cả các cạnh đều khoảng $20$ cm. Độ dài đường cao của mặt bên là $17","5$ cm. Tính diện tích xung quanh của chiếc đèn thả trần đó.
  ][
    #image("../imgs/8H10-den-chop-tam-giac.png", width: 6cm)
  ]
]

#bt()[
  #immini()[
    Bộ nam châm xếp hình có dạng hình chóp tam giác đều (như hình ảnh bên) có độ dài cạnh đáy khoảng $6$ cm và mặt bên có đường cao khoảng $7$ cm. Tính diện tích xung quanh bộ nam châm xếp hình đó.
  ][
    #image("../imgs/8H10-bo-nam-cham-chop-tam-giac.png", width: 6cm)
  ]
]
