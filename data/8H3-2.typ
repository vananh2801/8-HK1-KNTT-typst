
#import "../style/lib.typ": *
#show: appearance

#section()[Hình thang cân]

#subsection()[Lý thuyết]

#subsubsection()[Hình thang. Hình thang cân]

#dn(tieude: "Hình thang")[
  #immini()[
    _Hình thang_ là tứ giác có hai cạnh đối song song.
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 0.9cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
      let A = (0, 0)
      let B = (2.5, 0)
      let C = (4.5, -2)
      let D = (-1, -2)
      let H = (0, -2)
      line(A, B, C, D, A, H)
      right-angle(H, A, C, label: none, radius: 0.3)
      content(A, [$A$], anchor: "south-east", padding: 3pt)
      content(B, [$B$], anchor: "south-west", padding: 3pt)
      content(C, [$C$], anchor: "north-west", padding: 3pt)
      content(D, [$D$], anchor: "north-east", padding: 3pt)
      content(H, [$H$], anchor: "north", padding: 3pt)
      content((A, 50%, B), [đáy nhỏ], anchor: "south", padding: 3pt)
      content((C, 50%, D), [đáy lớn], anchor: "north", padding: 3pt)
      content((A, 50%, D), [cạnh bên], anchor: "south", padding: 3pt, angle: 63deg)
      content((B, 50%, C), [cạnh bên], anchor: "south", padding: 3pt, angle: -45deg)
      content((A, 50%, H), [đường cao], anchor: "west", padding: 3pt)
    })
  ]
]

#vd()[
  #immini()[
    Cho hình thang $A B C D$ ($A B\/\/C D$) như hình bên. Chứng minh rằng hai góc $A$ và $D$ cùng kề cạnh bên $A D$ của hình thang bù nhau.
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 0.7cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
      let A = (1, 0)
      let B = (3.5, 0)
      let C = (4.5, -2)
      let D = (-1, -2)
      line(A, B, C, D, A)
      content(A, [$A$], anchor: "south-east", padding: 3pt)
      content(B, [$B$], anchor: "south-west", padding: 3pt)
      content(C, [$C$], anchor: "north-west", padding: 3pt)
      content(D, [$D$], anchor: "north-east", padding: 3pt)
      angle(A, D, B, radius: 0.4)
      angle(D, C, A, radius: 0.5)
      angle(D, C, A, radius: 0.6)
    })
  ]
  #loigiai()[
    #dotlineEX(3)
  ]
]

#dn(tieude: "Hình thang cân")[
  #immini[
    _Hình thang cân_ là hình thang có hai góc kể một đáy bằng nhau.
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 0.9cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
      let A = (0, 0)
      let B = (3.5, 0)
      let C = (4.5, -2)
      let D = (-1, -2)
      line(A, B, C, D, A)
      content(A, [$A$], anchor: "south-east", padding: 3pt)
      content(B, [$B$], anchor: "south-west", padding: 3pt)
      content(C, [$C$], anchor: "north-west", padding: 3pt)
      content(D, [$D$], anchor: "north-east", padding: 3pt)
      angle(A, D, B, radius: 0.4, stroke: red)
      angle(B, A, C, radius: 0.4, stroke: red)
      angle(D, C, A, radius: 0.4, stroke: blue)
      angle(D, C, A, radius: 0.5, stroke: blue)
      angle(C, B, D, radius: 0.4, stroke: blue)
      angle(C, B, D, radius: 0.5, stroke: blue)
    })
  ]
]

#subsubsection()[Tính chất hình thang cân]

#dl(tieude: "Hai cạnh bên bằng nhau")[
  #immini()[
    Trong hình thang cân, hai cạnh bên bằng nhau.
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 0.9cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
      let A = (0, 0)
      let B = (3, 0)
      let C = (4, -2)
      let D = (-1, -2)
      line(A, B)
      line(B, C, stroke: blue)
      line(C, D)
      line(D, A, stroke: blue)
      content(A, [$A$], anchor: "south-east", padding: 3pt)
      content(B, [$B$], anchor: "south-west", padding: 3pt)
      content(C, [$C$], anchor: "north-west", padding: 3pt)
      content(D, [$D$], anchor: "north-east", padding: 3pt)
      angle(D, C, A, radius: 0.5)
      angle(C, B, D, radius: 0.5)
      content((A, 50%, D), [|], angle: 30deg)
      content((B, 50%, C), [|], angle: -30deg)
    })
  ]
]

