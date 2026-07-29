#import "../style/lib.typ": *
#show: appearance

#section()[Ba trường hợp đồng dạng của tam giác]

#subsection()[Lý thuyết]

#subsubsection()[Trường hợp đồng dạng thứ nhất của tam giác]

#dl(tieude: "Trường hợp đồng dạng cạnh - cạnh - cạnh")[
  Nếu ba cạnh của tam giác này _tỉ lệ_ với ba cạnh của tam giác kia thì hai tam giác đó _đồng dạng_ với nhau.
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
        pad(3pt)[
          $triangle A B C$ và $triangle A'B'C'$

          $(A'B')/(A B)=(A'C')/(A C)=(B'C')/(B C)$
        ],
        [KL],
        [
          $triangle A'B'C' tilde.rev triangle A B C$ (c.c.c).
        ],
      )
    ],
    [
      #import "@preview/cetz:0.5.2"
      #set text(size: 10pt)
      #cetz.canvas(length: 0.7cm, {
        import cetz.draw: *
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
      })
    ],
  )
]

#vd()[
  Cho tam giác $A B C$ có chu vi bằng $18$ cm và tam giác $D E F$ có chu vi bằng $27$ cm. Biết rằng $A B = 4$ cm, $B C = 6$ cm, $D E = 6$ cm, $F D = 12$ cm. Chứng minh $triangle A B C tilde.rev triangle D E F$.
  #loigiai()[
    #dotlineEX(15)
  ]
]

#subsubsection()[Trường hợp đồng dạng thứ hai của tam giác]

#dl(tieude: "Trường hợp đồng dạng cạnh - góc - cạnh")[
  Nếu hai cạnh của tam giác này tỉ lệ với hai cạnh của tam giác kia và hai góc tạo bởi các cặp cạnh đó bằng nhau thì hai tam giác đó đồng dạng với nhau.
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
        pad(3pt)[
          $triangle A B C$ và $triangle A'B'C'$

          $(A'B')/(A B)=(A'C')/(A C)$

          $hat(B' A' C')=hat(B A C)$
        ],
        [KL],
        [
          $triangle A'B'C' tilde.rev triangle A B C$ (c.g.c).
        ],
      )
    ],
    [
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
        content((rel: (25deg, 0.5), to: (A, 50%, C)), [$b$])
        content((rel: (25deg, 0.8), to: (Ap, 50%, Cp)), [$k dot b$])
        angle(A, B, C, radius: 0.7)
        angle(Ap, Bp, Cp, radius: 0.7)
      })
    ],
  )
]

#vd()[
  Cho $triangle A'B'C' tilde.rev triangle A B C$ và $M$, $M'$ lần lượt là trung điểm của các cạnh $B C$, $B'C'$. Chứng minh rằng $triangle A'B'M' tilde.rev triangle A B M$.
  #loigiai()[
    #dotlineEX(15)
  ]
]

#subsubsection()[Trường hợp đồng dạng thứ ba của tam giác]

#dl(tieude: "Trường hợp đồng dạng góc - góc")[
  Nếu hai góc của tam giác này lần lượt bằng hai góc của tam giác kia thì hai tam giác đó đồng dạng với nhau.
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
        pad(3pt)[
          $triangle A B C$ và $triangle A'B'C'$

          $hat(A' B' C')=hat(A B C)$

          $hat(B' A' C')=hat(B A C)$
        ],
        [KL],
        [
          $triangle A'B'C' tilde.rev triangle A B C$ (g.g).
        ],
      )
    ],
    [
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
        angle(B, C, A, radius: 0.6)
        angle(B, C, A, radius: 0.7)
        angle(Bp, Cp, Ap, radius: 0.6)
        angle(Bp, Cp, Ap, radius: 0.7)
        angle(A, B, C, radius: 0.7)
        angle(Ap, Bp, Cp, radius: 0.7)
      })
    ],
  )
]

