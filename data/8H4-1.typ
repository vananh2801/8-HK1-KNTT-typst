#import "../style/lib.typ": *
#show: appearance

#section()[Định lý Thalès trong tam giác]

#subsection()[Lý thuyết]

#subsubsection()[Đoạn thẳng tỉ lệ]

#dn(tieude: "Tỉ số của hai đoạn thẳng")[
  _Tỉ số của hai đoạn thẳng_ là tỉ số độ dài của chúng theo cùng một đơn vị đo.
]

#vd()[
  Tìm tỉ số của các cặp đoạn thẳng có độ dài như sau:
  #listEX()[
    + $M N=3$ cm và $P Q=9$ cm;
    + $E F=25$ cm và $H K=10$ dm.
  ]
  #loigiai()[
    #dotlineEX(4)
  ]
]

#dn(tieude: "Đoạn thẳng tỉ lệ")[
  Hai đoạn thẳng $A B$ và $C D$ gọi là tỉ lệ với hai đoạn thẳng $A'B'$ và $C'D'$ nếu có tỉ lệ thức:
  $ (A B)/(C D)=(A'B')/(C'D')" hay "(A B)/(A'B')=(C D)/(C'D'). $
]

#vd()[
  #immini()[
    Cho tam giác $A B C$ và một điểm $B'$ nằm trên cạnh $A B$. Qua điểm $B'$, ta vẽ một đường thẳng song song với $B C$, cắt $A C$ tại $C'$ như hình bên. Dựa vào hình vẽ, hãy tính và so sánh các tỉ số sau và viết các tỉ lệ thức:
    #listEX()[
      + $(A B')/(A B)$ và $(A C')/(A C)$;
      + $(A B')/(B B)$ và $(A C')/(C' C)$;
      + $(B B')/(A B)$ và $(C' C)/(A C)$.
    ]
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 0.6cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), padding: 5pt)
      grid(
        (0, 0),
        (12, 8),
        step: 1,
        stroke: black.lighten(70%) + 0.2pt,
      )
      let A = (5, 7)
      let B = (2, 1)
      let C = (11, 1)
      let Bp = (A, 66.66%, B)
      let Cp = (A, 66.66%, C)
      line(A, B, C, A)
      line(Bp, Cp)
      content(A, [$A$], anchor: "south")
      content(B, [$B$], anchor: "north-east")
      content(C, [$C$], anchor: "north-west")
      content(Bp, [$B'$], anchor: "east")
      content(Cp, [$C'$], anchor: "west")
    })
  ]
  #loigiai()[
    #dotlineEX(4)
  ]
]
#subsubsection()[Định lý Thalès trong tam giác]

#dl(tieude: "Định lý Thalès")[
  Nếu một đường thẳng song song với một cạnh của tam giác và cắt hai cạnh còn lại thì nó định ra trên hai cạnh đó những đoạn thẳng tương ứng tỉ lệ.
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
        [$Delta A B C$, $B'C' \/\/ B C$ ($B' in A B$; $C' in A C$)],
        [KL],
        pad(y: 8pt)[
          $(A B')/(A B) = (A C')/(A C); quad (A B')/(B'B) = (A C')/(C'C); quad (B'B)/(A B) = (C'C)/(A C).$
        ],
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
        let Bp = (A, 33.33%, B)
        let Cp = (A, 33.33%, C)
        line(A, B, C, A)
        line((Bp, -1.5, Cp), Cp)
        line(Bp, (Cp, -1.5, Bp))
        content(A, [$A$], anchor: "south")
        content(B, [$B$], anchor: "north-east")
        content(C, [$C$], anchor: "north-west")
        content(Bp, [$B'$], anchor: "south-east")
        content(Cp, [$C'$], anchor: "south-west")
      })
    ],
  )
]

#vd()[
  #immini()[
    Cho tam giác $A B C$ và $M N\/\/B C$ như hình bên. Tìm độ dài $x$.
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 0.4cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), padding: 5pt)
      let A = (8, 7)
      let B = (2, 1)
      let C = (11, 1)
      let M = (A, 66.66%, B)
      let N = (A, 66.66%, C)
      line(A, B, C, A)
      line((M, -2, N), N)
      line(M, (N, -1, M))
      content(A, [$A$], anchor: "south")
      content(B, [$B$], anchor: "north-east")
      content(C, [$C$], anchor: "north-west")
      content(M, [$M$], anchor: "south-east")
      content(N, [$N$], anchor: "south-west")
      content((A, 50%, M), [$6","5$], anchor: "east")
      content((A, 50%, N), [4], anchor: "west")
      content((M, 50%, B), [$x$], anchor: "east")
      content((N, 50%, C), [2], anchor: "west")
    })
  ]
  #loigiai()[
    #dotlineEX(4)
  ]
]

