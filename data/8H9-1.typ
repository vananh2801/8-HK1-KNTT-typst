#import "../style/lib.typ": *
#show: appearance

#section()[Hai tam giác đồng dạng]

#subsection()[Lý thuyết]

#subsubsection()[Định nghĩa]

#dn(tieude: "Hai tam giác đồng dạng")[
  #immini()[
    Tam giác $A'B'C'$ gọi là _đồng dạng_ với tam giác $A B C$ nếu:
    $ (A'B')/(A B)=(B'C')/(B C)=(A'C')/(A C); $
    $ hat(A')=hat(A), hat(B')=hat(B), hat(C')=hat(C). $
    Tam giác $A'B'C'$ đồng dạng với tam giác $A B C$ được kí hiệu là $triangle A'B'C' tilde.rev triangle A B C$ (viết theo thứ tự cặp đỉnh
    tương ứng).

    Tỉ số $k=(A'B')/(A B)=(B'C')/(B C)=(A'C')/(A C)$ được gọi là tỉ số đồng dạng của $triangle A'B'C' tilde.rev triangle A B C$.
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 0.7cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), padding: 5pt)
      let scale = 1.6
      let B = (0, 0)
      let A = (2, 2)
      let C = (3, 0)
      let Bp = (5, 0)
      let Ap = (Bp.at(0) + (A.at(0) - B.at(0)) * scale, Bp.at(1) + (A.at(1) - B.at(1)) * scale)
      let Cp = (Bp.at(0) + (C.at(0) - B.at(0)) * scale, Bp.at(1) + (C.at(1) - B.at(1)) * scale)
      line(A, B, C, A)
      line(Ap, Bp, Cp, Ap)
      content((rel: (90deg, 10pt), to: A), [$A$])
      content((rel: (225deg, 10pt), to: B), [$B$])
      content((rel: (-45deg, 10pt), to: C), [$C$])
      content((rel: (90deg, 10pt), to: Ap), [$A'$])
      content((rel: (225deg, 10pt), to: Bp), [$B'$])
      content((rel: (-45deg, 10pt), to: Cp), [$C'$])
      content((rel: (145deg, 0.5), to: (A, 50%, B)), [$c$])
      content((rel: (145deg, 0.8), to: (Ap, 50%, Bp)), [$k dot c$])
      content((rel: (-90deg, 0.5), to: (B, 50%, C)), [$a$])
      content((rel: (-90deg, 0.5), to: (Bp, 50%, Cp)), [$k dot a$])
      content((rel: (25deg, 0.5), to: (A, 50%, C)), [$b$])
      content((rel: (25deg, 0.8), to: (Ap, 50%, Cp)), [$k dot b$])
      angle(B, C, A, radius: 0.6)
      angle(B, C, A, radius: 0.7)
      angle(Bp, Cp, Ap, radius: 0.6)
      angle(Bp, Cp, Ap, radius: 0.7)
      angle(A, B, C, radius: 0.6)
      angle(Ap, Bp, Cp, radius: 0.6)
      angle(C, A, B, radius: 0.6)
      content((rel: (150deg, 0.6), to: C), [|], angle: 60deg)
      angle(Cp, Ap, Bp, radius: 0.6)
      content((rel: (150deg, 0.6), to: Cp), [|], angle: 60deg)
    })
  ]
]

#nhanxet()[
  - Nếu $triangle A'B'C' tilde.rev triangle A B C$ với tỉ số đồng dạng $k$ thì $triangle A B C tilde.rev triangle A'B'C'$ với tỉ số đồng dạng $1/k$.

    Do vậy khi $triangle A'B'C' tilde.rev triangle A B C$ thì ta nói hai tam giác $A'B'C'$ và $A B C$ đồng dạng với nhau.

  - Hai tam giác bằng nhau thì đồng dạng với nhau theo tỉ số đồng dạng $k = 1$. Đặc biệt, mọi tam giác đồng dạng với chính nó.

  - Nếu $triangle A''B''C'' tilde.rev triangle A'B'C'$ với tỉ số đồng dạng $k$ và $triangle A'B'C' tilde.rev triangle A B C$ với tỉ số đồng dạng $m$ thì $triangle A''B''C'' tilde.rev triangle A B C$ với tỉ số đồng dạng $k dot m$.
]

#pagebreak()

#vd()[
  Cho tam giác $A B C$ và tam giác $A'B'C'$ sao cho $A B=4$ cm, $A C=6$ cm, $B C=5$ cm, $A' B'=6$ cm, $A'C'=9$ cm, $B'C'=7","5$ cm, $hat(A)=hat(A')$, $hat(B)=hat(B')$ và $hat(C)=hat(C')$. Tam giác $A B C$ và tam giác $A'B'C'$ có là hai tam giác đồng dạng không? Tại sao?
  #loigiai()[
    #dotlineEX(3)
  ]
]

