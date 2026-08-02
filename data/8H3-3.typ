
#import "../style/lib.typ": *
#show: appearance

#section()[Hình bình hành]

#subsection()[Lý thuyết]

#subsubsection()[Hình bình hành]

#dn(tieude: "Hình bình hành")[
  #immini()[
    _Hình bình hành_ là tứ giác có các cạnh đối song song.
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 0.9cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
      let A = (0, 0)
      let B = (3.5, 0)
      let C = (2.5, -2)
      let D = (-1, -2)
      line(A, B, C, D, A)
      content(A, [$A$], anchor: "south-east", padding: 3pt)
      content(B, [$B$], anchor: "south-west", padding: 3pt)
      content(C, [$C$], anchor: "north-west", padding: 3pt)
      content(D, [$D$], anchor: "north-east", padding: 3pt)
    })
  ]
]

#vd()[
  #immini()[
    Cho tứ giác $A B C D$ và các góc bằng nhau như hình bên. Tứ giác $A B C D$ có là hình bình hành không? Tại sao?
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 0.7cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
      let A = (0, 0)
      let B = (3.5, 0)
      let C = (2.5, -2)
      let D = (-1, -2)
      line(A, B, C, D, A)
      line(B, (B, -30%, C))
      line(D, (D, -30%, C))
      content(A, [$A$], anchor: "south-east", padding: 3pt)
      content(B, [$B$], anchor: "west", padding: 3pt)
      content(C, [$C$], anchor: "north-west", padding: 3pt)
      content(D, [$D$], anchor: "north", padding: 3pt)
      content((B, -30%, C), [$x$], anchor: "west", padding: 3pt)
      content((D, -30%, C), [$y$], anchor: "north", padding: 3pt)
      angle(A, D, B, label: none, radius: 0.3)
      angle(B, (B, -30%, C), A, label: none, radius: 0.3)
      angle(D, A, (D, -30%, C), label: none, radius: 0.3)
    })
  ]
  #loigiai()[
    #dotlineEX(4)
  ]
]

#subsubsection()[Tính chất hình bình hành]

#dl(tieude: "Tính chất hình bình hành")[
  Trong hình bình hành:
  - Các cạnh đối bằng nhau;
  - Các góc đối bằng nhau;
  - Hai đường chéo cắt nhau tại trung điểm của mỗi đường.
]

#nhanxet()[Trong hình bình hành, hai góc kể một cạnh bất kì thì bù nhau.]

#subsubsection()[Dấu hiệu nhận biết]

#dl(tieude: "Dấu hiệu nhận biết hình bình hành theo cạnh")[

  - #immini()[
      Tứ giác có các cạnh đối bằng nhau là một hình bình hành.
    ][
      #import "@preview/cetz:0.5.2"
      #set text(size: 10pt)
      #cetz.canvas(length: 0.9cm, {
        import cetz.draw: *
        import cetz.angle: *
        set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
        let A = (0, 0)
        let B = (3.5, 0)
        let C = (2.5, -2)
        let D = (-1, -2)
        line(A, B, C, D, A)
        content(A, [$A$], anchor: "south-east", padding: 3pt)
        content(B, [$B$], anchor: "south-west", padding: 3pt)
        content(C, [$C$], anchor: "north-west", padding: 3pt)
        content(D, [$D$], anchor: "north-east", padding: 3pt)
        content((A, 50%, B), [|], angle: -20deg)
        content((C, 50%, D), [|], angle: -20deg)
        content((A, 50%, D), [||], angle: 90deg)
        content((C, 50%, B), [||], angle: 90deg)
      })
    ]
  - #immini()[
      Tứ giác có một cặp cạnh đối song song và bằng nhau là một hình bình hành.
    ][
      #import "@preview/cetz:0.5.2"
      #set text(size: 10pt)
      #cetz.canvas(length: 0.9cm, {
        import cetz.draw: *
        import cetz.angle: *
        set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
        let A = (0, 0)
        let B = (3.5, 0)
        let C = (2.5, -2)
        let D = (-1, -2)
        line(A, B, C, D, A)
        content(A, [$A$], anchor: "south-east", padding: 3pt)
        content(B, [$B$], anchor: "south-west", padding: 3pt)
        content(C, [$C$], anchor: "north-west", padding: 3pt)
        content(D, [$D$], anchor: "north-east", padding: 3pt)
        content((A, 50%, B), [|], angle: -20deg)
        content((C, 50%, D), [|], angle: -20deg)
        content((C, 50%, D), [$A B\/\/C D$], anchor: "north", padding: 10pt)
      })
    ]
]