#hq(tieude: "Hệ quả định lý Thalès")[
  Nếu một đường thẳng song song với một cạnh của tam giác và cắt hai cạnh còn lại thì nó tạo thành một tam giác mới có ba cạnh tương ứng tỉ lệ với ba cạnh của tam giác đã cho.
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
        [$Delta A B C$, $B'C' \/\/ B C$ ($B' in A B$; $C' in A C$)],
        [KL],
        pad(y: 8pt)[
          $(A B')/(A B) = (A C')/(A C)=(B'C')/(B C)$.
        ],
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
        let Bp = (A, 33.33%, B)
        let Cp = (A, 33.33%, C)
        line(A, B, C, A)
        line((Bp, -1.5, Cp), Cp)
        line(Bp, (Cp, -1.5, Bp))
        content(A, [$A$], anchor: "south")
        content(B, [$B$], anchor: "north-east")
        content(C, [$C$], anchor: "north-west")
        content(Bp, [$B'$], anchor: "south-east")
        content(Cp, [$C'$], anchor: "south-west")
      })
    ],
  )
]

#luuy()[
  #immini()[
    Hệ quả định lý Thalès vẫn đúng cho trường hợp đường thẳng song song với một cạnh của tam giác và cắt phần kéo dài của hai cạnh còn lại.
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
      let Bp = (A, -33.33%, B)
      let Cp = (A, -33.33%, C)
      line(A, B, C, A)
      line((Bp, -2.5, Cp), Cp)
      line(Bp, (Cp, -1.5, Bp))
      line(A, Bp, stroke: (dash: "dashed"))
      line(A, Cp, stroke: (dash: "dashed"))
      content(A, [$A$], anchor: "west")
      content(B, [$B$], anchor: "north-east")
      content(C, [$C$], anchor: "north-west")
      content(Bp, [$B'$], anchor: "south")
      content(Cp, [$C'$], anchor: "south")
    })
  ]
]

#dl(tieude: "Định lý Thalès đảo")[
  Nếu một đường thẳng cắt hai cạnh của một tam giác và định ra trên hai cạnh này những đoạn thẳng tương ứng tỉ lệ thì đường thẳng đó song song với cạnh còn lại của tam giác.
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
        pad(y: 8pt)[$Delta A B C$, $B' in A B$; $C' in A C$, $(A B')/(A B) = (A C')/(A C)$],
        [KL],
        [
          $B'C' \/\/ B C$
        ],
      )
    ],
    [
      #import "@preview/cetz:0.5.2"
      #set text(size: 10pt)
      #cetz.canvas(length: 0.5cm, {
        import cetz.draw: *
        import cetz.angle: *
        set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), padding: 5pt)
        let A = (5, 7)
        let B = (2, 1)
        let C = (11, 1)
        let Bp = (3, 3)
        let Cp = (9, 3)
        line(A, B, C, A)
        line((Bp, -1.5, Cp), Cp)
        line(Bp, (Cp, -1.5, Bp))
        content(A, [$A$], anchor: "south")
        content(B, [$B$], anchor: "north-east")
        content(C, [$C$], anchor: "north-west")
        content(Bp, [$B'$], anchor: "south-east")
        content(Cp, [$C'$], anchor: "south-west")
      })
    ],
  )
]

#vd()[
  #immini()[
    Cho tam giác $A B C$, điểm $M$, $N$ lần lượt thuộc $D E$ và $D F$ như hình bên. Chứng minh $M N\/\/E F$.
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 0.4cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), padding: 5pt)
      let A = (6, 7)
      let B = (0, 1)
      let C = (10, 1)
      let M = (A, 33.33%, B)
      let N = (A, 33.33%, C)
      line(A, B, C, A)
      line(M, N)
      content(A, [$A$], anchor: "south")
      content(B, [$B$], anchor: "north-east")
      content(C, [$C$], anchor: "north-west")
      content(M, [$M$], anchor: "east")
      content(N, [$N$], anchor: "west")
      content((A, 50%, M), [3], anchor: "east")
      content((A, 50%, N), [2], anchor: "west")
      content((M, 50%, B), [6], anchor: "east")
      content((N, 50%, C), [4], anchor: "west")
    })
  ]
  #loigiai()[
    #dotlineEX(4)
  ]
]

#subsection()[Bài tập tự luận]

#bt()[
  Cho tam giác $A C E$ nhọn. Trên đoạn $A C$ lấy điểm $B$, trên đoạn $A E$ lấy điểm $D$ sao cho $B D \/\/ C E$. Biết $A B=5$ cm, $B C=6$ cm, $A D=7","5$ cm. Tính $D E$.
]