#vd()[
  #immini()[
    Cho các điểm $A$, $B$, $C$, $D$ như hình bên. Biết rằng $hat(A B C)=hat(A D B)$. Hãy chứng minh $triangle A B C tilde.rev triangle A D B$ và $A B^2=A D dot A C$.
  ][
    #set text(size: 10pt)
    #import "@preview/cetz:0.5.2"

    #align(center)[
      #cetz.canvas(length: 0.5cm, {
        import cetz.draw: *
        import cetz.angle: *
        set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), padding: 5pt)
        let A = (0, 0)
        let B = (6, 0)
        hide({
          line(A, (rel: (angle: 22deg, radius: 10)), name: "rayAD")
          line(B, (rel: (angle: 52deg, radius: 10)), name: "rayBD")
          line(B, (rel: (angle: 150deg, radius: 10)), name: "rayBC")
        })
        intersections("D_i", "rayAD", "rayBD")
        let D = "D_i.0"
        intersections("C_i", "rayAD", "rayBC")
        let C = "C_i.0"
        line(A, B)
        line(A, D)
        line(B, D)
        line(B, C)
        angle(D, C, B, radius: 1)
        angle(B, C, A, radius: 1)
        content(A, [$A$], anchor: "north-east", padding: 3pt)
        content(B, [$B$], anchor: "north-west", padding: 3pt)
        content(C, [$C$], anchor: "south-east", padding: 3pt)
        content(D, [$D$], anchor: "south-west", padding: 3pt)
      })
    ]
  ]
  #loigiai()[
    #dotlineEX(15)
  ]
]

#subsection()[Bài tập tự luận]

#bt()[
  #immini()[
    #listEX()[
      + $triangle A'B'C' F$ và $triangle A B C$ ở hình bên có đồng dạng không? Vì sao?
      + Biết $triangle A B C$ có chu vi bằng $30$ cm. Tính chu vi $triangle A'B'C'$.
    ]
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 0.7cm, {
      import cetz.draw: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), padding: 5pt)
      let scale = 0.5
      let B = (0, 0)
      let A = (2, 4)
      let C = (6, 0)
      let Bp = (8, 0)
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
      content((rel: (145deg, 0.5), to: (A, 50%, B)), [$2c$])
      content((rel: (145deg, 0.5), to: (Ap, 50%, Bp)), [$c$])
      content((rel: (-90deg, 0.5), to: (B, 50%, C)), [$2a$])
      content((rel: (-90deg, 0.5), to: (Bp, 50%, Cp)), [$a$])
      content((rel: (25deg, 0.5), to: (A, 50%, C)), [$2b$])
      content((rel: (25deg, 0.5), to: (Ap, 50%, Cp)), [$b$])
    })
  ]
]

#bt()[
  Tam giác $A B C$ có độ dài $A B = 4$ cm, $A C = 12$ cm, $B C = 18$ cm. $triangle D E F tilde.rev triangle A B C$ và $triangle D E F$ có chu vi bằng $66","5$ cm. Hãy tính độ dài các cạnh của $triangle D E F$.
]

#bt()[
  Chứng minh: tam giác $A B C$ đồng dạng với tam giác $D E F$ và viết các cặp góc bằng nhau, nếu biết một trong các trường hợp sau:
  #listEX()[
    + $A B = 4$ cm, $B C = 6$ cm, $A C = 5$ cm, $D E = 10$ cm, $D F = 12$ cm, $E F = 8$ cm.
    + $A B = 24$ cm, $B C = 21$ cm, $A C = 27$ cm, $D E = 28$ cm, $D F = 36$ cm, $E F = 32$ cm.
    + $A B = D E = 12$ cm, $A C = D F = 18$ cm, $B C = 27$ cm, $E F = 8$ cm.
    + $(A B)/3 = (B C)/4 = (A C)/5 = k$, $(D E)/3 = (E F)/4 = (D F)/5 = h$ $(h,k > 0)$.
  ]
]

#bt()[
  Cho tam giác $A B C$ vuông tại $A$ và tam giác $A'B'C'$ vuông tại $A'$ có $B C = 10$ cm, $A C = 8$ cm, $B'C' = 5$ cm, $A'C' = 4$ cm.
  #listEX()[
    + Tính $A B$ và $A'B'$.
    + Chứng minh: $(A B)/(A'B') = (A C)/(A'C') = (B C)/(B'C')$.
    + Chứng minh: tam giác $A B C$ đồng dạng với tam giác $A'B'C'$.
  ]
]

#bt()[
  Cho tam giác $A B C$ vuông tại $A$ và tam giác $A'B'C'$ vuông tại $A'$ có $(A B)/(A'B') = (B C)/(B'C') = 2$.

  Chứng minh:
  #listEX()[
    + $(A C)/(A'C') = 2$.
    + Tam giác $A B C$ đồng dạng với tam giác $A'B'C'$.
  ]
]

