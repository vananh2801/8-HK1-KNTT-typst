#import "../style/lib.typ": *
#show: appearance

#section()[Tứ giác]

#subsection()[Lý thuyết]

#subsubsection()[Tứ giác lồi]

#dn(tieude: "Tứ giác")[
  _Tứ giác_ $A B C D$ là hình gồm bốn đoạn thẳng $A B$, $B C$, $C D$, $D A$ trong đó không có hai đoạn thẳng nào nằm trên cùng một đường thẳng.\
  Trong tứ giác $A B C D$, ta có:
  - Các điểm $A$, $B$, $C$, $D$ là các _đỉnh_;
  - Các đoạn thẳng $A B$, $B C$, $C D$, $D A$ là các _cạnh_;
  - Các góc $A B C$, $B C D$, $C D A$, $D A B$ là các _góc_.
]

#dn(tieude: "Tứ giác lồi")[
  _Tứ giác lồi_ là tứ giác mà hai đỉnh thuộc một cạnh bất kì luôn nằm về một phía của đường thẳng đi qua hai đỉnh còn lại.
]

#vd()[
  Xác định tứ giác trong các hình sau. Từ đó, xác định đâu là tứ giác lồi?
  #listEX()[
    + #box[
        #import "@preview/cetz:0.5.2"
        #set text(size: 10pt)
        #cetz.canvas(length: 1cm, {
          import cetz.draw: *
          import cetz.angle: *
          set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), content: (padding: 2pt))
          let A = (0, 0)
          let B = (1, -1)
          let C = (2, 0)
          let D = (1.4, 1)
          line(A, B, C, D, A)
          content(A, [$A$], anchor: "east")
          content(B, [$B$], anchor: "north")
          content(C, [$C$], anchor: "west")
          content(D, [$D$], anchor: "south")
        })
      ]
    + #box[
        #import "@preview/cetz:0.5.2"
        #set text(size: 10pt)
        #cetz.canvas(length: 1cm, {
          import cetz.draw: *
          import cetz.angle: *
          set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), content: (padding: 2pt))
          let A = (0, 0)
          let B = (2, -1)
          let C = (1, 0)
          let D = (2, 1)
          line(A, B, C, D, A)
          content(A, [$A$], anchor: "east")
          content(B, [$B$], anchor: "north-west")
          content(C, [$C$], anchor: "west", padding: 4pt)
          content(D, [$D$], anchor: "south-west")
        })
      ]
    + #box[
        #import "@preview/cetz:0.5.2"
        #set text(size: 10pt)
        #cetz.canvas(length: 1cm, {
          import cetz.draw: *
          import cetz.angle: *
          set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), content: (padding: 2pt))
          let A = (0, 0)
          let B = (2, -2)
          let C = (0, -2)
          let D = (1.8, -0.3)
          line(A, B, C, D, A)
          content(A, [$A$], anchor: "south-east")
          content(B, [$B$], anchor: "north-west")
          content(C, [$C$], anchor: "north-east")
          content(D, [$D$], anchor: "south-west")
        })
      ]
    + #box[
        #import "@preview/cetz:0.5.2"
        #set text(size: 10pt)
        #cetz.canvas(length: 1cm, {
          import cetz.draw: *
          import cetz.angle: *
          set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), content: (padding: 2pt))
          let A = (0, 0)
          let B = (-1, -2)
          let C = (0.5, -2)
          let D = (1, -2)
          line(A, B, C, D, A)
          circle(C, radius: 1.2pt, fill: black)
          content(A, [$A$], anchor: "south")
          content(B, [$B$], anchor: "north-east")
          content(C, [$C$], anchor: "north", padding: 4pt)
          content(D, [$D$], anchor: "north-west")
        })
      ]
  ]
  #loigiai()[
    Hình a), b) và c) là các hình tứ giác. Hình d) không phải là hình tứ giác vì hai đoạn $B C$ và $C D$ cùng nằm trên cùng đường thẳng $B D$.
  ]
]