#vd()[
  #immini()[
    Cho hình bình hành $A B C D$ ($A B > B C$). Tia phân giác của góc $D$ cắt $A B$ tại $E$ và tia phân giác của góc $B$ cắt $C D$ tại $F$.
    + Chứng minh hai tam giác $A D E$ và $C B F$ là những tam giác cân, bằng nhau.
    + Tứ giác $D E B F$ là hình gì? Tại sao?
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 0.5cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
      let goc_D = 60deg // Góc nhọn của hình bình hành tại D
      let goc_nua = goc_D / 2 // Góc của tia phân giác (30 độ)
      let canh_day = 8 // Độ dài cạnh DC và AB
      let canh_ben = 4.5 // Độ dài cạnh DA và CB
      let D = (0, 0)
      hide({
        line(D, (rel: (angle: goc_D, radius: canh_ben)), name: "tia_DA")
        line(D, (rel: (angle: 0deg, radius: canh_day)), name: "tia_DC")
      })
      let A = "tia_DA.end"
      let C = "tia_DC.end"
      hide({
        line(A, (rel: (angle: 0deg, radius: canh_day)), name: "tia_AB")
      })
      let B = "tia_AB.end"
      hide({
        line(D, (rel: (angle: goc_nua, radius: 15)), name: "tia_DE")
        line(B, (rel: (angle: 180deg + goc_nua, radius: 15)), name: "tia_BF")
      })
      intersections("E_i", "tia_AB", "tia_DE")
      let E = "E_i.0"
      intersections("F_i", "tia_DC", "tia_BF")
      let F = "F_i.0"
      line(A, B, C, D, close: true)
      line(D, E)
      line(B, F)
      content(A, [$A$], anchor: "south-east", padding: 5pt)
      content(B, [$B$], anchor: "south-west", padding: 5pt)
      content(C, [$C$], anchor: "north-west", padding: 5pt)
      content(D, [$D$], anchor: "north-east", padding: 5pt)
      content(E, [$E$], anchor: "south", padding: 5pt)
      content(F, [$F$], anchor: "north", padding: 5pt)
      angle(D, E, A, label: none, radius: 1.5)
      angle(D, F, E, label: none, radius: 1.8)
      angle(B, E, F, label: none, radius: 1.5)
      angle(B, F, C, label: none, radius: 1.8)
    })
  ]
  #loigiai()[
    #dotlineEX(15)
  ]
]

#dl(tieude: "Dấu hiệu nhận biết hình bình hành theo góc và đường chéo")[
  - #immini()[
      Tứ giác có các góc đối bằng nhau là một hình bình hành.
    ][
      #import "@preview/cetz:0.5.2"
      #set text(size: 10pt)
      #cetz.canvas(length: 0.9cm, {
        import cetz.draw: *
        import cetz.angle: *
        set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
        let A = (0, 0)
        let B = (3.5, 0)
        let C = (2.5, -2)
        let D = (-1, -2)
        line(A, B, C, D, A)
        content(A, [$A$], anchor: "south-east", padding: 3pt)
        content(B, [$B$], anchor: "south-west", padding: 3pt)
        content(C, [$C$], anchor: "north-west", padding: 3pt)
        content(D, [$D$], anchor: "north-east", padding: 3pt)
        angle(B, A, C, label: none, radius: 10pt)
        angle(D, C, A, label: none, radius: 10pt)
        angle(C, B, D, label: none, radius: 10pt)
        angle(C, B, D, label: none, radius: 12pt)
        angle(A, D, B, label: none, radius: 10pt)
        angle(A, D, B, label: none, radius: 12pt)
      })
    ]
  - #immini()[
      Tứ giác có hai đường chéo cắt nhau tại trung điểm của mỗi đường là một hình bình hành.
    ][
      #import "@preview/cetz:0.5.2"
      #set text(size: 10pt)
      #cetz.canvas(length: 0.9cm, {
        import cetz.draw: *
        import cetz.angle: *
        set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
        let A = (0, 0)
        let B = (3.5, 0)
        let C = (2.5, -2)
        let D = (-1, -2)
        let O = ((A.at(0) + C.at(0)) / 2, (A.at(1) + C.at(1)) / 2)
        line(A, B, C, D, A)
        line(A, C)
        line(B, D)
        content(A, [$A$], anchor: "south-east", padding: 3pt)
        content(B, [$B$], anchor: "south-west", padding: 3pt)
        content(C, [$C$], anchor: "north-west", padding: 3pt)
        content(D, [$D$], anchor: "north-east", padding: 3pt)
        content(O, [$O$], anchor: "south", padding: 4pt)
        content((A, 50%, O), [|], angle: -20deg)
        content((C, 50%, O), [|], angle: -20deg)
        content((O, 50%, D), [||], angle: 0deg)
        content((O, 50%, B), [||], angle: 0deg)
      })
    ]
]