#bt()[
  #immini()[
    Cho hai tam giác $A B C$ và $A'B'C'$ có kích thước như trong hình dưới đây:
    #listEX()[
      + $triangle A B C$ và $triangle A'B'C'$ có đồng dạng với nhau không? Vì sao?
      + Tính tỉ số chu vi của hai tam giác đó.
    ]
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 0.3cm, {
      import cetz.draw: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), padding: 5pt)
      let B = (0, 0)
      let C = (12, 0)
      // A xác định từ AB = 6, AC = 9, BC = 12
      let Ax = (6 * 6 - 9 * 9 + 12 * 12) / (2 * 12)
      let Ay = calc.sqrt(6 * 6 - Ax * Ax)
      let A = (Ax, Ay)
      let scale = 2 / 3
      let offset = (12, 4)
      let Bp = offset
      let Cp = (offset.at(0) + 12 * scale, offset.at(1))
      let Ap = (offset.at(0) + Ax * scale, offset.at(1) + Ay * scale)
      line(A, B, C, A)
      line(Ap, Bp, Cp, Ap)
      content((rel: (90deg, 10pt), to: A), [$A$])
      content((rel: (-135deg, 10pt), to: B), [$B$])
      content((rel: (-45deg, 10pt), to: C), [$C$])
      content((rel: (90deg, 10pt), to: Ap), [$A'$])
      content((rel: (-135deg, 10pt), to: Bp), [$B'$])
      content((rel: (-45deg, 10pt), to: Cp), [$C'$])
      content((rel: (135deg, 8pt), to: (A, 50%, B)), [$6$])
      content((rel: (45deg, 8pt), to: (A, 50%, C)), [$9$])
      content((rel: (-90deg, 8pt), to: (B, 50%, C)), [$12$])
      content((rel: (135deg, 8pt), to: (Ap, 50%, Bp)), [$4$])
      content((rel: (45deg, 8pt), to: (Ap, 50%, Cp)), [$6$])
      content((rel: (-90deg, 8pt), to: (Bp, 50%, Cp)), [$8$])
    })
  ]

]

#bt()[
  Tam giác $A B C$ có độ dài các cạnh là $A B = 3$ cm, $A C = 5$ cm, $B C = 7$ cm. Tam giác $A'B'C'$ đồng dạng với tam giác $A B C$ và có chu vi bằng $55$ cm. Hãy tính độ dài các cạnh của tam giác $A'B'C'$ (kết quả làm tròn đến hàng phần trăm).
]

#bt()[
  Cho điểm $O$ nằm trong $triangle A B C$. Gọi $M$, $N$, $P$ lần lượt là trung điểm của $O A$, $O B$, $O C$. Chứng minh: $triangle M N P tilde.rev triangle A B C$.
]

#bt()[
  Cho hai tam giác đồng dạng có tỉ số chu vi là $15/17$ và hiệu độ dài hai cạnh tương ứng của chúng là $12","5$ cm. Tính hai cạnh đó.
]

#bt()[
  #immini()[
    Xét xem các cặp tam giác trong hình bên đồng dạng hay không?
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 0.09cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), padding: 3pt)
      let B = (0, 0)
      let C = (rel: (20deg, 36), to: B)
      let A = (rel: (140deg, 24), to: B)
      let D = (40, 26)
      let E = (rel: (-45deg, 12), to: D)
      let F = (rel: (-165deg, 24), to: D)
      line(A, B, C, A)
      line(D, E, F, D)
      content((rel: (160deg, 10pt), to: A), [$A$])
      content((rel: (-100deg, 10pt), to: B), [$B$])
      content((rel: (10deg, 10pt), to: C), [$C$])
      content((rel: (90deg, 10pt), to: D), [$D$])
      content((rel: (-35deg, 10pt), to: E), [$E$])
      content((rel: (-170deg, 10pt), to: F), [$F$])
      angle(B, C, A, label: none, radius: 4)
      angle(D, F, E, label: none, radius: 2)
      content((rel: (70deg, 20pt), to: B), [$120 degree$])
      content((rel: (-110deg, 12pt), to: D), [$120 degree$])
      content((rel: (-135deg, 10pt), to: (A, 50%, B)), [$24$])
      content((rel: (-45deg, 10pt), to: (C, 50%, B)), [$36$])
      content((rel: (135deg, 10pt), to: (D, 50%, F)), [$18$])
      content((rel: (45deg, 10pt), to: (D, 50%, E)), [$12$])
    })
  ]
]