#luuy()[
  - Từ nay, khi nói đến tứ giác mà không chú thích gì thêm, ta hiểu đó là tứ giác lồi.
  - Tứ giác ABCD trong hình a) của Ví dụ 1 còn được gọi tên là tứ giác $B C D A$, $C D A B$, $D A B C$, $A D C B$, $D C B A$, $C B A D$, $B A D C$.
]

#subsubsection()[Tổng các góc của một tứ giác]

#dl(tieude: "Tổng các góc của một tứ giác")[
  Tổng các góc của một tứ giác bằng 360°.
]

#vd()[
  #immini()[
    Cho tứ giác $E F G H$ như hình bên. Hãy tính góc $F$.
  ][
    #box[
      #import "@preview/cetz:0.5.2"
      #set text(size: 10pt)
      #cetz.canvas(length: 0.5cm, {
        import cetz.draw: *
        import cetz.angle: *
        set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), content: (padding: 2pt))
        let H = (0, 0)
        let Hx = (H.at(0) + calc.cos(55deg), H.at(0) + calc.sin(55deg))
        let Hy = (H.at(0) + calc.cos(0deg), H.at(0) + calc.sin(0deg))
        let F = (5, 3)
        let E = (F, "_|_", H, Hx)
        let G = (F, "_|_", H, Hy)
        line(H, G, F, E, H)
        right-angle(G, H, F, label: none, radius: 0.3)
        right-angle(E, H, F, label: none, radius: 0.3)
        content(H, [$H$], anchor: "north-east")
        content((H.at(0) + calc.cos(20deg) * 1.2, H.at(1) + calc.sin(20deg) * 1.2), [$55 degree$])
        content(G, [$G$], anchor: "north-west")
        content(F, [$F$], anchor: "south-west")
        content((F.at(0) + calc.cos(220deg) * 0.5, F.at(1) + calc.sin(220deg) * 0.5), [?])
        content(E, [$E$], anchor: "south")
      })
    ]
  ]
  #loigiai()[
    #dotlineEX(3)
  ]
]

#subsection()[Bài tập tự luận]