#vd()[
  #immini()[
    Tứ giác $A B C D$ như hình vẽ bên có là hình bình hành không? Tại sao?
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 0.9cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
      let D = (0, 0)
      hide({
        line(D, (rel: (angle: 110deg, radius: 2.2)), name: "rayDA")
        line(D, (rel: (angle: 0deg, radius: 3.2)), name: "rayDC")
      })
      let A = "rayDA.end"
      let C = "rayDC.end"
      hide({
        line(A, (rel: (angle: 0deg, radius: 10)), name: "rayAB")
        line(C, (rel: (angle: 110deg, radius: 10)), name: "rayCB")
      })
      intersections("B_i", "rayAB", "rayCB")
      let B = "B_i.0"
      line(A, B, C, D, close: true)
      content(A, [$A$], anchor: "south-east", padding: 5pt)
      content(B, [$B$], anchor: "south-west", padding: 5pt)
      content(C, [$C$], anchor: "north-west", padding: 5pt)
      content(D, [$D$], anchor: "north-east", padding: 5pt)
      content((rel: (angle: -30deg, radius: 0.6), to: A), [$70 degree$], size: 9pt)
      content((rel: (angle: -140deg, radius: 0.45), to: B), [$110 degree$], size: 9pt)
      content((rel: (angle: 35deg, radius: 0.45), to: D), [$110 degree$], size: 9pt)
    })
  ]
  #loigiai()[
    #dotlineEX(3)
  ]
]

#subsection()[Bài tập tự luận]

#bt()[
  Cho hình bình hành $A B C D$.
  #listEX()[
    + Chứng minh: $triangle A D C = triangle C B A$, từ đó suy ra $C D = A B$ và $A D = B C$;
    + Chứng minh: $hat(A D C) = hat(C B A)$ và $hat(D A B) = hat(D C B)$;
    + Gọi $O$ là giao điểm của $A C$ và $B D$. Chứng minh: $O$ là trung điểm của $A C$ và $B D$.
  ]
]

#bt()[
  Cho hình bình hành $A B C D$ có $hat(D A B) = 60°$. Tính số đo $hat(A B C)$, $hat(B C D)$, $hat(C D A)$.
]

#bt()[
  Cho hình bình hành $A B C D$ có $O$ là trung điểm của đường chéo $A C$. Chứng minh: $B$, $O$, $D$ thẳng hàng.
]

#bt()[
  Cho tứ giác $A B C D$ có: $A D \/\/ B C$; $hat(A B C) = 70°$; $hat(B C D) = 110°$. Chứng minh: tứ giác $A B C D$ là hình bình hành.
]

#bt()[
  Cho tứ giác $A B C D$ có: $A B = 6$ cm; $B C = 4$ cm; $C D = 6$ cm; $A D = 4$ cm. Chứng minh: tứ giác $A B C D$ là hình bình hành.
]

#bt()[
  Cho hình bình hành $A B C D$. Gọi $E$, $F$, $G$, $H$ lần lượt là trung điểm các cạnh $A B$, $B C$, $C D$, $D A$.
  #listEX()[
    + Chứng minh: $A E = C G$ và $triangle A E H = triangle C G F$;
    + Chứng minh: $H G = E F$ và tứ giác $E F G H$ là hình bình hành.
  ]
]

#bt()[
  Cho hình thang cân $A B C D$ ($A B \/\/ C D$, $A B < C D$), các đường cao $A H$, $B K$.
  #listEX()[
    + Chứng minh: $D H = C K$;
    + Gọi $N$ là điểm đối xứng với $D$ qua $H$. Chứng minh: $A B C N$ là hình bình hành;
    + Tính diện tích tứ giác $A B C D$, biết $A B = 6$ cm, $A H = 4$ cm và $D H = 3$ cm.
  ]
]