#dl(tieude: "Hai đường chéo bằng nhau")[
  #immini()[
    Trong hình thang cân, hai đường chéo bằng nhau.
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 0.9cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
      let A = (0, 0)
      let B = (3, 0)
      let C = (4, -2)
      let D = (-1, -2)
      line(A, B, C, D, A)
      line(A, C, stroke: blue)
      line(B, D, stroke: blue)
      content(A, [$A$], anchor: "south-east", padding: 3pt)
      content(B, [$B$], anchor: "south-west", padding: 3pt)
      content(C, [$C$], anchor: "north-west", padding: 3pt)
      content(D, [$D$], anchor: "north-east", padding: 3pt)
      angle(D, C, A, radius: 0.5)
      angle(C, B, D, radius: 0.5)
      content((A, 50%, C), [|], angle: -30deg)
      content((B, 50%, D), [|], angle: 30deg)
    })
  ]
]

#subsubsection()[Dấu hiệu nhân biết hình thang cân]

#dl(tieude: "Dấu hiệu nhận biết hình thang cân")[
  #immini()[
    Nếu một hình thang có hai đường chéo bằng nhau thì hình thang đó là hình thang cân.
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 0.9cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
      let A = (0, 0)
      let B = (3, 0)
      let C = (4, -2)
      let D = (-1, -2)
      line(A, B, C, D, A)
      line(A, C, stroke: blue)
      line(B, D, stroke: blue)
      content(A, [$A$], anchor: "south-east", padding: 3pt)
      content(B, [$B$], anchor: "south-west", padding: 3pt)
      content(C, [$C$], anchor: "north-west", padding: 3pt)
      content(D, [$D$], anchor: "north-east", padding: 3pt)
      content((A, 50%, C), [|], angle: -30deg)
      content((B, 50%, D), [|], angle: 30deg)
    })
  ]
]

#subsection()[Bài tập tự luận]