#bt()[
  Tìm $x$ ở các hình sau:
  #listEX()[
    + #box[
        #import "@preview/cetz:0.5.2"
        #set text(size: 10pt)
        #cetz.canvas(length: 0.8cm, {
          import cetz.draw: *
          import cetz.angle: *
          set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
          hide({
            line((0, 0), (rel: (angle: 60deg, radius: 2.2)), name: "AB")
            line("AB.end", (rel: (angle: 0deg, radius: 1.8)), name: "BC")
            line("BC.end", (rel: (angle: -100deg, radius: 5)), name: "rayCD")
            line("AB.start", (rel: (angle: -50deg, radius: 5)), name: "rayAD")
          })
          intersections("D1", "rayCD", "rayAD")
          let A1 = "AB.start"
          let B1 = "AB.end"
          let C1 = "BC.end"
          let D1 = "D1.0"
          line(A1, B1, C1, D1, close: true)
          content(A1, [$A$], anchor: "east", padding: 4pt)
          content(B1, [$B$], anchor: "south", padding: 4pt)
          content(C1, [$C$], anchor: "south-west", padding: 4pt)
          content(D1, [$D$], anchor: "north", padding: 4pt)
          content((rel: (angle: 5deg, radius: 0.55), to: A1), [$110 degree$])
          content((rel: (angle: 300deg, radius: 0.55), to: B1), [$120 degree$])
          content((rel: (angle: 220deg, radius: 0.55), to: C1), [$80 degree$])
          content((rel: (angle: 105deg, radius: 0.65), to: D1), [$x$])
        })
      ]
    + #box[
        #import "@preview/cetz:0.5.2"
        #set text(size: 10pt)
        #cetz.canvas(length: 1cm, {
          import cetz.draw: *
          import cetz.angle: *
          set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
          hide({
            line((4.5, 0), (rel: (angle: 0deg, radius: 2.5)), name: "HG")
            line("HG.end", (rel: (angle: 90deg, radius: 1.8)), name: "GF")
            line("GF.end", (rel: (angle: 180deg, radius: 2.5)), name: "FE")
          })
          let H2 = "HG.start"
          let G2 = "HG.end"
          let F2 = "GF.end"
          let E2 = "FE.end"
          line(E2, F2, G2, H2, close: true)
          content(E2, [$E$], anchor: "south-east", padding: 4pt)
          content(F2, [$F$], anchor: "south-west", padding: 4pt)
          content(G2, [$G$], anchor: "north-west", padding: 4pt)
          content(H2, [$H$], anchor: "north-east", padding: 4pt)
          line((rel: (0, -0.2), to: E2), (rel: (0.2, 0)), (rel: (0, 0.2)))
          line((rel: (-0.2, 0), to: F2), (rel: (0, -0.2)), (rel: (0.2, 0)))
          line((rel: (0, 0.2), to: H2), (rel: (0.2, 0)), (rel: (0, -0.2)))
          content((rel: (angle: 135deg, radius: 0.35), to: G2), [$x$])
        })
      ]
    + #box[
        #import "@preview/cetz:0.5.2"
        #set text(size: 10pt)
        #cetz.canvas(length: 1cm, {
          import cetz.draw: *
          import cetz.angle: *
          set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
          hide({
            line((8.5, 0), (rel: (angle: 0deg, radius: 2.5)), name: "AE")
            line("AE.start", (rel: (angle: 65deg, radius: 2.2)), name: "AB3")
            line("AE.end", (rel: (angle: 90deg, radius: 4)), name: "rayED")
            line("AB3.end", (rel: (angle: -25deg, radius: 4)), name: "rayBD")
          })
          intersections("D3", "rayED", "rayBD")
          let A3 = "AE.start"
          let E3 = "AE.end"
          let B3 = "AB3.end"
          let D3 = "D3.0"
          line(A3, B3, D3, E3, close: true)
          content(A3, [$A$], anchor: "north-east", padding: 4pt)
          content(B3, [$B$], anchor: "south-east", padding: 4pt)
          content(D3, [$D$], anchor: "west", padding: 4pt)
          content(E3, [$E$], anchor: "north-west", padding: 4pt)
          content((rel: (angle: 32.5deg, radius: 0.55), to: A3), [$65 degree$])
          content((rel: (angle: 212.5deg, radius: 0.3), to: D3), [$x$])
          line((rel: (-0.2, 0), to: E3), (rel: (0, 0.2)), (rel: (0.2, 0)))
          line(
            (rel: (angle: 245deg, radius: 0.2), to: B3),
            (rel: (angle: -25deg, radius: 0.2)),
            (rel: (angle: 65deg, radius: 0.2)),
          )
        })
      ]
    + #box[
        #import "@preview/cetz:0.5.2"
        #set text(size: 10pt)
        #cetz.canvas(length: 1cm, {
          import cetz.draw: *
          import cetz.angle: *
          set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
          hide({
            line((13.0, 0), (rel: (angle: 0deg, radius: 2.5)), name: "NM")
            line("NM.end", (rel: (angle: 105deg, radius: 2.2)), name: "MK")
            line("MK.end", (rel: (angle: 165deg, radius: 4)), name: "rayKI")
            line("NM.start", (rel: (angle: 75deg, radius: 4)), name: "rayNI")
          })
          intersections("I4", "rayNI", "rayKI")
          let N4 = "NM.start"
          let M4 = "NM.end"
          let K4 = "MK.end"
          let I4 = "I4.0"
          line(N4, I4, K4, M4, close: true)
          line(I4, (rel: (angle: 165deg, radius: 0.8), to: I4))
          line(K4, (rel: (angle: 105deg, radius: 0.8), to: K4))
          line(M4, (rel: (angle: 0deg, radius: 0.8), to: M4))
          content(N4, [$N$], anchor: "north-east", padding: 3pt)
          content(I4, [$I$], anchor: "south", padding: 4pt)
          content(K4, [$K$], anchor: "west", padding: 4pt)
          content(M4, [$M$], anchor: "north", padding: 4pt)
          content((rel: (angle: 37.5deg, radius: 0.4), to: N4), [$x$])
          content((rel: (angle: 140deg, radius: 0.55), to: K4), [$60 degree$])
          content((rel: (angle: 48.5deg, radius: 0.45), to: M4), [$105 degree$])
          line(
            (rel: (angle: 165deg, radius: 0.2), to: I4),
            (rel: (angle: 255deg, radius: 0.2)),
            (rel: (angle: -15deg, radius: 0.2)),
          )
        })
      ]
    + #box[
        #import "@preview/cetz:0.5.2"
        #set text(size: 10pt)
        #cetz.canvas(length: 0.9cm, {
          import cetz.draw: *
          import cetz.angle: *
          set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
          hide({
            line((0, 2), (rel: (angle: 0deg, radius: 2.8)), name: "PS")
            line("PS.end", (rel: (angle: 245deg, radius: 2.5)), name: "SR")
          })
          let P1 = "PS.start"
          let S1 = "PS.end"
          let R1 = "SR.end"
          hide({
            line(R1, (rel: (angle: 160deg, radius: 5)), name: "rayRQ")
            line(P1, (rel: (angle: -100deg, radius: 5)), name: "rayPQ")
          })
          intersections("Q1_int", "rayRQ", "rayPQ")
          let Q1 = "Q1_int.0"
          line(P1, Q1, R1, S1, close: true)
          content(P1, [$P$], anchor: "south-east", padding: 4pt)
          content(Q1, [$Q$], anchor: "north-east", padding: 4pt)
          content(R1, [$R$], anchor: "north-west", padding: 4pt)
          content(S1, [$S$], anchor: "south-west", padding: 4pt)
          content((rel: (angle: 315deg, radius: 0.35), to: P1), [$x$])
          content((rel: (angle: 30deg, radius: 0.35), to: Q1), [$x$])
          content((rel: (angle: 110deg, radius: 0.45), to: R1), [$95 degree$])
          content((rel: (angle: 210deg, radius: 0.55), to: S1), [$65 degree$])
        })
      ]
    + #box[
        #import "@preview/cetz:0.5.2"
        #set text(size: 10pt)
        #cetz.canvas(length: 0.8cm, {
          import cetz.draw: *
          import cetz.angle: *
          set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
          hide({
            line((0, 0), (rel: (angle: 0deg, radius: 4.5)), name: "QP")
            line("QP.start", (rel: (angle: 72deg, radius: 2.2)), name: "QM")
          })
          let Q2 = "QP.start"
          let P2 = "QP.end"
          let M2 = "QM.end"
          hide({
            line(M2, (rel: (angle: 0deg, radius: 5)), name: "rayMN")
            line(P2, (rel: (angle: 144deg, radius: 5)), name: "rayPN")
          })
          intersections("N2_int", "rayMN", "rayPN")
          let N2 = "N2_int.0"
          line(Q2, P2, N2, M2, close: true)
          content(M2, [$M$], anchor: "south-east", padding: 4pt)
          content(N2, [$N$], anchor: "south-west", padding: 4pt)
          content(P2, [$P$], anchor: "north-west", padding: 4pt)
          content(Q2, [$Q$], anchor: "north-east", padding: 4pt)
          content((rel: (angle: 305deg, radius: 0.4), to: M2), [$3x$])
          content((rel: (angle: 245deg, radius: 0.3), to: N2), [$4x$])
          content((rel: (angle: 155deg, radius: 0.75), to: P2), [$x$])
          content((rel: (angle: 35deg, radius: 0.45), to: Q2), [$2x$])
        })
      ]
  ]
]