#bt()[
  Cho tam giác $A B C$ trên đoạn $A B$ lấy điểm $D$, trên đoạn $A C$ lấy điểm $E$ sao cho $D E \/\/ B C$. Biết $A D=2","5$ cm, $A E=5$ cm, $A C=8$ cm. Tính $A B$.
]

#bt()[
  Cho tam giác $A M N$ trên đoạn $A M$ lấy điểm $E$, trên đoạn $A N$ lấy điểm $F$ sao cho $E F \/\/ M N$. Biết $E M=3$ cm, $A F=6$ cm, $F N=9$ cm. Tính $A N$, $A M$.
]

#bt()[
  Cho tam giác $A B C$ trên đoạn $A B$ lấy điểm $K$, trên đoạn $B C$ lấy điểm $Q$ sao cho $K Q \/\/ A C$. Biết $B K=4","5$ cm, $K A=2","5$ cm, $B Q=13","5$ cm. Tính $B C$.
]

#bt()[
  Cho tam giác $A B C$ có $M N \/\/ B C$. Biết $A M=4$ cm, $A N=5$ cm, $N C=3","5$ cm. Tính $M B$?
]

#bt()[
  Cho tam giác $A E F$ có $P Q \/\/ E F$, biết $D F=24$ cm, $Q F=15$ cm, $D P=6","3$ cm. Tính $P E$?
]

#bt()[
  Cho tam giác $M N K$ trên đoạn $M N$ lấy điểm $E$, trên đoạn $N K$ lấy điểm $F$ sao cho $E F \/\/ M K$. Biết $N E=5$ cm, $M N=7","5$ cm, $F K=2$ cm. Tính $N F$.
]

#bt()[
  Cho tam giác $A B C$. Trên đoạn $A B$ lấy điểm $K$, trên đoạn $A C$ lấy điểm $H$ sao cho $K H \/\/ B C$. Biết $A C=18$ cm, $H C=12$ cm, $A K=3$ cm. Tính $A B$.
]

#bt()[
  Cho tam giác $D E F$ nhọn, $D E < D F$. Lấy $M$ thuộc cạnh $D E$, $N$ thuộc cạnh $D F$ sao cho $M N \/\/ E F$. Cho biết $D M=3$ cm; $D E=4$ cm.
  #listEX()[
    + Tính độ dài đoạn thẳng $M E$.
    + Tính tỉ số $(M E)/(D E)$, $(M E)/(D M)$.
    + Tính tỉ số $(N F)/(D F)$, $(N F)/(D N)$.
  ]
]

#bt()[
  Cho tam giác $D E F$ nhọn, $D E < D F$. Lấy $K$ thuộc cạnh $D E$, $I$ thuộc cạnh $D F$ sao cho $K I$ song song với cạnh $E F$. Cho $D K=2$ cm, $K E=2$ cm, $D I=4$ cm.
  #listEX()[
    + Tính tỉ số $(K D)/(K E)$.
    + Tính $I F$.
  ]
]

#bt()[
  Cho $hat(x A y)$ nhọn, trên cạnh $A x$ lấy $B$ và $C$ sao cho $B$ nằm giữa $A$ và $C$. Trên cạnh $A y$ lấy hai điểm $D$ và $E$ sao cho $B D \/\/ C E$. Từ $E$ vẽ đường thẳng song song với $D C$ cắt tia $A x$ ở $F$. Chứng minh:
  #listEX()[
    + $(A D)/(A E) = (A B)/(A C)$.
    + $A C^2 = A B dot A F$.
  ]
]

#bt()[
  Cho tam giác $A B C$ có $A B=4$ cm. Điểm $D$ trên cạnh $A B$ sao cho $A D=3$ cm. Lấy điểm $E$ trên cạnh $A C$ sao cho $D E \/\/ B C$. Giả sử $A E + A C=14$ cm. Tính tỉ số giữa $A E$ và $A C$ rồi tính độ dài của $A E$, $A C$, $E C$.
]

#bt()[
  Cho tam giác $A B C$ có $A B=5$ cm. Điểm $D$ trên cạnh $A B$ sao cho $D B=1","5$ cm. Lấy $E$ trên cạnh $A C$ sao cho $D E \/\/ B C$. Giả sử $A E + A C=13$ cm. Tính tỉ số giữa $A C$ và $E C$ rồi tính $A C$, $E C$, $A E$.
]

#bt()[
  Cho tam giác $A D E$ có $A D=5$ cm. Kéo dài $A D$ thêm một đoạn $D B=3$ cm. Từ $B$ kẻ tia song song với $D E$ và cắt tia $A E$ tại $C$. Giả sử $A E - E C=3$ cm. Tính $A E$, $E C$ và $A C$.
]