#bt()[
  Tìm $x$ và $y$ trong các hình sau:
  #listEX()[
    + #box[
        #import "@preview/cetz:0.5.2"
        #set text(size: 10pt)
        #cetz.canvas(length: 0.7cm, {
          import cetz.draw: *
          import cetz.angle: *
          set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
          let D = (0, 0)
          let A = (1.5, 2.5)
          let B = (4.0, 2.5)
          hide({
            line(B, (rel: (angle: -40deg, radius: 5)), name: "rayBC")
            line(D, (rel: (angle: 0deg, radius: 8)), name: "rayDC")
          })
          intersections("C_i", "rayBC", "rayDC")
          let C = "C_i.0"
          line(A, B, C, D, close: true)
          content(A, [$A$], anchor: "south", padding: 5pt)
          content(B, [$B$], anchor: "south", padding: 5pt)
          content(C, [$C$], anchor: "west", padding: 5pt)
          content(D, [$D$], anchor: "east", padding: 5pt)
          content((rel: (angle: 250deg, radius: 0.4), to: B), [$140 degree$], size: 8pt)
          content((rel: (angle: 160deg, radius: 0.4), to: C), [$x$], size: 8pt)
          content((rel: (0, -0.4), to: (D, 50%, C)), [$A B\/\/C D$], size: 9pt)
        })
      ]
    + #box[
        #import "@preview/cetz:0.5.2"
        #set text(size: 10pt)
        #cetz.canvas(length: 0.7cm, {
          import cetz.draw: *
          import cetz.angle: *
          set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
          let M = (0, 0)
          let Q = (0, 2.5)
          let N = (rel: (angle: -30deg, radius: 3.5), to: M)
          hide({
            line(Q, (rel: (angle: -30deg, radius: 6)), name: "rayQP")
            line(N, (rel: (angle: 40deg, radius: 5)), name: "rayNP")
          })
          intersections("P_i", "rayQP", "rayNP")
          let P = "P_i.0"
          line(M, Q, P, N, close: true)
          line(N, (rel: (angle: -30deg, radius: 1.2), to: N))
          content(M, [$M$], anchor: "east", padding: 5pt)
          content(N, [$N$], anchor: "north-east", padding: 3pt)
          content(P, [$P$], anchor: "west", padding: 5pt)
          content(Q, [$Q$], anchor: "south-east", padding: 5pt)
          content((rel: (angle: 30deg, radius: 0.5), to: M), [$x$], size: 8pt)
          content((rel: (angle: -60deg, radius: 0.8), to: Q), [$60 degree$], size: 8pt)
          content((rel: (angle: 185deg, radius: 0.5), to: P), [$y$], size: 8pt)
          content((rel: (angle: 5deg, radius: 0.7), to: N), [$70 degree$], size: 8pt)
          content((rel: (angle: -120deg, radius: 1), to: (M, 50%, N)), [$M N\/\/P Q$])
        })
      ]
    + #box[
        #import "@preview/cetz:0.5.2"
        #set text(size: 10pt)
        #cetz.canvas(length: 0.9cm, {
          import cetz.draw: *
          import cetz.angle: *
          set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
          let I = (0, 0)
          hide({
            line(I, (rel: (angle: 36deg, radius: 2.8)), name: "rayIH")
            line(I, (rel: (angle: 0deg, radius: 7)), name: "rayIK")
          })
          let H = (rel: (angle: 36deg, radius: 2.8), to: I)
          hide({
            line(H, (rel: (angle: 0deg, radius: 2.5)), name: "rayHG")
          })
          let G = (rel: (angle: 0deg, radius: 2.5), to: H)
          hide({
            line(G, (rel: (angle: -72deg, radius: 4)), name: "rayGK")
          })
          intersections("K_i", "rayIK", "rayGK")
          let K = "K_i.0"
          line(I, H, G, K, close: true)
          content(I, [$I$], anchor: "east", padding: 5pt)
          content(H, [$H$], anchor: "south", padding: 5pt)
          content(G, [$G$], anchor: "south", padding: 5pt)
          content(K, [$K$], anchor: "west", padding: 5pt)
          content((rel: (angle: 22deg, radius: 0.6), to: I), [$x$], size: 8pt)
          content((rel: (angle: -72deg, radius: 0.35), to: H), [$4x$], size: 8pt)
          content((rel: (angle: -126deg, radius: 0.4), to: G), [$3x$], size: 8pt)
          content((rel: (angle: 144deg, radius: 0.5), to: K), [$2x$], size: 8pt)
          content((rel: (0, -0.4), to: (I, 50%, K)), [HG\/\/IK], size: 9pt)
        })
      ]
    + #box[
        #import "@preview/cetz:0.5.2"
        #set text(size: 10pt)
        #cetz.canvas(length: 0.7cm, {
          import cetz.draw: *
          import cetz.angle: *
          set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
          let S = (0, 0)
          let T = (4.5, 0)
          let V = (0, 1.8)
          hide({
            line(V, (rel: (angle: 30deg, radius: 10)), name: "rayVU")
            line(T, (rel: (angle: 90deg, radius: 10)), name: "rayTU")
          })
          intersections("U_i", "rayVU", "rayTU")
          let U = "U_i.0"
          right-angle(S, V, T, label: none, radius: 0.4)
          right-angle(T, U, S, label: none, radius: 0.4)
          line(S, T, U, V, close: true)
          content(S, [$S$], anchor: "north-east", padding: 3pt)
          content(T, [$T$], anchor: "north-west", padding: 3pt)
          content(U, [$U$], anchor: "south-west", padding: 3pt)
          content(V, [$V$], anchor: "south-east", padding: 3pt)
          content((rel: (angle: -30deg, radius: 0.5), to: V), [$2x$], size: 8pt)
          content((rel: (angle: 240deg, radius: 0.5), to: U), [$x$], size: 8pt)
        })
      ]
  ]
]