#bt()[
  #immini()[
    Ta gọi tứ giác $A B C D$ trên hình bên có $A B = A D$; $C B = C D$ là hình "cái diều".
    #listEX()[
      + Chứng minh: $A C$ là đường trung trực của đoạn $B D$.
      + Tính $hat(B)$, $hat(D)$ biết rằng $hat(A) = 100°$, $hat(C) = 60°$.
    ]
  ][
    #box[
      #import "@preview/cetz:0.5.2"
      #set text(size: 10pt)
      #cetz.canvas(length: 0.7cm, {
        import cetz.draw: *
        import cetz.angle: *
        set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
        let C3 = (0, 0)
        let A3 = (5.5, 0)
        hide({
          line(C3, (rel: (angle: 30deg, radius: 5)), name: "rayCB")
          line(C3, (rel: (angle: -30deg, radius: 5)), name: "rayCD")
          line(A3, (rel: (angle: 130deg, radius: 5)), name: "rayAB")
          line(A3, (rel: (angle: -130deg, radius: 5)), name: "rayAD")
        })
        intersections("B3_i", "rayCB", "rayAB")
        intersections("D3_i", "rayCD", "rayAD")
        let B3 = "B3_i.0"
        let D3 = "D3_i.0"
        line(C3, B3, A3, D3, close: true)
        content(C3, [$C$], anchor: "east", padding: 5pt)
        content(B3, [$B$], anchor: "south", padding: 5pt)
        content(A3, [$A$], anchor: "west", padding: 5pt)
        content(D3, [$D$], anchor: "north", padding: 5pt)
        content((rel: (angle: 0deg, radius: 1.0), to: C3), [$60 degree$])
        content((rel: (angle: 180deg, radius: 0.8), to: A3), [$100 degree$])
        line((rel: (angle: 120deg, radius: 0.1), to: (C3, 50%, B3)), (rel: (angle: -60deg, radius: 0.2)))
        line((rel: (angle: 120deg, radius: 0.1), to: (C3, 53%, B3)), (rel: (angle: -60deg, radius: 0.2)))
        line((rel: (angle: 60deg, radius: 0.1), to: (C3, 50%, D3)), (rel: (angle: -120deg, radius: 0.2)))
        line((rel: (angle: 60deg, radius: 0.1), to: (C3, 53%, D3)), (rel: (angle: -120deg, radius: 0.2)))
        line((rel: (angle: 40deg, radius: 0.1), to: (B3, 50%, A3)), (rel: (angle: -140deg, radius: 0.2)))
        line((rel: (angle: 140deg, radius: 0.1), to: (D3, 50%, A3)), (rel: (angle: -40deg, radius: 0.2)))
      })
    ]
  ]
]

