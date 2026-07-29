#import "../style/lib.typ": *
#show: appearance

#section()[Tính chất đường phân giác của tam giác]

#subsection()[Lý thuyết]

#dn(tieude: "Tính chất đường phân giác của tam giác")[
  Trong tam giác, đường phân giác của một góc chia cạnh đối diện thành hai đoạn thẳng tỉ lệ với hai cạnh kề hai đoạn ấy.
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
        [$Delta A B C$, $A D$ là đường phân giác của $hat(B A C)$ ($D in B C$).],
        [KL],
        pad(y: 4pt)[
          $(D B)/(D C)=(A B)/(A C)$.
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
        let A = (4, 7)
        let B = (2, 1)
        let C = (12, 1)
        let D = (C, cetz.vector.dist(A, B) / cetz.vector.dist(A, C) * 100%, B)
        line(A, D)
        line(A, B, C, A)
        content(A, [$A$], anchor: "south")
        content(B, [$B$], anchor: "north-east")
        content(C, [$C$], anchor: "north-west")
        content(D, [$D$], anchor: "north")
        angle(A, B, D, label: none, radius: 1)
        angle(A, D, C, label: none, radius: 1.3)
      })
    ],
  )
]

#luuy()[
  Ngược lại, trong tam giác $A B C$, nếu $D$ là điểm thuộc đoạn $B C$ và thoả mãn $(D B)/(D C)=(A B)/(A C)$ thì $A D$ là đường phân giác của góc $B A C$.
]

#vd()[
  #immini()[
    Tính độ dài $x$ trong hình bên.
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 0.5cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), padding: 5pt)
      let E = (0, 0)
      let F = (7.2, 0)
      hide({
        line(E, (rel: (angle: 99.52deg, radius: 4.5)), name: "tia_ED")
      })
      let D = "tia_ED.end"
      hide({
        line(E, (rel: (angle: 49.76deg, radius: 10)), name: "tia_EM")
        line(D, F, name: "canh_DF")
      })
      intersections("M_i", "tia_EM", "canh_DF")
      let M = "M_i.0"
      line(E, D, F, close: true)
      line(E, M)
      angle(E, M, D, label: none, radius: 0.8)
      angle(E, F, M, label: none, radius: 1.2)
      content(D, [$D$], anchor: "south", padding: 4pt)
      content(E, [$E$], anchor: "north-east", padding: 4pt)
      content(F, [$F$], anchor: "north-west", padding: 4pt)
      content(M, [$M$], anchor: "south-west", padding: 2pt)
      content((E, 50%, D), [$4","5$], anchor: "east", padding: 5pt)
      content((D, 50%, M), [$3","5$], anchor: "south-west", padding: 2pt)
      content((M, 50%, F), [$5","6$], anchor: "south-west", padding: 2pt)
      content((E, 50%, F), [$x$], anchor: "north", padding: 5pt)
    })
  ]
  #loigiai()[
    #dotlineEX(3)
  ]
]

#subsection()[Bài tập tự luận]

#bt()[
  Cho tam giác $A B C$ có $A B=12$ cm, $A C=16$ cm, $B C=20$ cm. Đường phân giác góc $B A C$ cắt cạnh $B C$ tại $D$.
  #listEX()[
    + Tính $D B$ và $D C$;
    + Tính tỉ số diện tích giữa $triangle A D B$ và $triangle A D C$.
  ]
]

#bt()[
  Cho tam giác $A B C$ vuông tại $A$ có $A B=3$ cm, $A C=4$ cm. Đường phân giác của góc $A$ cắt $B C$ tại $D$.
  #listEX()[
    + Tính $B C$, $D B$, $D C$;
    + Vẽ đường cao $A H$. Tính $A H$, $H D$, $A D$.
  ]
]

#bt()[
  Cho tam giác $A B C$ có trung tuyến $A M$. Đường phân giác của góc $A M B$ cắt $A B$ tại $P$ và đường phân giác của góc $A M C$ cắt $A C$ tại $Q$. Chứng minh: $P Q \/\/ B C$.
]

#bt()[
  Cho tam giác $A B C$ có $A D$ là đường phân giác trong. Từ $B$ kẻ tia song song với $A C$ và cắt $A D$ tại $M$.
  #listEX()[
    + Dùng hệ quả của định lí Thalès đối với $triangle D A C$ thì tỉ số $(D B)/(D C)$ bằng với tỉ số nào?;
    + $triangle A B M$ là tam giác gì? Chứng minh hệ quả 2 của định lí Thalès: đường phân giác $A D$ của $triangle A B C$ chia cạnh đối diện thành hai đoạn thẳng tương ứng tỉ lệ với hai cạnh kề của hai đoạn thẳng đó, nghĩa là $(D B)/(D C) = (A B)/(A C)$.
  ]
]