#bt()[
  Tìm $x$ và $y$ trong hình bên dưới, biết rằng $A B C D$ là hình thang có đáy là $A B$ và $C D$.
  #listEX()[
    + #box[
        #import "@preview/cetz:0.5.2"
        #set text(size: 10pt)
        #cetz.canvas(length: 0.7cm, {
          import cetz.draw: *
          import cetz.angle: *
          set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
          let D = (0, 0)
          hide({
            line(D, (rel: (angle: 80deg, radius: 2.5)), name: "rayDA")
          })
          let A = "rayDA.end"
          hide({
            line(A, (rel: (angle: 0deg, radius: 4)), name: "rayAB")
            line(D, (rel: (angle: 0deg, radius: 10)), name: "rayDC")
          })
          let B = "rayAB.end"
          hide({
            line(B, (rel: (angle: 220deg, radius: 10)), name: "rayBC")
          })
          intersections("C_i", "rayDC", "rayBC")
          let C = "C_i.0"
          line(A, B, C, D, close: true)
          content(A, [$A$], anchor: "south-east", padding: 5pt)
          content(B, [$B$], anchor: "south", padding: 5pt)
          content(C, [$C$], anchor: "north", padding: 5pt)
          content(D, [$D$], anchor: "north", padding: 5pt)
          content((rel: (angle: 30deg, radius: 0.6), to: D), [$80 degree$], size: 8pt)
          content((rel: (angle: 200deg, radius: 0.8), to: B), [$40 degree$], size: 8pt)
          content((rel: (angle: -50deg, radius: 0.35), to: A), [$x$], size: 8pt)
          content((rel: (angle: 110deg, radius: 0.4), to: C), [$y$], size: 8pt)
        })
      ]
    + #box[
        #import "@preview/cetz:0.5.2"
        #set text(size: 10pt)
        #cetz.canvas(length: 0.7cm, {
          import cetz.draw: *
          import cetz.angle: *
          set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
          let A = (0, 0)
          hide({
            line(A, (rel: (angle: 0deg, radius: 2.5)), name: "rayAD")
          })
          let D = "rayAD.end"

          hide({
            line(A, (rel: (angle: 70deg, radius: 2.5)), name: "rayAB")
            line(D, (rel: (angle: 70deg, radius: 10)), name: "rayDC")
          })
          let B = "rayAB.end"
          hide({
            line(B, (rel: (angle: 20deg, radius: 10)), name: "rayBC")
          })
          intersections("C_i", "rayDC", "rayBC")
          let C = "C_i.0"
          line(A, B, C, D, close: true)
          line(B, (rel: (angle: 70deg, radius: 1.2), to: B))
          line(D, (rel: (angle: 0deg, radius: 1.2), to: D))
          content(A, [$A$], anchor: "north-east", padding: 5pt)
          content(B, [$B$], anchor: "east", padding: 5pt)
          content(C, [$C$], anchor: "south-west", padding: 5pt)
          content(D, [$D$], anchor: "north-west", padding: 5pt)
          content((rel: (angle: 40deg, radius: 0.8), to: B), [$50 degree$], size: 8pt)
          content((rel: (angle: 30deg, radius: 0.7), to: D), [$70 degree$], size: 8pt)
          content((rel: (angle: 40deg, radius: 0.55), to: A), [$x$], size: 8pt)
          content((rel: (angle: 225deg, radius: 0.5), to: C), [$y$], size: 8pt)
        })
      ]
    + #box[
        #import "@preview/cetz:0.5.2"
        #set text(size: 10pt)
        #cetz.canvas(length: 0.7cm, {
          import cetz.draw: *
          import cetz.angle: *
          set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
          let D = (0, 0)
          hide({
            line(D, (rel: (angle: 0deg, radius: 3.5)), name: "rayDC")
          })
          let C = "rayDC.end"
          hide({
            line(D, (rel: (angle: 115deg, radius: 2.5)), name: "rayDA")
          })
          let A = "rayDA.end"
          hide({
            line(A, (rel: (angle: 0deg, radius: 10)), name: "rayAB")
            line(C, (rel: (angle: 90deg, radius: 10)), name: "rayCB")
          })
          intersections("B_i", "rayAB", "rayCB")
          let B = "B_i.0"
          right-angle(C, B, D, label: none, radius: 0.3)
          line(A, B, C, D, close: true)
          content(A, [$A$], anchor: "south-east", padding: 5pt)
          content(B, [$B$], anchor: "south-west", padding: 5pt)
          content(C, [$C$], anchor: "north-west", padding: 5pt)
          content(D, [$D$], anchor: "north-east", padding: 5pt)
          content((rel: (angle: -25deg, radius: 0.7), to: A), [$65 degree$], size: 8pt)
          content((rel: (angle: 55deg, radius: 0.4), to: D), [$y$], size: 8pt)
          content((rel: (angle: 225deg, radius: 0.4), to: B), [$x$], size: 8pt)
        })
      ]
  ]
]