#vd()[
  Trong các tam giác được vẽ trên lưới hình vuông như hình sau, có một cặp tam giác đồng dạng. Hãy chỉ ra cặp tam giác đó, viết đúng kí hiệu đồng dạng và tìm tỉ số đồng dạng của chúng.
  #align(center)[
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 0.5cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
      grid(
        (0, 0),
        (26, 10),
        stroke: gray,
      )
      let A = (6, 9)
      let B = (2, 1)
      let C = (14, 1)
      let D = (14, 5)
      let E = (16, 9)
      let F = (10, 9)
      let G = (18, 7)
      let H = (24, 1)
      let K = (19, 9)
      line(A, B, C, A, fill: gray.lighten(50%).transparentize(70%))
      line(D, E, F, D, fill: gray.lighten(50%).transparentize(70%))
      line(G, H, K, G, fill: gray.lighten(50%).transparentize(70%))
      for i in (A, B, C, D, E, F, G, H, K) {
        circle(i, radius: 1.5pt, fill: black)
      }
      content((rel: (135deg, 10pt), to: A), [$A$])
      content((rel: (225deg, 10pt), to: B), [$B$])
      content((rel: (-50deg, 10pt), to: C), [$C$])
      content((rel: (-60deg, 10pt), to: D), [$D$])
      content((rel: (45deg, 10pt), to: E), [$E$])
      content((rel: (135deg, 10pt), to: F), [$F$])
      content((rel: (150deg, 10pt), to: G), [$G$])
      content((rel: (-45deg, 10pt), to: H), [$H$])
      content((rel: (120deg, 10pt), to: K), [$K$])
    })
  ]
  #loigiai()[
    #dotlineEX(4)
  ]
]

#vd()[
  Cho $triangle A B C tilde.rev triangle M N P$. Chứng minh rằng:
  #listEX()[
    + Nếu tam giác $A B C$ cân tại đỉnh $A$ thì tam giác $M N P$ cân tại đỉnh $M$;
    + Nếu tam giác $A B C$ đều thì tam giác $M N P$ đều;
    + Nếu $A B >= A C >= B C$ thì $M N >= M P >= N P$.
  ]
  #loigiai()[
    #dotlineEX(22)
  ]
]

#subsubsection()[Định lý]

#dl()[
  Nếu một đường thẳng cắt hai cạnh của một tam giác và song song với cạnh còn lại thì nó tạo thành một tam giác mới đồng dạng với tam giác đã cho.
]

#align(center)[
  #grid(
    columns: (auto, auto),
    column-gutter: 1em,
    align: horizon,
    [
      #set text(size: 12pt)
      #table(
        columns: (auto, auto),
        align: (center + horizon, left + horizon),
        stroke: none,
        table.vline(x: 1, stroke: 0.7pt),
        table.hline(y: 1, stroke: 0.7pt),
        [GT],
        [$Delta A B C$, $M N \/\/ B C$ ($M in A B$; $N in A C$)],
        [KL],
        [$triangle A B C tilde.rev triangle A M N$.],
      )
    ],
    [
      #import "@preview/cetz:0.5.2"
      #set text(size: 10pt)
      #cetz.canvas(length: 0.4cm, {
        import cetz.draw: *
        import cetz.angle: *
        set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), padding: 5pt)
        let A = (5, 7)
        let B = (2, 1)
        let C = (11, 1)
        let M = (A, 33.33%, B)
        let N = (A, 33.33%, C)
        line(A, B, C, A)
        line((M, -1.5, N), N)
        line(M, (N, -1.5, M))
        content((rel: (100deg, 10pt), to: A), [$A$])
        content((rel: (225deg, 10pt), to: B), [$B$])
        content((rel: (-45deg, 10pt), to: C), [$C$])
        content((rel: (135deg, 10pt), to: M), [$M$])
        content((rel: (65deg, 10pt), to: N), [$N$])
      })
    ],
  )
]

#luuy()[
  - Định lý này được chứng minh dựa trên Hệ quả định lý Thalès.
  - #immini()[
      Định lí trên vẫn đúng nếu thay bằng đường thẳng cắt phần kéo dài của hai cạnh tam giác.
    ][
      #set text(size: 10pt)
      #import "@preview/cetz:0.5.2"
      #cetz.canvas(length: 0.4cm, {
        import cetz.draw: *
        import cetz.angle: *
        set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), padding: 5pt)
        let A = (5, 6)
        let B = (2, 1)
        let C = (11, 1)
        let M = (A, -33.33%, B)
        let N = (A, -33.33%, C)
        line(A, B, C, A)
        line((M, -2.5, N), N)
        line(M, (N, -1.5, M))
        line(A, M, stroke: (dash: "dashed"))
        line(A, N, stroke: (dash: "dashed"))
        content((rel: (10deg, 10pt), to: A), [$A$])
        content(B, [$B$], anchor: "north-east")
        content(C, [$C$], anchor: "north-west")
        content(M, [$M$], anchor: "south")
        content(N, [$N$], anchor: "south")
      })
    ]
]