#bt()[
  #immini()[
    Trong hình bên, cho biết: $D E = 12$ cm, $E F = 15","6$ cm, $N P = 26$ cm, $N M = 20$ cm. $hat(E) = hat(N)$, $hat(P) = 42 degree$. Tính $hat(F)$.
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 0.15cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), padding: 3pt)
      let E = (0, 0)
      let D = (rel: (-90deg, 12), to: E)
      let F = (rel: (-135deg, 15.6), to: E)
      line(D, E, F, D)
      content((rel: (-55deg, 10pt), to: D), [$D$])
      content((rel: (65deg, 10pt), to: E), [$E$])
      content((rel: (-160deg, 10pt), to: F), [$F$])
      content((rel: (0deg, 10pt), to: (E, 50%, D)), [$12$])
      content((rel: (125deg, 12pt), to: (E, 50%, F)), [$15","6$])
      angle(E, F, D, radius: 3, label: none)
      let N = (26, -15)
      let M = (rel: (170deg, 20), to: N)
      let P = (rel: (125deg, 26), to: N)
      line(M, N, P, M)
      content((rel: (-135deg, 10pt), to: M), [$M$])
      content((rel: (-45deg, 10pt), to: N), [$N$])
      content((rel: (100deg, 10pt), to: P), [$P$])
      content((rel: (-100deg, 10pt), to: (N, 50%, M)), [$20$])
      content((rel: (45deg, 12pt), to: (N, 50%, P)), [$26$])
      angle(N, P, M, radius: 3, label: none)
      content((rel: (-80deg, 20pt), to: P), [$50 degree$])
    })
  ]
]

#bt()[
  Cho góc $x O y$. Trên tia $O x$ lấy các điểm $A$ và $C$, trên tia $O y$ lấy các điểm $B$ và $D$. Chứng minh rằng: tam giác $A O B$ đồng dạng với tam giác $C O D$ nếu biết một trong các trường hợp sau:
  #listEX()[
    + $(O A)/(O D) = (O B)/(O C)$.
    + $(O A)/(O B) = (O C)/(O D)$.
    + $(O A)/(O B) = (O D)/(O C)$.
    + $O A dot O C = O B dot O D$.
    + $O A dot O D = O B dot O C$.
    + $C$ là trung điểm của $O A$, $D$ là trung điểm của $O B$.
  ]
]

#bt()[
  Cho tam giác $A B C$ có $A B = 12$ cm, $A C = 15$ cm, $B C = 18$ cm. Trên cạnh $A B$ lấy điểm $M$ sao cho $A M = 10$ cm, trên cạnh $A C$ lấy điểm $N$ sao cho $A N = 8$ cm. Tính độ dài đoạn thẳng $M N$.
]





#bt()[
  Cho góc $x O y$. Trên tia $O x$ lấy các điểm $M$ và $P$, trên tia $O y$ lấy các điểm $N$ và $Q$. Chứng minh rằng: tam giác $O M N$ đồng dạng với tam giác $O P Q$ và tính độ dài đoạn $P Q$, nếu biết một trong các trường hợp sau:
  #listEX()[
    + $(O M)/(O P) = (O N)/(O Q) = 2/3$; $M N = 3","6$ cm.
    + $(O M)/(O Q) = (O N)/(O P) = 4/5$; $M N = 3","2$ cm.
    + $O M = 12$ cm, $O N = 10$ cm, $M N = 9$ cm, $O P = 20$ cm, $O Q = 24$ cm.
  ]
]

#bt()[
  Cho $triangle A B C$ nhọn, các đường cao $A D$, $B E$, $C F$ cắt nhau tại $H$.
  #listEX()[
    + Chứng minh: tam giác $A E B$ đồng dạng tam giác $A F C$ và $A E dot A C = A F dot A B$.
    + Chứng minh $triangle A E F tilde.rev triangle A B C$ rồi suy ra $hat(A E F) = hat(A B C)$.
    + Chứng minh $triangle B D A tilde.rev triangle B F C$ và $B D dot B C = B F dot B A$.
    + Chứng minh $triangle B D F tilde.rev triangle B A C$ rồi suy ra $hat(B D F) = hat(B A C)$.
    + Chứng minh: $C E dot C A = C D dot C B$.
    + Chứng minh $triangle C D E tilde.rev triangle C A B$ rồi suy ra $hat(C D E) = hat(C A B)$.
  ]
]

#bt()[
  Cho $triangle A B C$ nhọn, có ba đường cao $A D$, $B E$, $C F$ cắt nhau tại $H$. Chứng minh:
  #listEX()[
    + $B H dot B E = B D dot B C$.
    + $triangle B C H tilde.rev triangle B E D$.
  ]
]