#bt()[
  Cho hình thang $A B C D$ ($A B \/\/ C D$) và $hat(B) = 80 degree$, $hat(D) = 40 degree$. Tính $hat(A)$ và $hat(C)$.
]

#bt()[
  Cho hình thang $A B C D$ ($A D \/\/ B C$) và $hat(A) = 100 degree$, $hat(D) = 60 degree$. Tính $hat(B)$ và $hat(C)$.
]

#bt()[
  Cho hình thang $A B C D$ ($A B \/\/ C D$) có $hat(D) = 60 degree$.
  #listEX()[
    + Tính $hat(A)$;
    + Tính $hat(B)$, $hat(C)$. Biết $hat(B)/hat(D) = 4/5$.
  ]
]

#bt()[
  Cho hình thang $A B C D$ ($A D \/\/ B C$) có $hat(A) - hat(B) = 20 degree$, $hat(D) = 2 hat(C)$.
  #listEX()[
    + Tính $hat(A) + hat(B)$;
    + Chứng minh: $hat(A) + hat(B) = hat(C) + hat(D)$;
    + Tính số đo các góc của hình thang.
  ]
]

#bt()[
  Cho hình thang $A B C D$ ($A B \/\/ C D$) có $hat(D) = 50 degree$ và $hat(B) = 1/2 hat(A)$. Tính các góc của hình thang.
]

#bt()[
  Hình thang $A B C D$ ($A B \/\/ C D$) có $hat(A) - hat(D) = 20 degree$, $hat(B) = 2 hat(C)$. Tính các góc của hình thang.
]

#bt()[
  Tính các góc của hình thang $A B C D$ ($A B \/\/ C D$), biết rằng $hat(A) = 3 hat(D)$, $hat(B) - hat(C) = 30 degree$.
]

#bt()[
  Tính các góc của hình thang $A B C D$ ($A B \/\/ C D$), biết rằng: $hat(A) = 1/3 hat(D)$, $hat(B) - hat(C) = 50 degree$.
]

#bt()[
  Hình thang $A B C D$ ($A B \/\/ C D$) có $hat(A) - hat(D) = 40 degree$, $hat(A) = 2 hat(C)$. Tính các góc của hình thang.
]

#bt()[
  Tính các góc $B$ và $D$ của hình thang $A B C D$, biết rằng $hat(A) = 60 degree$, $hat(C) = 130 degree$.
]

#bt()[
  Cho hình thang $A B C D$ ($A B \/\/ C D$, $A B < C D$). Hai tia phân giác của hai góc $C$ và $D$ cắt nhau tại $K$ thuộc đáy $A B$. Chứng minh:
  #listEX()[
    + $triangle A D K$ cân ở $A$; $triangle B K C$ cân ở $B$;
    + $A D + B C = A B$.
  ]
]

#bt()[
  Cho hình thang $A B C D$ ($A B \/\/ C D$) có $C D = A D + B C$. Gọi $K$ là điểm thuộc đáy $C D$ sao cho $K D = A D$. Chứng minh:
  #listEX()[
    + $A K$ là tia phân giác của góc $A$;
    + $K C = B C$;
    + $B K$ là tia phân giác của góc $B$.
  ]
]

