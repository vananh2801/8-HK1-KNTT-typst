#import "../style/lib.typ": *
#show: appearance

#section()[Đường trung bình của tam giác]

#subsection()[Lý thuyết]

#subsubsection()[Định nghĩa đường trung bình của tam giác]

#dn(tieude: "Đường trung bình của tam giác")[
  #immini[
    _Đường trung bình của tam giác_ là đoạn thẳng nối trung điểm hai cạnh của tam giác.
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 0.45cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), padding: 5pt)
      let A = (4, 7)
      let B = (2, 1)
      let C = (12, 1)
      let D = (A, 50%, B)
      let E = (A, 50%, C)
      line(A, B, C, A)
      line(D, E)
      content(A, [$A$], anchor: "south")
      content(B, [$B$], anchor: "north-east")
      content(C, [$C$], anchor: "north-west")
      content(D, [$D$], anchor: "east")
      content(E, [$E$], anchor: "south-west", padding: 2pt)
      content((A, 50%, D), [|], angle: 50deg)
      content((D, 50%, B), [|], angle: 50deg)
      content((A, 50%, E), [||], angle: -50deg)
      content((E, 50%, C), [||], angle: -50deg)
    })
  ]
]

#subsubsection()[Tính chất đường trung bình của tam giác]

#dl(tieude: "Tính chất đường trung bình của tam giác")[
  Đường trung bình của tam giác _song song_ với cạnh thứ ba và bằng _nửa_ cạnh đó.
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
        [$Delta A B C$, $A D=D B$, $A E=E C$, $D in A B$, $E in A C$.],
        [KL],
        pad(y: 8pt)[
          $D E\/\/B C$; $D E=1/2B C$.
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
        let A = (4, 7)
        let B = (2, 1)
        let C = (12, 1)
        let D = (A, 50%, B)
        let E = (A, 50%, C)
        line(A, B, C, A)
        line(D, E)
        content(A, [$A$], anchor: "south")
        content(B, [$B$], anchor: "north-east")
        content(C, [$C$], anchor: "north-west")
        content(D, [$D$], anchor: "east")
        content(E, [$E$], anchor: "south-west", padding: 2pt)
        content((A, 50%, D), [|], angle: 50deg)
        content((D, 50%, B), [|], angle: 50deg)
        content((A, 50%, E), [||], angle: -50deg)
        content((E, 50%, C), [||], angle: -50deg)
      })
    ],
  )
]

#vd()[
  #immini[
    Cho tam giác $A B C$, $D$ và $E$ lần lượt là trung điểm của $A B$ và $A C$. Tính $D E$ biết rằng $B C=20$ cm.
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 0.5cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), padding: 5pt)
      let A = (8, 7)
      let B = (2, 1)
      let C = (12, 1)
      let D = (A, 50%, B)
      let E = (A, 50%, C)
      line(A, B, C, A)
      line(D, E)
      content(A, [$A$], anchor: "south")
      content(B, [$B$], anchor: "north-east")
      content(C, [$C$], anchor: "north-west")
      content(D, [$D$], anchor: "east")
      content(E, [$E$], anchor: "south-west", padding: 2pt)
      content((A, 50%, D), [|], angle: 50deg)
      content((D, 50%, B), [|], angle: 50deg)
      content((A, 50%, E), [||], angle: -50deg)
      content((E, 50%, C), [||], angle: -50deg)
      content((B, 50%, C), [$20$ cm], anchor: "north", padding: 5pt)
    })
  ]
  #loigiai()[
    #dotlineEX(3)
  ]
]

#vd()[
  #immini[
    Cho tam giác $A B C$. Lấy điểm $D$ là trung điểm của $A B$, điểm $E$ thuộc $A C$ sao cho $D E\/\/B C$. Chứng minh $E$ là trung điểm của $A C$.
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 0.4cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), padding: 5pt)
      let A = (4, 7)
      let B = (2, 1)
      let C = (12, 1)
      let D = (A, 50%, B)
      let E = (A, 50%, C)
      line(A, B, C, A)
      line(D, E)
      content(A, [$A$], anchor: "south")
      content(B, [$B$], anchor: "north-east")
      content(C, [$C$], anchor: "north-west")
      content(D, [$D$], anchor: "east")
      content(E, [$E$], anchor: "south-west", padding: 2pt)
      content((A, 50%, D), [|], angle: 50deg)
      content((D, 50%, B), [|], angle: 50deg)
    })
  ]
  #loigiai()[
    #dotlineEX(3)
  ]
]