#bt()[
  Góc kề bù với một góc của tứ giác gọi là _góc ngoài_ của tứ giác.
  #listEX()[
    + Tính các góc ngoài của tứ giác ở hình sau.
      #align(center)[
        #box[
          #import "@preview/cetz:0.5.2"
          #set text(size: 10pt)
          #cetz.canvas(length: 0.8cm, {
            import cetz.draw: *
            import cetz.angle: *
            set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
            hide({
              line((0, 0), (4, 0), name: "AD")
              line("AD.start", (rel: (angle: 75deg, radius: 2.5)), name: "rayAB")
              line("rayAB.end", (rel: (angle: -15deg, radius: 4)), name: "rayBC")
              line("AD.end", (rel: (angle: 105deg, radius: 4)), name: "rayDC")
            })
            intersections("C1", "rayBC", "rayDC")
            let A1 = "AD.start"
            let D1 = "AD.end"
            let B1 = "rayAB.end"
            let C1 = "C1.0"
            line(A1, B1, C1, D1, close: true)
            line(A1, (D1, 130%, A1))
            line(B1, (A1, 130%, B1))
            line(C1, (B1, 130%, C1))
            line(D1, (C1, 130%, D1))
            content(A1, [$A$], anchor: "north", padding: 5pt)
            content(B1, [$B$], anchor: "east", padding: 5pt)
            content(C1, [$C$], anchor: "south", padding: 5pt)
            content(D1, [$D$], anchor: "south-west", padding: 5pt)
            content((rel: (angle: 30.5deg, radius: 0.55), to: A1), [$75 degree$], size: 8pt)
            content((rel: (angle: 215deg, radius: 0.55), to: C1), [$120 degree$], size: 8pt)
            line(
              (rel: (angle: -105deg, radius: 0.2), to: B1),
              (rel: (angle: -15deg, radius: 0.2)),
              (rel: (angle: 75deg, radius: 0.2)),
            )
            content((rel: (angle: 127.5deg, radius: 0.4), to: A1), [$1$])
            content((rel: (angle: 30deg, radius: 0.4), to: B1), [$1$])
            content((rel: (angle: -45deg, radius: 0.4), to: C1), [$1$])
            content((rel: (angle: 232.5deg, radius: 0.4), to: D1), [$1$])
          })
        ]
      ]
    + Tính tổng các góc ngoài của tứ giác ở hình sau (tại mỗi đỉnh của tứ giác chỉ chọn một góc ngoài): $hat(A)_1 + hat(B)_1 + hat(C)_1 + hat(D)_1 = ?$;
      #align(center)[
        #box[
          #import "@preview/cetz:0.5.2"
          #set text(size: 10pt)
          #cetz.canvas(length: 0.8cm, {
            import cetz.draw: *
            import cetz.angle: *
            set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
            hide({
              line((0, 0), (rel: (angle: 75deg, radius: 2.2)), name: "DA2")
              line("DA2.end", (rel: (angle: -10deg, radius: 2.5)), name: "AB2")
              line("DA2.start", (rel: (angle: 0deg, radius: 3.5)), name: "DC2")
              line("DC2.end", (rel: (angle: 110deg, radius: 3)), name: "CB2")
            })
            intersections("B2_i", "AB2", "CB2")
            let D2 = "DA2.start"
            let A2 = "DA2.end"
            let C2 = "DC2.end"
            let B2 = "B2_i.0"
            line(D2, A2, B2, C2, close: true)
            line(A2, (D2, 130%, A2))
            line(B2, (A2, 130%, B2))
            line(C2, (B2, 130%, C2))
            line(D2, (C2, 130%, D2))
            content(A2, [$A$], anchor: "south-east", padding: 3pt)
            content(B2, [$B$], anchor: "south", padding: 3pt)
            content(C2, [$C$], anchor: "south-west", padding: 3pt)
            content(D2, [$D$], anchor: "north", padding: 3pt)
            content((rel: (angle: 32.5deg, radius: 0.4), to: A2), [$1$])
            content((rel: (angle: -40deg, radius: 0.4), to: B2), [$1$])
            content((rel: (angle: -125deg, radius: 0.4), to: C2), [$1$])
            content((rel: (angle: 127.5deg, radius: 0.4), to: D2), [$1$])
          })
        ]
      ]
    + Có nhận xét gì về tổng các góc ngoài của tứ giác.
  ]
]