#bt()[
  Cho hình thang $A B C D$ ($A B \/\/ C D$) có $C D = A D + B C$. Gọi $K$ là giao điểm của tia phân giác góc $A$ với đáy $C D$. Chứng minh:
  #listEX()[
    + $A D = D K$;
    + $triangle B C K$ cân ở $C$;
    + $B K$ là tia phân giác của góc $B$.
  ]
]

#bt()[
  Cho hình thang $A B C D$ có đáy nhỏ $B C$ bằng $4$ cm. Qua $B$ vẽ đường thẳng song song với $C D$ cắt $A D$ ở $E$. Biết chu vi tam giác $A B E$ bằng $12$ cm.
  #listEX()[
    + Chứng minh: $B C = E D$; $B E = C D$;
    + Tính chu vi hình thang $A B C D$.
  ]
]

#bt()[
  Cho hình thang $A B C D$ ($A D \/\/ B C$, $A D < B C$). Qua $B$ vẽ đường thẳng song song với $C D$ cắt $A D$ tại $E$. Biết chu vi tam giác $A B E$ bằng $20$ cm và chu vi hình thang $A B C D$ bằng $26$ cm. Tính $A D$.
]

#bt()[
  Cho hình thang $A B C D$ ($A B \/\/ C D$) có $A B = 13","4$ cm; $A B = 1/3 C D$ và chiều cao $A H$ bằng trung bình cộng của hai đáy. Tính $A H$ và $S_(A B C D)$.
]

#bt()[
  Cho hình thang $A B C D$ ($A B \/\/ C D$) có $A B = 4$ cm; $C D = 8$ cm và $S_(A B C D) = 30$ $"cm"^2$. Tính chiều cao $A H$ của hình thang.
]

#bt()[
  Cho hình thang cân $A B C D$ ($A B \/\/ C D$) có $hat(A) = 50°$. Tính $hat(B)$, $hat(C)$, $hat(D)$.
]

#bt()[
  Cho hình thang cân $A B C D$ ($A B \/\/ C D$) có $hat(A) = 2 hat(C)$. Tính các số đo các góc của hình thang.
]

#bt()[
  Tìm các góc chưa biết của hình thang $A B C D$ có hai đáy là $A B$ và $C D$ trong trường hợp $hat(C) = hat(D) = 80°$.
]

#bt()[
  Cho hình thang cân $A B C D$ ($A B \/\/ C D$, $A B < C D$). Kẻ các đường cao $A E$, $B F$ của hình thang. Chứng minh: $D E = C F$.
]

#bt()[
  Cho hình thang cân $A B C D$ ($A B \/\/ C D$), $E$ là giao điểm của hai đường chéo. Chứng minh: $E A = E B$, $E C = E D$.
]

#bt()[
  Cho tam giác $A B C$ cân tại $A$. Trên các cạnh bên $A B$, $A C$ lấy theo thứ tự các điểm $D$ và $E$ sao cho $A D = A E$.
  #listEX()[
    + Chứng minh: $B D E C$ là hình thang cân;
    + Tính các góc của hình thang cân đó, biết rằng $hat(A) = 50°$.
  ]
]

#bt()[
  Cho $triangle C O D$ vuông cân tại $O$, trên tia đối của tia $O C$ và tia đối của tia $O D$ lần lượt lấy hai điểm $A$ và $B$ sao cho $O A = O B$ ($O A < O C$). Chứng minh: Tứ giác $A B C D$ là hình thang cân.
]

#bt()[
  Hình thang $A B C D$ ($A B \/\/ C D$) có $hat(A C D) = hat(B D C)$. Chứng minh: $A B C D$ là hình thang cân.
]

#bt()[
  Cho hình thang $A B C D$ ($A B \/\/ C D$) có $A C = B D$. Qua $B$ kẻ đường thẳng song song với $A C$, cắt đường thẳng $D C$ tại $E$. Chứng minh:
  #listEX()[
    + $triangle B D E$ là tam giác cân;
    + $triangle A C D = triangle B D C$;
    + Hình thang $A B C D$ là hình thang cân.
  ]
]