#luuy()[
  Trong một tam giác, nếu một đường thẳng đi qua trung điểm một cạnh và song song với cạnh thứ hai thì nó đi qua trung điểm của cạnh thứ ba.
]

#subsection()[Bài tập tự luận]

#bt()[
  Cho tam giác $A B C$ có $A E$, $B F$, $C K$ là ba đường trung tuyến. Gọi $I$ là trung điểm của $A E$.
  #listEX()[
    + Chứng minh: $K I$ và $K F$ cùng song song với $B C$;
    + Chứng minh: $K$, $I$, $F$ thẳng hàng.
  ]
]

#bt()[
  Cho tam giác $A B C$ có $A B=5$ cm, $A C=7$ cm, $B C=9$ cm. Kéo dài $A B$ lấy điểm $D$ sao cho $B D=B A$. Kéo dài $A C$ lấy điểm $E$ sao cho $C E=C A$. Kéo dài đường trung tuyến $A M$ của tam giác $A B C$ lấy $M I=M A$. Chứng minh:
  #listEX()[
    + Tính độ dài các cạnh tam giác $A D E$;
    + $D I \/\/ B C$;
    + Ba điểm $D$, $I$, $E$ thẳng hàng.
  ]
]

#bt()[
  Cho tam giác $M N P$ có $M N=4$ cm, $M P=6$ cm, $N P=8$ cm. Kéo dài $M N$ lấy điểm $I$ sao cho $N I=N M$, kéo dài $M P$ lấy điểm $K$ sao cho $P K=P M$, kéo dài đường trung tuyến $M O$ của tam giác $M N P$ lấy $O S=O M$.
  #listEX()[
    + Tính độ dài các cạnh của tam giác $M I K$;
    + Chứng minh ba điểm $I$, $S$, $K$ thẳng hàng.
  ]
]

#bt()[
  Cho tứ giác $A B C D$ ($A B \/\/ C D$). Gọi $E$, $F$, $K$ theo thứ tự là trung điểm của $A D$, $B C$, $A C$.
  #listEX()[
    + So sánh các độ dài $E K$ và $C D$, $K F$ và $A B$;
    + Chứng minh: $E F = (A B + C D)/2$.
  ]
]

#bt()[
  Cho tam giác $A B C$ có $D$ là trung điểm của $A B$. Tia $D z \/\/ B C$ cắt $A C$ tại $E$. Chứng minh: $E$ là trung điểm của $A C$.
]

#bt()[
  Cho tam giác $A B C$ lấy $I$ thuộc cạnh $A B$ sao cho $I A=I B$. Qua $I$ kẻ đường thẳng song song với $B C$ cắt $A C$ tại $K$.
  #listEX()[
    + Chứng minh: $K$ là trung điểm của $A C$;
    + Chứng minh: $I K$ là đường trung bình của tam giác $A B C$.
  ]
]

#bt()[
  Cho tam giác $A B C$ có độ dài $B C=a$ và $M$ là trung điểm của $A B$. Tia $M x \/\/ B C$ cắt $A C$ tại $N$.
  #listEX()[
    + Chứng minh: $N$ là trung điểm của $A C$;
    + Tính độ dài đoạn thẳng $M N$ theo $a$.
  ]
]

#bt()[
  Cho tam giác $A B C$ cân tại $A$ có $M$ là trung điểm $B C$. Kẻ $M x \/\/ A C$ cắt $A B$ tại $E$, kẻ $M y \/\/ A B$ cắt $A C$ tại $F$. Chứng minh:
  #listEX()[
    + $E$, $F$ là trung điểm của $A B$ và $A C$;
    + $E F = 1/2 B C$;
    + $M E=M F=A E=A F$.
  ]
]

#bt()[
  Cho tam giác $A B C$ có $A H$ là đường cao. Lấy $E$ và $K$ lần lượt là trung điểm của $A B$ và $A C$.
  #listEX()[
    + Chứng minh: $E K$ là đường trung bình của tam giác $A B C$;
    + Đường thẳng $E K$ cắt $A H$ tại $I$. Chứng minh: $I$ là trung điểm của $A H$;
    + Biết $B C=10$ cm. Tính $E K$.
  ]
]

#bt()[
  Cho hình thang $A B C D$ ($A B \/\/ C D$). Qua trung điểm $M$ của $A D$ vẽ đường thẳng song song với $A B$ cắt $A C$ tại $N$ và $B C$ tại $K$.
  #listEX()[
    + Chứng minh: $N$ là trung điểm của $A C$ và $K$ là trung điểm của $B C$;
    + Cho $A B=1/2 D C$ và $D C=20$ cm. Tính độ dài $A B$, $M N$, $N K$, $M K$.
  ]
]