#bt()[
  Cho tam giác $A B C$ vuông tại $A$ có $A C = 5$ cm, $B C = 13$ cm. Gọi $E$ là trung điểm của cạnh $A B$, $D$ là điểm đối xứng với $C$ qua $E$.
  #listEX()[
    + Tứ giác $A D B C$ là hình gì? Vì sao?
    + Trên $B C$ lấy điểm $F$ sao cho $E F \/\/ A C$. Chứng minh: $E F perp A B$;
    + Tính diện tích $triangle A B C$.
  ]
]

#bt()[
  Cho tứ giác $A B C D$ có: $A B = 5$ cm; $A B + B C = 12$ cm; $B C + C D = 12$ cm; $C D + A D = 12$ cm. Chứng minh: tứ giác $A B C D$ là hình bình hành.
]

#bt()[
  Cho tứ giác $A B C D$ có: $hat(D A B) = 120°$; $hat(A B C) = 60°$; $hat(B C D) = 120°$. Chứng minh: tứ giác $A B C D$ là hình bình hành.
]

#bt()[
  Cho tam giác $A B C$. Trên tia đối của tia $A B$ lấy điểm $D$ sao cho $A D = A B$, trên tia đối của tia $A C$ lấy điểm $E$ sao cho $A E = A C$. Chứng minh: tứ giác $B C D E$ là hình bình hành.
]

#bt()[
  Cho tam giác $A B C$ có đường trung tuyến $B M$. Trên tia đối của tia $M B$ lấy điểm $D$ sao cho $M D = M B$. Chứng minh: tứ giác $A B D C$ là hình bình hành.
]

#bt()[
  Cho hình thang $A B C D$ có $A B \/\/ C D$ và $A B = 1/2 C D$. Gọi $E$ là trung điểm của cạnh $C D$. Chứng minh: Các tứ giác $A B E D$, $A B C E$ là các hình bình hành.
]

#bt()[
  Cho hình thang $A B C D$ có độ dài đáy lớn $A B$ bằng $2$ lần đáy nhỏ $C D$. Gọi $M$ là trung điểm của $A B$. Đường thẳng $A D$ cắt đường thẳng $B C$ tại $E$.
  #listEX()[
    + Chứng minh: tứ giác $A M C D$ và tứ giác $B C D M$ là hình bình hành;
    + Chứng minh: $hat(D M A) = hat(E C D)$ và $A D = D E$;
    + Chứng minh: $C$ là trung điểm của đoạn $B E$.
  ]
]

#bt()[
  Cho hình bình hành $A B C D$. Gọi $E$, $F$ theo thứ tự là trung điểm $A B$, $C D$. Gọi $M$ là giao điểm của $A F$ và $D E$, $N$ là giao điểm của $B F$ và $C E$.
  #listEX()[
    + Chứng minh: $A E = C F$ và tứ giác $A E C F$ là hình bình hành;
    + Chứng minh: $B F \/\/ D E$ và $E M F N$ là hình bình hành;
    + Chứng minh: các đường thẳng $A C$, $E F$, $M N$ đồng qui.
  ]
]

#bt()[
  Cho hình bình hành $A B C D$. Trên cạnh $A B$ lấy điểm $E$, trên cạnh $C D$ lấy điểm $F$ sao cho $A E = D F$.
  #listEX()[
    + Chứng minh: $A E \/\/ D F$; $B E \/\/ C F$;
    + Chứng minh: $B E = C F$;
    + Chứng minh: tứ giác $A E F D$ là hình bình hành;
    + Chứng minh: tứ giác $B E F C$ là hình bình hành.
  ]
]

#bt()[
  Cho hình bình hành $A B C D$. Trên cạnh $A B$ lấy điểm $E$, trên cạnh $C D$ lấy điểm $F$ sao cho $A E = C F$.
  #listEX()[
    + Chứng minh: $A E \/\/ C F$; $B E \/\/ D F$;
    + Chứng minh: $B E = D F$;
    + Chứng minh: tứ giác $A E C F$ là hình bình hành;
    + Chứng minh: tứ giác $B E D F$ là hình bình hành.
  ]
]