#bt()[
  Cho tam giác $A B C$ cân tại $A$ có $B D$ và $C E$ là hai đường trung tuyến. Chứng minh:
  #listEX()[
    + $triangle A D E$ cân tại $A$;
    + $triangle A B D = triangle A C E$;
    + $B C D E$ là hình thang cân.
  ]
]

#bt()[
  Cho tam giác $A B C$ cân tại $A$ có $B H$ và $C K$ là hai đường cao. Chứng minh:
  #listEX()[
    + $triangle A B H = triangle A C K$;
    + $B C H K$ là hình thang cân.
  ]
]

#bt()[
  Cho tam giác $A B C$ cân tại $A$ có $B D$ và $C E$ là hai đường phân giác. Chứng minh:
  #listEX()[
    + $triangle A E C = triangle A D B$;
    + $B C D E$ là hình thang cân.
  ]
]

#bt()[
  Cho hình thang cân $A B C D$ có $A B \/\/ C D$, đường chéo $D B$ vuông góc với cạnh bên $B C$, $D B$ là tia phân giác của $hat(A D C)$.
  #listEX()[
    + Chứng minh: $hat(B C D) = 2 hat(B D C)$ và $hat(B C D) = 60°$;
    + Gọi $T$ là giao điểm của $C B$ và $D A$. Chứng minh: tam giác $T C D$ đều;
    + Tính chu vi của hình thang $A B C D$, biết $B C = 8$ cm.
  ]
]

#bt()[
  Cho hình thang cân $A B C D$ ($A B \/\/ C D$, $A B < C D$) có $A B = A D$.
  #listEX()[
    + Chứng minh: $hat(A D B) = hat(B D C)$;
    + $C A$ có phải là tia phân giác của góc $C$ không? Vì sao?
  ]
]

#bt()[
  Hình thang cân $A B C D$ ($A B \/\/ C D$) có $A B < C D$. Gọi $O$ là giao điểm của $A D$ và $B C$; $E$ là giao điểm của $A C$ và $B D$. Chứng minh:
  #listEX()[
    + $triangle A O B$ cân tại $O$;
    + $triangle A B D = triangle B A C$;
    + $E C = E D$;
    + $O E$ là đường trung trực chung của hai đáy $A B$ và $C D$.
  ]
]

#bt()[
  Cho hình thang $A B C D$ có $hat(A) = 30°$, $hat(C) = 130°$. Tính $hat(B)$, $hat(D)$. Bài toán có mấy đáp số?
]

#bt()[
  Cho hình thang $A B C D$ ($A B \/\/ C D$).
  #listEX()[
    + Tính tổng $hat(A) + hat(D)$, suy ra trong hai góc $A$, $D$ có nhiều nhất là một góc tù;
    + Chứng minh: trong hai góc $B$, $C$ có nhiều nhất là một góc tù.
  ]
]

#bt()[
  Cho tam giác $A B C$ cân tại $A$, các đường phân giác $B D$, $C E$ ($D in A C$, $E in A B$).
  #listEX()[
    + Chứng minh: $hat(A C E) = hat(A B D)$ và $triangle A C E = triangle A B D$;
    + Chứng minh: $B E D C$ là hình thang cân;
    + Tính các góc của hình thang cân $B E D C$, biết $hat(A B C) = 62°$.
  ]
]

#bt()[
  Chứng minh: trong các góc của hình thang $M N P Q$ ($M N \/\/ P Q$) có nhiều nhất là hai góc tù.
]

#bt()[
  Cho hình thang $A B C D$ ($A D \/\/ B C$).
  #listEX()[
    + Tính tổng $hat(C) + hat(D)$, suy ra trong hai góc $C$, $D$ có nhiều nhất là một góc nhọn;
    + Chứng minh: trong hai góc $A$, $B$ có nhiều nhất là một góc nhọn.
  ]
]

#bt()[
  Chứng minh: trong các góc của hình thang $M N P Q$ ($M N \/\/ P Q$) có nhiều nhất là hai góc nhọn.
]

#bt()[
  Chứng minh: trong hình thang có nhiều nhất là hai góc tù, có nhiều nhất là hai góc nhọn.
]