#bt()[
  Cho tam giác $A B C$, trên tia đối của tia $A B$ lấy điểm $D$, trên tia đối của tia $A C$ lấy điểm $E$. Chứng minh rằng: tam giác $A D E$ đồng dạng với tam giác $A B C$ và tính độ dài đoạn $D E$ nếu biết một trong các trường hợp sau:
  #listEX()[
    + $(A D)/(A B) = (A E)/(A C) = 3/5$; $B C = 15$ cm.
    + $(A D)/(A C) = (A E)/(A B) = 13/12$; $B C = 6","5$ cm.
    + $A B = 36$ cm; $A C = 10$ cm; $B C = 39$ cm; $A D = 24$ cm; $A E = 20$ cm.
    + $A B = 3","2$ cm; $A C = 2","8$ cm; $B C = 2","4$ cm; $A D = 3","5$ cm; $A E = 4$ cm.
  ]
]

#bt()[
  Cho hình thang $A B C D$ có $hat(A) = hat(D) = 90 degree$. Trên cạnh $A D$ lấy điểm $I$. Chứng minh: tam giác $A B I$ đồng dạng với tam giác $D I C$ và $hat(B I C) = 90 degree$ nếu biết một trong các trường hợp sau:
  #listEX()[
    + $(A B)/(D I) = (A I)/(D C)$.
    + $A B dot D C = A I dot D I$.
    + $A B = 6$ cm; $C D = 12$ cm; $A I = 8$ cm; $D I = 9$ cm.
    + $A B = 2","4$ cm; $C D = 4","5$ cm; $A I = 3$ cm; $D I = 3","6$ cm.
    + $A B = 10$ cm; $A D = 10$ cm; $C D = 18$ cm; $A I = 12$ cm.
  ]
]

#bt()[
  Cho tam giác $A B C$ nhọn có $A H$ là đường cao. Qua $H$ vẽ $H M perp A B$ tại $M$, $H N perp A C$ tại $N$. Chứng minh:
  #listEX()[
    + $A H^2 = A M dot A B$.
    + $A M dot A B = A N dot A C$ và $triangle A N M tilde.rev triangle A B C$.
  ]
]

#bt()[
  Cho tam giác $A B C$ có ba góc nhọn và ba đường cao $A D$, $B E$, $C F$ cắt nhau tại $H$. Chứng minh:
  #listEX()[
    + $B D dot B C = B F dot B A$.
    + tam giác $B D F tilde.rev$ tam giác $B A C$ và suy ra $hat(B D F) = hat(B A C)$.
    + $hat(C D E) = hat(B A C)$.
    + $D H$ là tia phân giác của $hat(F D E)$.
  ]
]

#bt()[
  Cho tam giác $A B C$ có ba góc nhọn và ba đường cao $A D$, $B E$, $C F$ cắt nhau tại $H$.
  #listEX()[
    + Chứng minh: $A H dot A D = A F dot A B$.
    + Chứng minh: tam giác $A D F$ đồng dạng với tam giác $A B H$ và suy ra $hat(H D F) = hat(A B H)$.
    + Chứng minh: $hat(A D E) = hat(A C H)$ và $hat(A B H) = hat(A C H)$.
    + Chứng minh: $H$ là giao điểm của ba đường phân giác trong của tam giác $D E F$.
  ]
]

#bt()[
  Cho hình thang vuông $A B C D$ $(hat(A) = hat(D) = 90 degree)$. Biết $A B = 6$ cm, $C D = 12$ cm, $A D = 17$ cm. Trên cạnh $A D$ lấy điểm $K$ sao cho $A K = 8$ cm.
  #listEX()[
    + Chứng minh: $hat(A B K) = hat(D K C)$.
    + Chứng minh: $K B perp K C$.
  ]
]

#bt()[
  Cho tam giác $A B C$ vuông tại $A$, có $A H$ là đường cao. Gọi $I$ và $K$ lần lượt là hình chiếu của $H$ lên $A B$ và $A C$.
  #listEX()[
    + Chứng minh: $A H^2 = A I dot A B$.
    + Chứng minh: tam giác $A I K tilde.rev$ tam giác $A C B$.
    + Biết $B C = 10$ cm, $A H = 4","8$ cm, tính $S_(A I K)$?
  ]
]

#bt()[
  Cho tam giác $A B C$ nhọn, có ba đường cao $A D$, $B E$, $C F$ cắt nhau tại $H$.
  #listEX()[
    + Chứng minh: $C H dot C F = C D dot C B$.
    + Chứng minh: tam giác $B C H tilde.rev$ tam giác $F C D$.
    + Gọi $K$ là giao điểm của $E F$ và $A H$. Chứng minh: $F H$ là đường phân giác trong của tam giác $F D K$ và $A D dot H K = A K dot D H$.
  ]
]