#bt()[
  Cho hình bình hành $A B C D$ có $M$ là trung điểm của $A B$ và $N$ là trung điểm của $C D$.
  #listEX()[
    + Chứng minh: tứ giác $A M N D$ là hình bình hành;
    + Chứng minh: tứ giác $A M C N$ là hình bình hành.
  ]
]

#bt()[
  Cho hình bình hành $A B C D$ ($A B > A D$), phân giác của góc $D$ cắt $A B$ tại $M$.
  #listEX()[
    + Chứng minh: $A M = A D$;
    + Trên $D C$ lấy $N$ sao cho $D N = B M$. Chứng minh: tứ giác $B M D N$ là hình bình hành;
    + Chứng minh: $M N$ đi qua trung điểm của $A C$.
  ]
]

#bt()[
  Cho hình bình hành $A B C D$. Gọi $O$ là giao điểm của hai đường chéo $A C$ và $B D$. Một đường thẳng qua $O$ cắt $A B$ tại $E$ và cắt $C D$ tại $F$.
  #listEX()[
    + Chứng minh: $O$ là trung điểm của $E F$;
    + Chứng minh: tứ giác $A E C F$ là hình bình hành;
    + Chứng minh: tứ giác $B E D F$ là hình bình hành.
  ]
]

#bt()[
  Cho hình bình hành $A B C D$. Trên cạnh $A B$ lấy điểm $E$, trên cạnh $C D$ lấy điểm $F$ sao cho $A E = C F$. Gọi $O$ là giao điểm của $A C$ và $B D$. Chứng minh:
  #listEX()[
    + Tứ giác $A E C F$ là hình bình hành;
    + $O$ là trung điểm của $E F$.
  ]
]

#bt()[
  Cho hình bình hành $A B C D$ có $E$ là hình chiếu của $A$ và $F$ là hình chiếu của $C$ lên đường chéo $B D$.
  #listEX()[
    + Chứng minh: $triangle A D E = triangle C B F$;
    + Chứng minh: tứ giác $A E C F$ là hình bình hành.
  ]
]

#bt()[
  Cho hình bình hành $A B C D$, có $O$ là giao điểm của $A C$ và $B D$. Đường thẳng qua $O$ cắt $A B$ ở $M$ và $C D$ ở $N$.
  #listEX()[
    + Chứng minh: $O M = O N$;
    + Tứ giác $A M C N$ là hình đặc biệt nào?
  ]
]

#bt()[
  Cho hình bình hành $A B C D$ có $A B > A D$. Kẻ $A E$, $C F$ cùng vuông góc $B D$ ($E$, $F in B D$). Chứng minh:
  #listEX()[
    + $A E \/\/ C F$ và $A E = C F$;
    + Tứ giác $A E C F$ là hình gì? Vì sao?
  ]
]

#bt()[
  Cho hình bình hành $A B C D$ có $A B > A D$, vẽ $A E perp B D$, $C F perp B D$ ($E$, $F in B D$). $A E$ kéo dài cắt $C D$ tại $H$ và $C F$ kéo dài cắt $A B$ tại $K$. Chứng minh:
  #listEX()[
    + $A E C F$ là hình bình hành;
    + $A H C K$ là hình bình hành.
  ]
]

#bt()[
  Lấy điểm $M$ và $N$ trên hai cạnh $A B$ và $B C$ của tam giác đều $A B C$ sao cho $M N \/\/ A C$. Lấy điểm $P$ trên cạnh $A C$ sao cho $hat(C N P) = 60°$. Chứng minh: tứ giác $A M N P$ là hình bình hành.
]

#bt()[
  Tam giác $A B C$ có $M$, $N$ lần lượt là trung điểm của $B C$ và $C A$. Đường thẳng $A x \/\/ B C$ cắt đường thẳng $M N$ ở $D$. Chứng minh: tứ giác $A B M D$ và $A D C M$ là hình bình hành.
]

#bt()[
  Vẽ hình bình hành $A B C D$. Kéo dài đường trung tuyến $A M$ của tam giác $A B C$ rồi lấy $M E = M A$.
  #listEX()[
    + Tứ giác $A B E C$ là hình đặc biệt nào?
    + Chứng minh: $D$, $C$, $E$ thẳng hàng và suy ra $C$ là trung điểm của $D E$.
  ]
]