#bt()[
  Cho tam giác $A B C$ có $A B=6$ cm. Điểm $D$ trên cạnh $A B$ sao cho $A D=4$ cm. Lấy điểm $E$ trên cạnh $A C$ sao cho $D E \/\/ B C$. Giả sử $A E - E C=3$ cm. Tính tỉ số giữa $A E$ và $E C$ rồi tính $A E$, $E C$ và $A C$.
]

#bt()[
  Cho tam giác $A B C$. Điểm $D$ trên cạnh $A B$ sao cho $A D=2 D B$. Lấy điểm $E$ trên cạnh $A C$ sao cho $D E \/\/ B C$. Giả sử $A E + A C=15$ cm. Tính tỉ số giữa $A E$ và $A C$ rồi tính $A E$, $A C$, $E C$.
]

#bt()[
  Cho tam giác $A B C$. Điểm $D$ trên cạnh $A B$ sao cho $3 A D=2 D B$. Lấy điểm $E$ trên cạnh $A C$ sao cho $D E \/\/ B C$. Giả sử $A C + E C=16$ cm. Tính $A C$, $E C$ và $A E$.
]

#bt()[
  Cho đoạn thẳng $A B=5$ cm chứa điểm $O$ sao cho $O A=3$ cm. Đường thẳng $x y$ qua $O$. Lấy điểm $C$ trên tia $O x$ và $D$ trên tia $O y$ sao cho $A C \/\/ B D$. Giả sử $O C - O D=1","5$ cm. Tính tỉ số giữa $O C$ và $O D$ rồi tính $O C$, $O D$ và $C D$.
]

#bt()[
  Cho hình thang $A B C D$ ($A B \/\/ C D$). Lấy $I$ trên cạnh $A D$ và $K$ trên cạnh $B C$ sao cho $I K \/\/ A B$. Chứng minh: $(A I)/(A D) = (B K)/(B C)$ (Gợi ý: nối $B D$ cắt $I K$ tại $E$ rồi dùng định lý Thalès trong hai tam giác).
]

#bt()[
  Cho tam giác $A B C$ có hai đường trung tuyến $B D$ và $C E$ cắt nhau ở trọng tâm $G$. Lấy điểm $M$, $N$ thuộc đoạn thẳng $B C$ sao cho $G M \/\/ A B$, $G N \/\/ A C$. Tính $(B M)/(B C)$, $(N C)/(B C)$ rồi chứng minh: $B M = M N = N C$.
]

#bt()[
  Cho $triangle A B C$. Đường thẳng song song với $B C$ cắt $A C$ ở $E$ và đường thẳng kẻ từ $C$ song song với $A B$ cắt đường thẳng trước tại $F$. $B F$ cắt $A C$ tại $S$. Chứng minh: $S C^2 = S E dot S A$.
]

#bt()[
  Cho tam giác $C A B$ và điểm $P$ trên cạnh $A C$ sao cho $P C=3 P A$. Từ $P$ kẻ đường thẳng song song với $A B$ cắt $C B$ ở $Q$. Từ $B$ kẻ tia song song với $A C$ cắt $P Q$ tại $R$. Tỉ số $(P Q)/(P R)$ bằng tỉ số nào trên cạnh $B C$? Tính $(P Q)/(P R)$.
]

#bt()[
  Cho tam giác $A B C$. Từ điểm $D$ trên cạnh $B C$, kẻ các đường thẳng song song với các cạnh $A B$ và $A C$, chúng cắt các cạnh $A C$ và $A B$ theo thứ tự tại $F$ và $E$. Chứng minh: $(A E)/(A B) + (A F)/(A C) = 1$.
]

#bt()[
  Cho tam giác $A B C$. Lấy điểm $I$ trên cạnh $A B$. Lấy điểm $K$ trên cạnh $A C$ và điểm $D$ trên cạnh $B C$ sao cho $I K \/\/ B C$ và $I D \/\/ A C$. Chứng minh: $(C D)/(C B) + (C K)/(C A) = 1$.
]

#bt()[
  Cho tam giác $A B C$ vuông cân ở $A$ có hai đường trung tuyến $B M$ và $A H$ cắt nhau ở $G$. Kẻ $A E perp B M$ ở $E$ và cắt $B C$ tại $F$. Điểm $G$ là gì đối với $triangle A B C$ và $triangle A B F$? Chứng minh: $F B = 2 F C$.
]

#bt()[
  Cho tam giác $A B C$ có điểm $O$ bên trong. $A O$ cắt $B C$ tại $A_1$, $B O$ cắt $C A$ tại $B_1$ và $C O$ cắt $A B$ tại $C_1$. Kẻ $O D \/\/ A B$ ($D in B C$) và kẻ $O E \/\/ A C$ ($E in B C$). Chứng minh:
  #listEX()[
    + $(D A_1)/(B A_1) = (E A_1)/(C A_1) = (D E)/(B C)$.
    + $(O A_1)/(A A_1) + (O B_1)/(B B_1) + (O C_1)/(C C_1) = 1$.
    + $(A O)/(A A_1) + (B O)/(B B_1) + (C O)/(C C_1) = 2$.
  ]
]