#bt()[
  Cho tam giác $A B C$ vuông tại $A$ có $A H$ là đường cao. Biết $A B = 15$ cm, $A C = 20$ cm.
  #listEX()[
    + Chứng minh: tam giác $H B A$ đồng dạng tam giác $A B C$. Suy ra $A B^2 = B H dot B C$.
    + Tính $B C$, $A H$, $B H$, $H C$.
    + Đường phân giác $hat(B A C)$ cắt $B C$ tại $M$. Kẻ $M E perp A B$ tại $E$. Chứng minh: $B E dot B A = B H dot B M$.
    + Tính $hat(B H E)$.
  ]
]

#bt()[
  Cho tam giác $A B C$ nhọn, hai đường cao $B E$, $C F$ cắt nhau tại $H$.
  #listEX()[
    + Chứng minh: tam giác $A C F$ đồng dạng tam giác $H C E$.
    + Chứng minh: $A E dot C F = A F dot B E$.
    + Chứng minh: $hat(A E F) = hat(A B C)$.
    + Cho $hat(B A C) = 45 degree$. Chứng minh: $S_(A E F) = S_(B F E C)$.
  ]
]

#bt()[
  Cho tam giác $A B C$ vuông tại $A$ $(A B < A C)$ có $A D$ là đường cao. Vẽ $D H$ vuông góc với $A B$ tại $H$ và $D K$ vuông góc với $A C$ tại $K$.
  #listEX()[
    + Chứng minh: $triangle D A B tilde.rev triangle D C A$.
    + Gọi $E$ là trung điểm của $C D$, $N$ là giao điểm của $A D$ và $H K$. Chứng minh: $triangle A N B tilde.rev triangle C E A$, rồi suy ra $hat(A N B) = hat(C E A)$.
  ]
]

#bt()[
  Cho tam giác $A B C$ vuông tại $A$ có $A H$ là đường cao ($H$ thuộc $B C$). Biết $A B = 15$ cm, $A C = 20$ cm. Từ $H$ kẻ $H E$, $H F$ lần lượt vuông góc với $A B$, $A C$ tại $E$ và $F$.
  #listEX()[
    + Tính $B C$, $A H$.
    + Chứng minh: tam giác $A E H$ đồng dạng tam giác $A H B$. Suy ra $A H^2 = A E dot A B$.
    + Chứng minh: tam giác $A B C$ đồng dạng tam giác $A F E$.
    + Tính diện tích tứ giác $B C F E$.
  ]
]

#bt()[
  Cho tam giác $A B C$ vuông tại $A$ $(A B < A C)$ có $A H$ là đường cao.
  #listEX()[
    + Chứng minh: tam giác $A B C$ đồng dạng tam giác $H B A$ và suy ra $A B^2 = B H dot B C$.
    + tam giác $A H B$ đồng dạng tam giác $C H A$ và suy ra $A H^2 = H B dot H C$.
    + Chọn điểm $E$ nằm trong tam giác $A H C$ sao cho $B E = B A$. Vẽ $B K$ là đường cao của tam giác $B E C$. Gọi $S$ là giao điểm của $B K$ và $A H$. Chứng minh: tam giác $B K C$ đồng dạng tam giác $B H S$ và suy ra $A B^2 = B K dot B S$.
    + Chứng minh: $B E perp S E$.
  ]
]

#bt()[
  Cho tam giác $A B C$ có ba góc nhọn, hai đường cao $A M$ và $B N$ cắt nhau tại $H$.
  #listEX()[
    + Chứng minh: tam giác $A M C$ đồng dạng tam giác $B N C$.
    + Chứng minh: $hat(C M N) = hat(C A B)$.
    + Vẽ $C K perp A B$ tại $K$. Chứng minh: $C H dot C K = C M dot C B$.
  ]
]

#bt()[
  Cho tam giác $A B C$ vuông tại $A$ $(A B < A C)$ có $A H$ là đường cao ($H$ thuộc $B C$).
  #listEX()[
    + Chứng minh: tam giác $A B H tilde.rev$ tam giác $B A C$, từ đó suy ra $B A^2 = B H dot B C$.
    + Lấy 2 điểm $M$, $N$ lần lượt thuộc cạnh $A B$, $A C$ sao cho $A M = 1/3 A B$, $C N = 1/3 A C$. Chứng minh: tam giác $A M H tilde.rev$ tam giác $C N H$, từ đó suy ra tam giác $M N H$ vuông tại $H$.
  ]
]