#bt()[
  Vẽ tam giác nhọn $A B C$ ($A B < A C$) có đường trung tuyến $A M$. Lấy điểm $D$ trên tia đối của tia $M A$ sao cho $M D = M A$.
  #listEX()[
    + Chứng minh: tứ giác $A B D C$ là hình bình hành;
    + So sánh $S_(A B D)$ với $S_(A C D)$.
  ]
]

#bt()[
  Cho tam giác nhọn $A B C$ ($A B < A C$). Vẽ tia $B x \/\/ A C$ và tia $C y \/\/ A B$ sao cho $B x$ và $C y$ cắt nhau ở $D$. Gọi $M$ là trung điểm của $B C$.
  #listEX()[
    + Tứ giác $A B D C$ là hình đặc biệt gì?
    + Chứng minh: $A$, $M$, $D$ thẳng hàng.
  ]
]

#bt()[
  Cho tam giác $A B C$. Kéo dài hai đường trung tuyến $B M$ và $C N$ rồi lần lượt lấy $M D = M B$ và $N E = N C$.
  #listEX()[
    + Các tứ giác $A B D C$ và $A C B E$ có dạng đặc biệt nào?
    + Chứng minh: $D$, $A$, $E$ thẳng hàng rồi suy ra điểm $A$ là trung điểm của đoạn thẳng $D E$.
  ]
]

#bt()[
  Cho hình bình hành $A B C D$ có hai đường chéo $A C$ và $B D$ cắt nhau tại $O$. Gọi $M$, $N$, $P$, $Q$ lần lượt là trung điểm các đoạn $O A$, $O B$, $O C$, $O D$.
  #listEX()[
    + Chứng minh: tứ giác $M N P Q$ là hình bình hành;
    + Chứng minh: các tứ giác $A N C Q$, $B P D M$ là các hình bình hành.
  ]
]

#bt()[
  Cho tam giác $A B C$ có các đường trung tuyến $B E$, $C F$ và trọng tâm $G$. Gọi $M$ và $N$ lần lượt là trung điểm của $B G$ và $C G$.
  #listEX()[
    + Chứng minh: $G$ là trung điểm $M E$;
    + Chứng minh: $M N E F$ là hình bình hành.
  ]
]

#bt()[
  Cho hình bình hành $A B C D$, có $M$ và $N$ là trung điểm của $A B$ và $C D$. Gọi $O$ là giao điểm của $A C$ và $B D$. Chứng minh: $A C$, $B D$, $M N$ đồng quy tại điểm $O$.
]

#bt()[
  Cho hình bình hành $A B C D$. Biết $hat(B A D) = 120°$ và $O$ là trung điểm của $B D$.
  #listEX()[
    + Tính số đo các góc còn lại của hình bình hành;
    + Chứng minh: $A$, $O$, $C$ thẳng hàng.
  ]
]

#bt()[
  Cho hình bình hành $A B C D$ có $E$ là trung điểm của $A B$, $F$ là trung điểm của $C D$. Chứng minh: $D E = B F$.
]

#bt()[
  Cho hình thang $A B C D$ ($A B \/\/ C D$) có $D C = 2 A B$. Gọi $K$ là trung điểm của $D C$.
  #listEX()[
    + Tứ giác $A B K D$ là hình gì? Vì sao?
    + Vẽ hình bình hành $K B C H$ ($H$ và $B$ nằm khác phía đối với $D C$). Chứng minh: $A$ và $H$ đối xứng nhau qua $K$.
  ]
]

#bt()[
  Cho hình bình hành $A B C D$ có $A B > A D$. Kẻ $A E$, $C F$ cùng vuông góc $B D$ ($E$, $F in B D$).
  #listEX()[
    + Chứng minh: $A E \/\/ C F$ và $A E = C F$;
    + Tứ giác $A E C F$ là hình gì? Vì sao?
  ]
]

#bt()[
  Cho $A E = 12$ cm, $B D = 18$ cm. Tính $S_(A B C D)$. Cho hình bình hành $A B C D$. Gọi $O$ là giao điểm hai đường thẳng $A C$ và $B D$. Qua điểm $O$, vẽ đường thẳng $a$ cắt hai đường thẳng $A D$, $B C$ lần lượt tại $E$, $F$. Qua $O$ vẽ đường thẳng $b$ cắt hai cạnh $A B$, $C D$ lần lượt tại $M$, $N$. Chứng minh:
  #listEX()[
    + $triangle O A M = triangle O C N$ và $O$ là trung điểm của $M N$;
    + Tứ giác $E M F N$ là hình bình hành.
  ]
]