#bt()[
  Cho tam giác $A B C$ có $M$ thuộc cạnh $A B$. Từ $M$ vẽ đường thẳng song song với $B C$ và cắt cạnh $A C$ tại $N$. Từ $N$ vẽ đường thẳng song song với $A B$ và cắt cạnh $B C$ tại $K$.
  #listEX()[
    + So sánh: $(A M)/(A B)$ và $(A N)/(A C)$.
    + Tứ giác $M N K B$ là hình gì?
    + Chứng minh: $(A M)/(A B) = (A N)/(A C) = (M N)/(B C)$.
  ]
]

#bt()[
  Cho tam giác $A B C$. Trên tia đối của tia $A C$ lấy điểm $P$, từ $P$ vẽ đường thẳng song song với $B C$ và cắt đường thẳng $A B$ tại $Q$. Từ $Q$ vẽ đường thẳng song song với $A C$ và cắt đường thẳng $B C$ tại $D$.
  #listEX()[
    + So sánh: $(A Q)/(A B)$ và $(C D)/(B C)$.
    + Tứ giác $P Q D C$ là hình gì?
    + Chứng minh: $(A Q)/(A B) = (P Q)/(B C) = (A P)/(A C)$.
  ]
]

#bt()[
  Cho tam giác $A B C$ có $A B=6$ cm, $A C=5$ cm. Trên $A B$, $A C$ lần lượt lấy $D$, $E$ sao cho $A D=2$ cm, $A E=5/3$ cm.
  #listEX()[
    + Tính các tỉ số $(A D)/(A B)$, $(A E)/(A C)$.
    + Qua $D$ vẽ đường thẳng song song với $B C$ cắt $A C$ tại $F$. Tính $A F$.
    + So sánh $A F$ và $A E$.
    + Hãy nhận xét về vị trí của $F$, $E$, vị trí của hai đường thẳng $D E$ và $D F$.
  ]
]

#bt()[
  Với số liệu đo đạc được ghi trên hình bên, hãy tính bề rộng $C D$ của con kênh.
]

#bt()[
  Cho tam giác $M N P$. Trên cạnh $M N$ lấy điểm $K$ sao cho $M N=5 M K$. Qua $K$ kẻ đường thẳng song song $N P$ cắt $M P$ ở $T$. Giả sử $N P=20$ cm. Tính $K T$.
]

#bt()[
  Cho tam giác $M B C$. Trên cạnh $M B$ có điểm $A$ sao cho $M A=2 A B$. Qua $A$ kẻ đường thẳng song song $B C$ cắt $M C$ ở $D$. Giả sử $A D=18$ cm. Tính $B C$.
]

#bt()[
  Cho tam giác $A B C$. Trên cạnh $A B$ có lấy điểm $D$ sao cho $D B=3 A D$. Qua $D$ kẻ đường thẳng song song $B C$ cắt $A C$ ở $E$. Giả sử $B C=40$ cm. Tính $D E$.
]

#bt()[
  Cho tam giác $A B C$ có $D E \/\/ B C$. Biết $B C=7","5$ cm; $D E=3$ cm; $A D=2$ cm. Tính $D B$?
]

#bt()[
  Cho tam giác $A B C$. Trên cạnh $A B$ lấy điểm $E$ sao cho $2 A E=3 E B$. Qua $E$ kẻ đường thẳng song song $B C$ cắt $A C$ ở $F$. Giả sử $B C=15$ cm. Tính $E F$.
]

#bt()[
  Cho tam giác $A B C$ vuông tại $A$ có $A B=15$ cm, $A C=20$ cm. Trên hai cạnh $A B$ và $A C$ lần lượt lấy 2 điểm $M$ và $N$ sao cho $A M=4$ cm và $C N=1/4 A N$.
  #listEX()[
    + Chứng minh: $M N \/\/ B C$.
    + Tính độ dài $M N$.
  ]
]

#bt()[
  Cho hai tia $A x$ và $B y$ cố định, song song và cùng chiều. Điểm $M$ di động trên tia $A x$ và điểm $N$ di động trên tia $B y$ sao cho $(A M)/(B N) = 1/2$. Chứng minh: đường thẳng $M N$ đi qua một điểm cố định (Gợi ý: Điểm cố định là giao điểm của $M N$ với $A B$).
]