#bt()[
  Cho tam giác $A B C$ không cân tại $A$ (để dễ vẽ hình, nên vẽ góc ở đỉnh $B$ tù) và có $A E$ là đường phân giác ngoài ($E$ thuộc đường thẳng $B C$). Từ $B$ kẻ tia song song với $A C$ và cắt $A E$ tại $M$.
  #listEX()[
    + Theo hệ quả 1 của định lí Thalès trong $triangle E A C$ thì tỉ số $(E B)/(E C)$ bằng với tỉ số nào?;
    + $triangle A B M$ là tam giác gì? Chứng minh: $(E B)/(E C) = (A B)/(A C)$.
  ]
]

#bt()[
  Cho tam giác $A B C$ có $A I$ là đường phân giác trong ($I$ thuộc cạnh $B C$). Cho $A B=5$ cm; $A C=2$ cm; $B C=6$ cm.
  #listEX()[
    + Tính tỉ số $(I B)/(I C)$;
    + Tính độ dài đoạn thẳng $I B$, $I C$.
  ]
]

#bt()[
  Cho tam giác $A B C$ có $A D$ là đường phân giác trong ($D$ thuộc cạnh $B C$). Cho $A B=4$ cm; $A C=9$ cm; $B C=10$ cm.
  #listEX()[
    + Tính tỉ số $(D B)/(D C)$;
    + Tính độ dài đoạn thẳng $D B$, $D C$.
  ]
]

#bt()[
  Cho tam giác $A B C$ có $A I$ là đường phân giác trong ($I$ thuộc cạnh $B C$). Cho $A B=9$ cm; $A C=7$ cm; $B C=14$ cm.
  #listEX()[
    + Tính tỉ số $(I B)/(I C)$;
    + Tính độ dài đoạn thẳng $I B$, $I C$.
  ]
]

#bt()[
  Cho tam giác $M N P$, có $M I$ là đường phân giác trong ($I$ thuộc cạnh $N P$). Cho biết $M N=15$ cm; $M P=9$ cm; $N P=12$ cm. Tính độ dài đoạn thẳng $I N$, $I P$.
]

#bt()[
  Cho tam giác $A B C$ vuông tại $A$, có $A D$ là đường phân giác trong. Biết $A B=6$ cm, $B C=10$ cm. Tính $D B$, $D C$.
]

#bt()[
  Kẻ phân giác $A D$ của tam giác $A B C$. Giả sử $A B=8$ cm, $A C=12$ cm và $C D - B D=5$ cm. Tính độ dài $B D$, $C D$.
]

#bt()[
  Cho tam giác $A B C$ vuông tại $A$, có $B E$ là đường phân giác trong. Biết $A B=12$ cm, $B C=20$ cm. Tính $E A$, $E C$, $B E$.
]

#bt()[
  Cho tam giác $A B C$ vuông tại $A$, có $C K$ là đường phân giác trong. Biết $A C=4$ cm, $B C=5$ cm. Tính $K A$, $K B$, $C K$.
]

#bt()[
  Cho tam giác $D E F$, có $D K$ là đường phân giác ngoài ($K$ thuộc đường thẳng $E F$). Cho biết $D E=5$ cm; $D F=6$ cm; $E F=8$ cm.
  #listEX()[
    + Tính tỉ số $(K E)/(K F)$;
    + Tính độ dài đoạn thẳng $K E$, $K F$.
  ]
]

#bt()[
  Cho tam giác $A B C$, có $A K$ là đường phân giác ngoài ($K$ thuộc đường thẳng $B C$). Cho $A B=10$ cm; $A C=16$ cm; $B C=12$ cm.
  #listEX()[
    + Tính tỉ số $(K B)/(K C)$;
    + Tính độ dài đoạn thẳng $K B$, $K C$.
  ]
]

#bt()[
  Cho tam giác $D E F$, có $D K$ là đường phân giác ngoài ($K$ thuộc đường thẳng $E F$). Cho $D E=7$ cm; $D F=12$ cm; $E F=10$ cm.
  #listEX()[
    + Tính tỉ số $(K E)/(K F)$;
    + Tính độ dài đoạn thẳng $K E$, $K F$.
  ]
]

#bt()[
  Cho tam giác $D E F$, có $D N$ là đường phân giác ngoài ($N$ thuộc đường thẳng $E F$). Cho $D E=9$ cm; $D F=4$ cm; $E F=6$ cm.
  #listEX()[
    + Tính tỉ số $(N E)/(N F)$;
    + Tính độ dài đoạn thẳng $N E$, $N F$.
  ]
]