#bt()[
  Cho hình bình hành $A B C D$ có $A B > A D$, vẽ $A E perp B D$, $C F perp B D$ ($E$, $F in B D$). $A E$ kéo dài cắt $C D$ tại $H$ và $C F$ kéo dài cắt $A B$ tại $K$. Chứng minh:
  #listEX()[
    + $A E C F$ là hình bình hành;
    + $A H C K$ là hình bình hành;
    + $A C$, $B D$, $H K$ đồng quy.
  ]
]

#bt()[
  Cho $triangle A B C$ cân ở $A$ có điểm $D$ trên cạnh $B C$. Vẽ $D M \/\/ A C$ ($M in A B$), $D N \/\/ A B$ ($N in A C$).
  #listEX()[
    + Chứng minh: $A M D N$ là hình bình hành;
    + $triangle B D M$ là tam giác gì?
    + So sánh $D M + D N$ với $A B$.
  ]
]

#bt()[
  Cho $triangle A B C$ có $D$, $E$, $F$ lần lượt là trung điểm của các cạnh $B C$, $A C$, $A B$.
  #listEX()[
    + Chứng minh: $D E \/\/ A F$ và $D E = A F$;
    + Chứng minh: các tứ giác $A E D F$, $B F E D$, $C D F E$ là các hình bình hành.
  ]
]

#bt()[
  Cho hình bình hành $A B C D$, hai đường chéo cắt nhau tại $O$. Lấy $M$, $N$ lần lượt là trung điểm của $O D$, $O B$. $E$ là giao điểm của $A M$ và $C D$, $F$ là giao điểm của $C N$ và $A B$.
  #listEX()[
    + Chứng minh: $O M = O N$ và tứ giác $A M C N$ là hình bình hành;
    + Chứng minh: tứ giác $A E C F$ là hình bình hành và $D E = B F$.
  ]
]

#bt()[
  Cho hình bình hành $A B C D$ có $M$, $N$ lần lượt là trung điểm của $A B$, $C D$. $A N$ và $C M$ cắt $B D$ lần lượt tại $E$ và $F$.
  #listEX()[
    + Chứng minh: tứ giác $A M C N$ là hình bình hành;
    + Từ $F$ kẻ đường thẳng song song với $A B$ cắt $A N$ tại $G$. Chứng minh: $A M F G$ là hình bình hành;
    + Chứng minh: $triangle B M F = triangle F G E$ và $F$ là trung điểm của $B E$;
    + Chứng minh: $B F = F E = E D$.
  ]
]

#bt()[
  Cho hình bình hành $A B C D$ ($A B > A D$). Gọi $E$, $F$ lần lượt là trung điểm của $C D$ và $A B$. Đường chéo $B D$ cắt $A E$, $A C$, $C F$ lần lượt tại $N$, $O$, $M$.
  #listEX()[
    + Chứng minh: $A E C F$ là hình bình hành;
    + Chứng minh: ba điểm $O$, $E$, $F$ thẳng hàng;
    + Chứng minh: $M$ là trọng tâm của $triangle A B C$ và $A E = 3 F M$;
    + Chứng minh: $N M = 1/3 O B$ và $D N = N M = M B$.
  ]
]

#bt()[
  Cho tam giác $A B C$. Từ một điểm $E$ trên cạnh $A C$ vẽ đường thẳng song song với $B C$ cắt $A B$ tại $F$ và đường thẳng song song với $A B$ cắt $B C$ tại $T$. Giả sử $A E = B F$. Chứng minh:
  #listEX()[
    + Tam giác $A E T$ cân;
    + $A T$ là phân giác của góc $B A C$.
  ]
]

#bt()[
  Cho $triangle A B C$ nhọn, các đường cao $B K$, $C D$ cắt nhau tại $H$. Đường vuông góc với $A B$ tại $B$ và đường vuông góc với $A C$ tại $C$ cắt nhau tại $M$.
  #listEX()[
    + Chứng minh: $A H perp B C$;
    + Chứng minh: tứ giác $B H C M$ là hình bình hành.
  ]
]