#vd()[
  #immini()[
    Trong hình bên, các đường thẳng $A B$, $C D$, $E F$ song song với nhau. Hãy liệt kê ba cặp tam giác (phân biệt) đồng dạng.
  ][
    #set text(size: 10pt)
    #import "@preview/cetz:0.5.2"
    #cetz.canvas(length: 0.7cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), padding: 5pt)
      let A = (0, 0)
      let B = (0, -4)
      let O = (4, -2)
      let C = (A, 40%, O)
      let D = (B, 40%, O)
      let E = (O, -30%, B)
      let F = (O, -30%, A)
      line(A, F, E, B, A)
      line(C, D)
      content((rel: (100deg, 10pt), to: A), [$A$])
      content((rel: (225deg, 10pt), to: B), [$B$])
      content((rel: (60deg, 10pt), to: C), [$C$])
      content((rel: (-60deg, 10pt), to: D), [$D$])
      content((rel: (90deg, 10pt), to: O), [$O$])
      content((rel: (40deg, 10pt), to: E), [$E$])
      content((rel: (-40deg, 10pt), to: F), [$F$])
    })
  ]
  #loigiai()[
    #dotlineEX(8)
  ]
]

#subsection()[Bài tập tự luận]

#bt()[
  Trong khẳng định sau, khẳng định nào đúng, khẳng định nào sai? Tại sao?
  #listEX()[
    + Hai tam giác bằng nhau thì đồng dạng với nhau.
    + Hai tam giác đồng dạng với nhau thì bằng nhau.
  ]
]

#bt()[
  Cho tam giác $A B C$ với $A B=4$ cm, $B C=6$ cm, $A C=5$ cm. Vẽ tam giác $D E F$ đồng dạng với tam giác $A B C$ theo tỉ số đồng dạng $k = 1/2$.
]

#bt()[
  #immini()[
    Trong hình bên, cho biết: $triangle A B C tilde.rev triangle D E F$. Viết các tỉ số của các cạnh tương ứng và chỉ ra các cặp góc tương ứng.
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 0.5cm, {
      import cetz.draw: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), padding: 5pt)
      let scale = 2
      let B = (0, 0)
      let A = (2, 2)
      let C = (3, 0)
      let E = (5, 0)
      let D = (E.at(0) + (A.at(0) - B.at(0)) * scale, E.at(1) + (A.at(1) - B.at(1)) * scale)
      let F = (E.at(0) + (C.at(0) - B.at(0)) * scale, E.at(1) + (C.at(1) - B.at(1)) * scale)
      line(A, B, C, A)
      line(D, E, F, D)
      content((rel: (90deg, 10pt), to: A), [$A$])
      content((rel: (225deg, 10pt), to: B), [$B$])
      content((rel: (-45deg, 10pt), to: C), [$C$])
      content((rel: (90deg, 10pt), to: D), [$D$])
      content((rel: (225deg, 10pt), to: E), [$E$])
      content((rel: (-45deg, 10pt), to: F), [$F$])
    })
  ]
]

#bt()[
  #immini()[
    Trong hình bên, cho biết $triangle A B C tilde.rev triangle D M N$. Tính số đo góc $D$, góc $N$.
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 0.5cm, {
      import cetz.draw: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), padding: 5pt)
      let scale = 2
      let M = (0, 0)
      let N = (3, 0)
      let t = 3 * calc.sin(53deg) / calc.sin(57deg)
      let D = (t * calc.cos(70deg), t * calc.sin(70deg))
      let B = (5, 0)
      let A = (B.at(0) + (D.at(0) - M.at(0)) * scale, B.at(1) + (D.at(1) - M.at(1)) * scale)
      let C = (B.at(0) + (N.at(0) - M.at(0)) * scale, B.at(1) + (N.at(1) - M.at(1)) * scale)
      line(A, B, C, A)
      line(D, M, N, D)
      content((rel: (90deg, 10pt), to: A), [$A$])
      content((rel: (225deg, 10pt), to: B), [$B$])
      content((rel: (-45deg, 10pt), to: C), [$C$])
      content((rel: (90deg, 10pt), to: D), [$D$])
      content((rel: (225deg, 10pt), to: M), [$M$])
      content((rel: (-45deg, 10pt), to: N), [$N$])
      content((rel: (-80deg, 20pt), to: A), [$57 degree$])
      content((rel: (30deg, 15pt), to: B), [$70 degree$])
    })
  ]
]