#bt()[
  Cho tam giác $D E F$, có $D K$ là đường phân giác ngoài ($K$ thuộc đường thẳng $E F$). Cho $D E=5$ cm; $D F=12$ cm; $E F=10$ cm. Tính độ dài đoạn thẳng $K E$, $K F$.
]

#bt()[
  Cho tam giác $A B C$, có $A I$ là đường phân giác trong, $A B=9$ cm.
  #listEX()[
    + $A C=12$ cm; $B C=8$ cm. Tính tỉ số $(I B)/(I C)$;
    + Tính độ dài đoạn thẳng $I B$, $I C$;
    + Cho $A K$ là đường phân giác ngoài của $triangle A B C$. Tính tỉ số $(K B)/(K C)$;
    + Tính độ dài đoạn thẳng $K B$, $K C$;
    + Tính độ dài đoạn thẳng $I K$.
  ]
]

#bt()[
  Cho tam giác $A B C$ có $A I$ là đường phân giác trong, $A B=12$ cm; $A C=15$ cm; $B C=21$ cm.
  #listEX()[
    + Tính tỉ số $(I B)/(I C)$;
    + Tính độ dài đoạn thẳng $I B$, $I C$;
    + Cho $A K$ là đường phân giác ngoài. Tính tỉ số $(K B)/(K C)$;
    + Tính độ dài đoạn thẳng $K B$, $K C$;
    + Tính độ dài đoạn thẳng $I K$.
  ]
]

#bt()[
  Cho tam giác $A B C$ có $A I$ là đường phân giác trong, $A B=4$ cm; $A C=12$ cm; $B C=9$ cm.
  #listEX()[
    + Tính tỉ số $(I B)/(I C)$;
    + Tính độ dài đoạn thẳng $I B$, $I C$;
    + Cho $A K$ là đường phân giác ngoài. Tính tỉ số $(K B)/(K C)$;
    + Tính độ dài đoạn thẳng $I K$.
  ]
]

#bt()[
  Cho tam giác $A B C$ có $A I$ là đường phân giác trong, $A B=10$ cm; $A C=5$ cm; $B C=12$ cm.
  #listEX()[
    + Tính độ dài đoạn thẳng $I B$, $I C$;
    + Cho $A K$ là đường phân giác ngoài. Tính độ dài $K B$, $K C$;
    + Tính độ dài đoạn thẳng $I K$.
  ]
]

#bt()[
  Cho tam giác $A B C$ có $A I$ là đường phân giác trong, $A B=2$ cm; $A C=3$ cm; $B C=4$ cm.
  #listEX()[
    + Tính độ dài đoạn thẳng $I B$, $I C$;
    + Cho $A K$ là đường phân giác ngoài. Tính độ dài $K B$, $K C$;
    + Tính độ dài đoạn thẳng $I K$.
  ]
]

#bt()[
  Cho tam giác $A B C$ có $A I$ là phân giác trong, $A B=6$ cm; $A C=12$ cm; $B C=14$ cm.
  #listEX()[
    + Tính độ dài đoạn thẳng $I B$, $I C$;
    + Cho $A K$ là đường phân giác ngoài. Tính độ dài $K B$, $K C$;
    + Tính độ dài đoạn thẳng $I K$.
  ]
]

#bt()[
  Cho tam giác $A B C$ có $A I$ là phân giác trong, $A B=13$ cm; $A C=17$ cm; $B C=20$ cm.
  #listEX()[
    + Tính độ dài đoạn thẳng $I B$, $I C$;
    + Cho $A K$ là đường phân giác ngoài. Tính độ dài $K B$, $K C$;
    + Tính độ dài đoạn thẳng $I K$.
  ]
]

#bt()[
  Cho tam giác $A B C$ có $A I$ là đường phân giác trong, $A B=8$ cm; $A C=14$ cm; $B C=20$ cm. Cho $A K$ là đường phân giác ngoài. Tính độ dài đoạn $I K$.
]

#bt()[
  Cho tam giác $A B C$ có $A I$ là đường phân giác trong, $A B=6$ cm; $A C=9$ cm; $B C=10$ cm. Cho $A K$ là đường phân giác ngoài. Tính độ dài đoạn $I K$.
]

#bt()[
  Cho tam giác $A B C$ có $A I$ là đường phân giác trong, $A B=10$ cm; $A C=15$ cm; $B C=18$ cm. Cho $A K$ là đường phân giác ngoài. Tính độ dài đoạn $I K$.
]

#bt()[
  Cho tam giác nhọn $A B C$ có $A D$ là đường phân giác trong. Giả sử $A B=8$ cm, $A C=12$ cm và $C D - B D=6$ cm. Tính độ dài $B D$, $C D$.
]