#bt()[
  Cho tam giác $A B C$ vuông tại $A$ có $A B = 15$ cm, $A C = 20$ cm. Vẽ $A H perp B C$ tại $H$.
  #listEX()[
    + Chứng minh: tam giác $H B A$ đồng dạng tam giác $A B C$.
    + Tính độ dài các cạnh $B C$, $A H$.
    + Vẽ tia phân giác của góc $B A H$ cắt cạnh $B H$ tại $D$. Tính độ dài các cạnh $B D$, $D H$.
    + Trên cạnh $H C$ lấy điểm $E$ sao cho $H E = H A$, qua $E$ vẽ đường thẳng vuông góc với cạnh $B C$ cắt cạnh $A C$ tại $M$, qua $C$ vẽ đường thẳng vuông góc với cạnh $B C$ cắt tia phân giác của góc $M E C$ tại $F$. Chứng minh: ba điểm $H$, $M$, $F$ thẳng hàng.
  ]
]

#bt()[
  Chứng minh tam giác $A B C$ và tam giác $D E F$ đồng dạng với nhau và viết tỉ số đồng dạng, nếu biết một trong các trường hợp sau:
  #listEX()[
    + $hat(A B C) = hat(D E F)$, $hat(A C B) = hat(D F E)$.
    + $hat(B A C) = hat(D E F)$, $hat(A B C) = hat(E D F)$.
    + $hat(B A C) = 60 degree$, $hat(A B C) = 80 degree$, $hat(D E F) = 60 degree$, $hat(F D E) = 80 degree$.
    + $hat(B A C) = 50 degree$, $hat(A B C) = 70 degree$, $hat(D E F) = 70 degree$, $hat(F D E) = 60 degree$.
  ]
]

#bt()[
  Cho tam giác $A B C$, trên cạnh $A B$ lấy điểm $D$, trên cạnh $A C$ lấy điểm $E$ sao cho $D E \/\/ B C$. Chứng minh: tam giác $A D E$ đồng dạng với tam giác $A B C$ và viết tỉ số đồng dạng.
]

#bt()[
  Cho $triangle A B C$ có 3 góc nhọn. Ba đường cao $A D$, $B E$, $C F$ cắt nhau tại $H$. Chứng minh: tam giác $A E B$ đồng dạng với tam giác $A F C$. Tính tỉ số đồng dạng với $A B = 8$ cm; $A C = 12$ cm.
]

#bt()[
  Cho tam giác $A B C$, trên tia đối của tia $A B$ lấy điểm $D$, trên tia đối của tia $A C$ lấy điểm $E$ sao cho $D E \/\/ B C$. Chứng minh: tam giác $A D E$ đồng dạng với tam giác $A B C$ và viết tỉ số đồng dạng.
]

#bt()[
  Cho tam giác $A B C$ có $A B < A C$. Trên cạnh $A C$ lấy điểm $D$ sao cho $hat(A B D) = hat(A C B)$.
  #listEX()[
    + Chứng minh: tam giác $A B D$ đồng dạng với tam giác $A C B$.
    + Chứng minh: $A B^2 = A D dot A C$.
  ]
]

#bt()[
  Cho tam giác $A B C$ có $A B > A C$. Trên cạnh $A B$ lấy điểm $D$ sao cho $hat(A C D) = hat(A B C)$. Chứng minh: $A C^2 = A D dot A B$.
]

#bt()[
  Cho tam giác $A B C$, trên cạnh $A B$ lấy điểm $D$, trên cạnh $A C$ lấy điểm $E$ sao cho $hat(A D E) = hat(A C B)$.
  #listEX()[
    + Chứng minh: tam giác $A D E$ đồng dạng với tam giác $A C B$ và viết tỉ số đồng dạng.
    + Chứng minh: $A D dot A B = A E dot A C$.
  ]
]

#bt()[
  Cho tam giác $A B C$ nhọn $(A B < A C)$, ba đường cao $A D$, $B E$, $C F$ cắt nhau tại $H$.
  #listEX()[
    + Chứng minh: tam giác $A F H tilde.rev$ tam giác $A D B$.
    + Chứng minh: $A F dot A B = A E dot A C$.
  ]
]

#bt()[
  Cho tam giác $A B C$, trên tia đối của tia $A B$ lấy điểm $D$, trên tia đối của tia $A C$ lấy điểm $E$ sao cho $hat(A D E) = hat(A C B)$.
  #listEX()[
    + Chứng minh: tam giác $A D E$ đồng dạng với tam giác $A C B$ và viết tỉ số đồng dạng.
    + Chứng minh: $A D dot A B = A E dot A C$.
  ]
]