#bt()[
  Cho tam giác $A B C$. Điểm $M$ trên cạnh $B C$ sao cho $M B=2 M C$. Điểm $N$ trên cạnh $A C$ sao cho $C A=3 C N$.
  #listEX()[
    + Chứng minh: $A B=3 M N$.
    + $A M$ cắt $B N$ tại $G$. Chứng minh: $G A=3 G M$.
  ]
]

#bt()[
  Cho tam giác $A B C$ có $D$, $E$ lần lượt thuộc các cạnh $A B$, $A C$ sao cho $D E \/\/ B C$. Trung tuyến $A M$ của $triangle A B C$ cắt $D E$ ở $N$. Chứng minh: $N$ là trung điểm của $D E$.
]

#bt()[
  Cho tam giác $A B C$ có trung tuyến $A M$. $M D$ là đường phân giác trong của $triangle M A B$. Từ $D$ kẻ đường song song với $B C$ cắt $A M$ và $A C$ lần lượt tại $N$ và $E$.
  #listEX()[
    + $M N$ là đường gì của $triangle D M E$?
    + $triangle M N D$, $triangle M N E$, $triangle M D E$ là các tam giác gì?
    + Chứng minh: $M E$ là đường phân giác của $triangle A M C$.
  ]
]

#bt()[
  Cho tam giác $A B C$ nhọn, các đường cao $A D$, $C F$ cắt nhau tại $H$. Vẽ $D N perp A B$ tại $N$. Gọi $I$ là giao điểm của $B H$ và $D N$. Chứng minh: $(D I)/(C H) = (B I)/(B H)$ và $(D I)/(N I) = (C H)/(F H)$.
]

#bt()[
  Cho hình thang $A B C D$ ($A B \/\/ C D$) có $A C$ cắt $B D$ tại $O$. Gọi $M$ là trung điểm của $C D$. $M O$ cắt $A B$ tại $K$. Áp dụng hệ quả của định lí Thalès trong $triangle O M C$ và $triangle O M D$, hãy cho biết tỉ số $(O K)/(O M)$ bằng với những tỉ số nào trên hai đáy hình thang? Điểm $K$ có gì đặc biệt? Vì sao?
]

#bt()[
  Cho hình thang $A B C D$ ($A B \/\/ C D$ và $A B < C D$). $A C$ cắt $B D$ tại $O$, $B C$ cắt $A D$ tại $I$, $M$ và $K$ lần lượt là trung điểm của $C D$ và $A B$.
  #listEX()[
    + Chứng minh: đường thẳng $M O$ đi qua $K$.
    + Chứng minh: $M I$ cũng đi qua $K$.
    + Có nhận xét gì về bốn điểm $I$, $K$, $O$, $M$?
  ]
]

#bt()[
  Cho điểm $C$ thuộc đoạn thẳng $A B$ sao cho $(C B)/(A C) = 1/2$. Tính $(A C)/(A B)$; $(B C)/(A B)$?
]

#bt()[
  Cho điểm $E$ thuộc đoạn thẳng $K N$ sao cho $3 E N=2 E K$. Tính $(E K)/(K N)$; $(E N)/(K N)$?
]

#bt()[
  Cho điểm $A$ thuộc đoạn thẳng $M N$ sao cho $A M = 1/3 M N$. Tính $(A N)/(M N)$; $(A M)/(A N)$.
]

#bt()[
  Cho $hat(x A y)$ nhọn. Trên $A x$ có $A B=7","5$ cm, $A D=5$ cm. Trên tia $A y$ có $A E=2$ cm, $E C=1$ cm ($E$ nằm giữa $A$ và $C$). Tính $(A E)/(A C)$ và chứng minh: $D E \/\/ B C$.
]

#bt()[
  Cho tam giác $A B C$ nhọn ($A B < A C$), trên cạnh $A B$ lấy điểm $D$ sao cho $A D=1$ cm; $B D=3$ cm; trên cạnh $A C$ lấy $E$ sao cho $A E=2$ cm; $E C=6$ cm.
  #listEX()[
    + Chứng minh: $(A D)/(B D) = (A E)/(C E)$.
    + Chứng minh: $D E \/\/ B C$.
  ]
]

#bt()[
  Cho tam giác $D E F$ nhọn ($D E < D F$), trên cạnh $D E$ lấy điểm $M$ sao cho $D M=2$ cm; $D E=5$ cm; trên cạnh $D F$ lấy $N$ sao cho $D N=6$ cm; $D F=15$ cm.
  #listEX()[
    + Chứng minh: $(D M)/(D E) = (D N)/(D F)$.
    + Chứng minh: $M N \/\/ E F$.
  ]
]