#bt()[
  Chứng minh: trong hình thang các tia phân giác của hai góc kề một cạnh bên vuông góc với nhau.
]

#bt()[
  Chứng minh: Tổng hai cạnh bên của hình thang lớn hơn hiệu hai đáy.
]

#bt()[
  Cho hình thang $A B C D$ ($A B \/\/ C D$) có $C D = 50","8$ cm, $A B = 1/4 C D$ và $S_(A B C D) = 635$ $"cm"^2$. Tính chiều cao của hình thang $A B C D$.
]

#bt()[
  Cho hình thang $A B C D$ ($A B \/\/ C D$) có chiều cao $A H = 15","2$ cm; $A B - C D = 7","3$ cm và $S_(A B C D) = 336","68$ $"cm"^2$. Tính:
  #listEX()[
    + Tổng $A B + C D$;
    + Độ dài $A B$, $C D$.
  ]
]

#bt()[
  Hình thang $A B C D$ ($A B \/\/ C D$) có $A B = 7$ cm, $C D = 10$ cm, $A D = 8$ cm và $hat(D) = 30°$. Kẻ $A H$ vuông góc $C D$ ở $H$, kéo dài $A H$ lấy $E$ sao cho $H E = H A$.
  #listEX()[
    + Chứng minh: $triangle A D E$ đều;
    + Tính $A H$, $S_(A D E)$ và $S_(A B C D)$.
  ]
]

#bt()[
  Cho hình thang $A B C D$ ($A D \/\/ B C$, $A D < B C$). Kẻ $D E \/\/ A B$, $D H perp B C$ ($E$, $H$ thuộc $B C$). Biết $A D = 5$ cm, $D H = 4$ cm và $S_(C D E) = 6$ $"cm"^2$.
  #listEX()[
    + Tính $E C$;
    + Chứng minh: $triangle A B E = triangle E D A$;
    + Tính $B C$ và $S_(A B C D)$.
  ]
]

#bt()[
  Cho tứ giác lồi $A B C D$ có $hat(A) = hat(B)$ và $B C = A D$. Chứng minh:
  #listEX()[
    + $triangle D A B = triangle C B A$, rồi suy ra $B D = A C$;
    + $triangle A C D = triangle B D C$, rồi suy ra $hat(A D C) = hat(B C D)$;
    + $A B C D$ là hình thang cân.
  ]
]

#bt()[
  Cho tứ giác lồi $A B C D$ có $hat(A) = hat(B)$ và $B C = A D$. Chứng minh:
  #listEX()[
    + $triangle A C D = triangle B D C$;
    + $A B C D$ là hình thang cân.
  ]
]

#bt()[
  Cho tam giác $A B C$ cân tại $A$ có các đường phân giác $B E$ và $C F$. Chứng minh:
  #listEX()[
    + $triangle A E F$ cân tại $A$;
    + Tứ giác $B C E F$ là hình thang cân;
    + $C E = E F = F B$.
  ]
]

#bt()[
  Cho tam giác $A B C$ cân tại $A$. Điểm $D$ trên cạnh $A B$, $E$ trên cạnh $A C$ sao cho $A E = A D$.
  #listEX()[
    + Tứ giác $B D E C$ là hình gì? Vì sao?
    + Xác định vị trí của các điểm $D$, $E$ để có $B D = D E = E C$.
  ]
]

#bt()[
  Cho hình thang cân $A B C D$ ($A B \/\/ C D$) có $hat(D) = 60°$, $A B = 15$ cm và $C D = 49$ cm. Qua $B$ vẽ đường thẳng song song với $A D$ cắt $C D$ tại $E$.
  #listEX()[
    + Chứng minh: $triangle B C E$ đều;
    + Tính $E C$ và chu vi hình thang $A B C D$;
    + Tìm $S_(A B D) / S_(B C D)$.
  ]
]

#bt()[
  Cho hình thang cân $A B C D$ ($A B \/\/ C D$, $A B < C D$) có $A H$, $B K$ là các đường cao. Chứng minh:
  #listEX()[
    + $triangle A H D = triangle B K C$;
    + $D H = (C D - A B)/2$.
  ]
]