#bt()[
  Cho tam giác $A B C$ có ba góc nhọn và ba đường cao $A D$, $B E$, $C F$.
  #listEX()[
    + Chứng minh: tam giác $A B E$ đồng dạng tam giác $A C F$ và suy ra $A F dot A B = A E dot A C$.
    + Chứng minh: $B F dot B A = B D dot B C$.
    + Chứng minh: $C D dot C B = C E dot C A$.
  ]
]

#bt()[
  Cho tam giác $A B C$ có ba góc nhọn và ba đường cao $A D$, $B E$, $C F$ cắt nhau tại $H$.
  #listEX()[
    + Chứng minh: tam giác $A H E$ đồng dạng tam giác $B H D$ và suy ra $H A dot H D = H B dot H E$.
    + Chứng minh: $H A dot H D = H C dot H F$.
  ]
]

#bt()[
  Cho tam giác $A B C$ có ba góc nhọn và ba đường cao $A D$, $B E$, $C F$ cắt nhau tại $H$.
  #listEX()[
    + So sánh: $hat(H B D)$ và $hat(C A D)$ và chứng minh: $D B dot D C = D A dot D H$.
    + Chứng minh: $E A dot E C = E B dot E H$.
    + Chứng minh: $F A dot F B = F C dot F H$.
  ]
]

#bt()[
  Cho tam giác $A B C$ có ba góc nhọn và ba đường cao $A D$, $B E$, $C F$ cắt nhau tại $H$. Chứng minh:
  #listEX()[
    + $A F dot A B = A H dot A D = A E dot A C$.
    + $B F dot B A = B H dot B E = B D dot B C$.
  ]
]

#bt()[
  Cho tam giác $A B C$ có ba góc nhọn và ba đường cao $A D$, $B E$, $C F$. Chứng minh: $B F dot B A + C E dot C A = B C^2$ và viết hai hệ thức tương tự.
]

#bt()[
  Cho tam giác $A B C$ có ba góc nhọn và ba đường cao $A D$, $B E$, $C F$ cắt nhau tại $H$. Chứng minh: $B H dot B E + C H dot C F = B C^2$ và viết hai hệ thức tương tự.
]

#bt()[
  Cho tam giác $A B C$ vuông tại $A$, đường cao $A H$.
  #listEX()[
    + Chứng minh: tam giác $A B C$ đồng dạng tam giác $H B A$.
    + Chứng minh: $A H^2 = B H dot H C$.
    + Chứng minh: tam giác $H A B$ đồng dạng tam giác $H C A$.
    + Cho $B H = 9$ cm, $H C = 16$ cm. Tính $H A$.
  ]
]

#bt()[
  Cho tam giác $A B C$ vuông tại $A$, $A C = 8$ cm, $B C = 20$ cm. Đường trung trực của đoạn $B C$ cắt đường thẳng $A C$ tại $D$, cắt $B C$ tại $I$.
  #listEX()[
    + Chứng minh: tam giác $C A B tilde.rev$ tam giác $C I D$.
    + Tính độ dài đoạn $C D$.
  ]
]

#bt()[
  Cho tam giác $A B C$ vuông tại $A$ $(A B < A C)$ và có đường cao $A H$ ($H$ thuộc $B C$).
  #listEX()[
    + Chứng minh: tam giác $A B H tilde.rev$ tam giác $C B A$; tam giác $B A H tilde.rev$ tam giác $A C H$.
    + Đường phân giác của $hat(A B C)$ cắt $A H$ tại $M$ và cắt $A C$ tại $K$. Chứng minh: $B A dot B M = B H dot B K$ và $B A dot B K = B C dot B M$.
  ]
]

#bt()[
  Cho tam giác $A B C$ vuông tại $A$ $(A B < A C)$ có $A H$ là đường cao. $K$ thuộc đoạn $H C$. Từ $K$ vẽ $K E perp A C$ tại $E$. Chứng minh:
  #listEX()[
    + $A B^2 = B H dot B C$.
    + $A H^2 = B H dot C H$.
  ]
]

#bt()[
  Cho tam giác $A B C$ vuông tại $A$ $(A C > A B)$, đường cao $A H$.
  #listEX()[
    + Chứng minh: tam giác $H B A$ đồng dạng tam giác $A B C$. Suy ra $A B^2 = B H dot B C$.
    + Qua $B$ vẽ đường thẳng song song với $A C$ cắt $A H$ tại $D$. Chứng minh: $H A dot H B = H C dot H D$.
    + Chứng minh: $A B^2 = A C dot B D$.
    + Gọi $M$, $N$ lần lượt là trung điểm của $B D$, $A C$. Chứng minh: $M$, $H$, $N$ thẳng hàng.
  ]
]