#bt()[
  Cho tam giác $M N P$ nhọn ($M N < M P$), trên cạnh $M N$ lấy điểm $K$ sao cho $M N=5$ cm; $K N=3$ cm; trên cạnh $M P$ lấy $I$ sao cho $M P=15$ cm; $I P=9$ cm.
  #listEX()[
    + Chứng minh: $(M N)/(K N) = (M P)/(I P)$.
    + Chứng minh: $K I \/\/ N P$.
  ]
]

#bt()[
  Cho tam giác $K I J$ nhọn ($K I < K J$), trên cạnh $K I$ lấy điểm $M$ sao cho $(K M)/(I M )= 1/4$, trên cạnh $K J$ lấy $N$ sao cho $K N=0","25$ cm; $N J=1$ cm.
  #listEX()[
    + Chứng minh: $(M K)/(M I) = (N K)/(N J)$.
    + Chứng minh: $M N \/\/ I J$.
  ]
]

#bt()[
  Cho tam giác $A B C$ có $A B=6$ cm, $A C=12$ cm. Trên cạnh $A B$, $A C$ lần lượt lấy điểm $M$, $N$ sao cho $A M=4$ cm, $A N=8$ cm. Chứng minh: $M N \/\/ B C$.
]

#bt()[
  Cho tam giác $A B C$ nhọn ($A B < A C$). Trên hai cạnh $A B$ và $A C$ lần lượt lấy 2 điểm $M$ và $N$ sao cho $B M=2 A M$ và $A N = 1/2 C N$. Chứng minh: $M N \/\/ B C$.
]

#bt()[
  Cho $hat(x B y) < 90 degree$. Trên $B x$ có hai điểm $A$, $D$ ($A$ nằm giữa $B$ và $D$) sao cho $(D B)/(D A) = 11/8$. Trên $B y$ có hai điểm $C$, $E$ ($C$ nằm giữa $B$ và $E$) sao cho $C B = 3/8 E C$. Tính $(E C)/(E B)$ và chứng minh $A C \/\/ D E$.
]

#bt()[
  Cho tứ giác $A B C D$. Qua điểm $E$ trên cạnh $A D$, kẻ đường thẳng song song với $D C$ và cắt $A C$ ở $G$. Qua $G$ kẻ đường thẳng song song với $C B$ và cắt $A B$ ở $H$.
  #listEX()[
    + Tỉ số $(G A)/(G C)$ bằng những tỉ số nào?
    + Chứng minh: $H E \/\/ B D$.
  ]
]

#bt()[
  Cho tứ giác $A B C D$ có $hat(A) = hat(C) = 90 degree$. Từ điểm $M$ trên $B D$, kẻ $M E perp A D$ ở $E$, $M F perp C D$ ở $F$. Chứng minh: $E F \/\/ A C$.
  #listEX()[
    + Cho tam giác $A B C$ nhọn, có $A M$ là đường trung tuyến. $O$ là điểm bất kì thuộc đoạn $A M$. Trên tia đối của tia $M A$ lấy điểm $K$ sao cho $M K=M O$. Gọi $E$ là giao điểm của $B O$ và $A C$. Gọi $F$ là giao điểm của $C O$ và $A B$. Chứng minh: tứ giác $B O C K$ là hình bình hành;
    + Chứng minh: $(A F)/(A B) = (A O)/(A K)$.
    + Chứng minh: $E F \/\/ B C$.
    + Cho tam giác $A B C$ nhọn, có $A O$ là đường trung tuyến. $T$ là điểm bất kì thuộc tia đối của tia $O A$. Trên tia đối của tia $O T$ lấy điểm $K$ sao cho $O K=O T$. Gọi $N$ là giao điểm của $B T$ và $A C$. Gọi $M$ là giao điểm của $C T$ và $A B$. Chứng minh: tứ giác $B K C T$ là hình bình hành.
    + Chứng minh: $(A C)/(A N) = (A K)/(A T)$.
    + Chứng minh: $B C \/\/ M N$.
  ]
]

#bt()[
  Cho tam giác $A B C$ nhọn, có $A D$, $B E$ và $C F$ là ba đường cao cắt nhau tại $H$. Vẽ $D K perp A B$ tại $K$, $D N perp A C$ tại $N$.
  #listEX()[
    + Chứng minh: $(A F)/(A K) = (A H)/(A D)$.
    + Chứng minh: $E F \/\/ K N$.
  ]
]

#bt()[
  Cho tứ giác $A B C D$. Lấy điểm $I$ trên cạnh $A D$ sao cho $A I=2 I D$. Lấy điểm $K$ trên cạnh $B C$ sao cho $B C=3 B K$. Lấy điểm $M$ trên cạnh $C D$ sao cho $I M \/\/ A C$. Chứng minh: $M K \/\/ B D$.
]