#bt()[
  #immini()[
    Trong hình bên, cho biết $A B \/\/ D E$.
    #listEX()[
      + Chứng minh: $triangle A B C tilde.rev triangle D E C$.
      + Tìm $x$.
    ]
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 0.5cm, {
      import cetz.draw: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), padding: 5pt)
      let C = (3, 2)
      let k = 0.5
      let dir1 = (-3, 2)
      let dir2 = (-1, -1)
      let A = (C.at(0) + 3 * k * dir1.at(0), C.at(1) + 3 * k * dir1.at(1))
      let D = (C.at(0) - 5 * k * dir1.at(0), C.at(1) - 5 * k * dir1.at(1))
      let B = (C.at(0) + 3 * k * dir2.at(0), C.at(1) + 3 * k * dir2.at(1))
      let E = (C.at(0) - 5 * k * dir2.at(0), C.at(1) - 5 * k * dir2.at(1))
      line(A, D)
      line(B, E)
      line(A, B)
      line(D, E)
      let midAB = (A, 50%, B)
      let midAC = (A, 50%, C)
      let midCD = (C, 50%, D)
      let midDE = (D, 50%, E)
      content((rel: (135deg, 10pt), to: A), [$A$])
      content((rel: (-135deg, 10pt), to: B), [$B$])
      content((rel: (90deg, 10pt), to: C), [$C$])
      content((rel: (-45deg, 10pt), to: D), [$D$])
      content((rel: (45deg, 10pt), to: E), [$E$])
      content((rel: (180deg, 8pt), to: midAB), [$6$])
      content((rel: (45deg, 8pt), to: midAC), [$x-2$], angle: -30deg)
      content((rel: (-135deg, 8pt), to: midCD), [$20$])
      content((rel: (10deg, 8pt), to: midDE), [$10$])
    })
  ]
]

#bt()[
  Cho $triangle A B C tilde.rev triangle D E F$ theo tỉ số đồng dạng $k = 3/5$.
  #listEX()[
    + Tính tỉ số chu vi của hai tam giác đã cho.
    + Cho biết hiệu chu vi của hai tam giác trên là 36 cm, tính chu vi của mỗi tam giác.
  ]
]

#bt()[
  #immini()[
    Người ta ứng dụng hai tam giác đồng dạng để đo khoảng cách $B C$ ở hai địa điểm không thể đến được (Hình bên). Biết $D E \/\/ B C$.
    #listEX()[
      + Chứng minh: $triangle A D E tilde.rev triangle A B C$.
      + Tính khoảng cách $B C$.
    ]
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)

    #cetz.canvas(length: 0.1cm, {
      import cetz.draw: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), padding: 5pt)

      let B = (0, 0)
      let A = (B.at(0) + 30 * calc.cos(110deg), B.at(0) + 30 * calc.sin(110deg))
      let D = (B.at(0) + 14 * calc.cos(110deg), B.at(0) + 14 * calc.sin(110deg))
      let E = (D.at(0) + 22, D.at(1) + 0)
      let C = (B.at(0) + 41.25, B.at(1) + 0)
      hobby(
        B,
        (8, 4),
        (18, 5.5),
        (28, 4.5),
        (36, 3),
        C,
        (35, -3),
        (26, -4.5),
        (15, -4),
        (6, -2.5),
        close: true,
        fill: rgb("#d4f1f9"), // Màu xanh nước nhạt
        stroke: rgb("#4a90e2") + 1.2pt, // Đường viền vũng nước
      )
      line(A, B)
      line(B, C, stroke: (dash: "dashed", thickness: 0.7pt))
      line(C, A)
      line(D, E)
      line((rel: (200deg, 5), to: A), (rel: (200deg, 5), to: B), mark: (start: "stealth", end: "stealth"))
      content((rel: (180deg, 10), to: D), [$30$ m])
      content((rel: (135deg, 10pt), to: A), [$A$])
      content((rel: (-135deg, 10pt), to: B), [$B$])
      content((rel: (-35deg, 10pt), to: C), [$C$])
      content((rel: (180deg, 7pt), to: D), [$D$])
      content((rel: (45deg, 10pt), to: E), [$E$])
      content((rel: (-90deg, 6pt), to: (D, 50%, E)), [$22$ m])
      content((rel: (0deg, 6pt), to: (A, 50%, D)), [$16$ m], angle: -70deg)
    })
  ]
]