#bt()[
  Tứ giác $A B C D$ có $A B = B C$, $C D = D A$.
  #listEX()[
    + Chứng minh: $B D$ là đường trung trực của đoạn $A C$.
    + Cho biết $hat(B) = 100°$, $hat(D) = 70°$. Tính $hat(A)$ và $hat(C)$.

  ]
]

#bt()[
  Tứ giác $A B C D$ có $hat(A) = 100°$, góc ngoài tại đỉnh $B$ bằng $110°$, $hat(C) = 75°$. Tính số đo góc $D$.
]

#bt()[
  Tứ giác $E F G H$ có góc ngoài tại đỉnh $E$ bằng $65°$, góc ngoài tại đỉnh $F$ bằng $100°$, góc ngoài tại đỉnh $G$ bằng $60°$. Tính số đo góc ngoài tại đỉnh $H$.
]

#bt()[
  Tứ giác $A B C D$ có $hat(A) = x$, $hat(B) = 2x$, $hat(C) = 3x$, $hat(D) = 4x$. Tính số đo các góc của tứ giác đó.
]

#bt()[
  Tứ giác $A B C D$ có $hat(C) = 60°$, $hat(D) = 80°$, $hat(A) - hat(B) = 10°$. Tính số đo các góc $A$ và $B$.
]

#bt()[
  Tính các góc của tứ giác $A B C D$, biết rằng: $hat(A) : hat(B) : hat(C) : hat(D) = 1:2:3:4$.
]

#bt()[
  Tứ giác $A B C D$ có $hat(A) = 65°$, $hat(B) = 117°$, $hat(C) = 71°$. Tính số đo góc ngoài tại đỉnh $D$.
]

#bt()[
  Tứ giác $A B C D$ có chu vi $66$ cm. Tính độ dài $A C$, biết chu vi tam giác $A B C$ bằng $56$ cm, chu vi tam giác $A C D$ bằng $60$ cm.
]