#bt()[
  Cho điểm $O$ thuộc miền trong của $triangle A B C$. Gọi $D$, $E$, $F$ lần lượt thuộc đoạn thẳng $O A$, $O B$, $O C$ sao cho $D E \/\/ A B$, $D F \/\/ A C$. Tỉ số $(D O)/(D A)$ bằng những tỉ số nào? Chứng minh: $E F \/\/ B C$.
]

#bt()[
  Cho tam giác $A B C$ có ba góc nhọn, có 3 đường cao $A D$, $B E$ và $C F$ cắt nhau tại $H$. Gọi $M$; $N$; $K$ lần lượt là hình chiếu của $D$ lên $A B$; $A C$ và $B E$.
  #listEX()[
    + Chứng minh: $(A F)/(A M) = (A H)/(A D)$ và $E F \/\/ M N$;
    + Chứng minh: $(B M)/(B F) = (B D)/(B C)$ và $M K \/\/ E F$.
  ]
]

#bt()[
  #immini()[
    Hãy ứng dụng hệ quả định lý Thalès để đo khoảng cách $B C$ ở hai địa điểm không thể đến được như hình bên. Biết $D E \/\/ B C$.
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
        fill: gray.lighten(50%),
        stroke: black,
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

#bt()[
  #immini()[
    Để đo chiều cao $A B$ của một cái cây, người ta đặt một cọc $C D$ thẳng đứng gần tòa nhà. Trên đầu $C$ của cọc có gắn 1 thước ngắm sao cho hướng của thước đi qua đỉnh $A$ của cây. Sau đó xác định điểm $E$ là giao điểm của hai đường thẳng $A C$ và $B D$. Người ta đo được $C D = 1","5$ m, $E D = 2$ m, $E B = 7","2$ m. Tính chiều cao $A B$ của cây.
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 0.7cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), padding: 5pt)
      let B = (0, 0)
      let A = (0, 5.4)
      let E = (7.2, 0)
      let D = (5.2, 0)
      let C = (5.2, 1.5)
      // Vẽ cây bóng đen bằng đường cong hobby có đỉnh tại A và gốc tại B
      hobby(
        (-0.35, 0),
        (-0.25, 1.2),
        (-0.3, 2.6),
        (-0.6, 3.4),
        (-1.6, 3.8),
        (-1.6, 4.0),
        (-0.7, 4.8),
        A, // Đỉnh cây tại A (0, 5.4)
        (0.7, 4.8),
        (1.6, 4.0),
        (1.6, 3.8),
        (0.6, 3.4),
        (0.3, 2.6),
        (0.25, 1.2),
        (0.35, 0),
        fill: gray.lighten(50%),
        stroke: none,
      )
      line(D, C, A, B, E, C)
      right-angle(B, D, A, radius: 0.3, label: none)
      right-angle(D, E, C, radius: 0.3, label: none)
      content((rel: (135deg, 0.5), to: A), [$A$])
      content((rel: (-135deg, 0.5), to: B), [$B$])
      content((rel: (45deg, 0.5), to: C), [$C$])
      content((rel: (-90deg, 0.5), to: D), [$D$])
      content((rel: (-45deg, 0.5), to: E), [$E$])
    })
  ]
]

#bt()[
  #immini()[
    Bạn Bảo muốn đo khoảng cách giữa hai điểm $A$ và $B$, nhưng ở giữa có một hồ nước sâu. Bạn đánh dấu các điểm $M$, $C$, $D$ như hình bên. Sau khi đo các kích thước, bạn Bảo nhận thấy $(M B)/(B D)=(M A)/(A C)=7/10$. Sau đó, bạn Bảo tiếp tục đo khoảng cách giửa hai điểm $C$ và $D$ là 80 m. Hãy tính khoảng cách giữa hai điểm $A$ và $B$.
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 0.7cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), padding: 5pt)
      let M = (0, 0)
      let C = (5, 0)
      let D = (6, 4)
      let A = (M, 70%, C)
      let B = (M, 70%, D)
      hobby(
        (rel: (-110deg, 0.3), to: B),
        (rel: (-70deg, 1), to: B),
        (rel: (-80deg, 1.2), to: B),
        (rel: (-80deg, 1.4), to: B),
        (rel: (-100deg, 2.5), to: B),
        (rel: (-110deg, 0.3), to: B),
        fill: gray.lighten(50%),
      )
      line(M, C, D, M)
      line(A, B, stroke: (dash: "dashed"))
      content((rel: (-90deg, 0.5), to: A), [$A$])
      content((rel: (135deg, 0.5), to: B), [$B$])
      content((rel: (-45deg, 0.5), to: C), [$C$])
      content((rel: (70deg, 0.5), to: D), [$D$])
      content((rel: (-135deg, 0.5), to: M), [$M$])
      content((rel: (0deg, 0.8), to: (C, 50%, D)), [$80$ m])
    })
  ]
]
