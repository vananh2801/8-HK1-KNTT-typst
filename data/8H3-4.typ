
#import "../style/lib.typ": *
#show: appearance

#section()[Hình chữ nhật]

#subsection()[Lý thuyết]

#subsubsection()[Hình chữ nhật]

#dn(tieude: "Hình chữ nhật")[
  #immini()[
    _Hình chữ nhật_ là tứ giác có bốn góc vuông.
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 0.9cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
      let A = (0, 0)
      let B = (3.5, 0)
      let C = (3.5, -2)
      let D = (0, -2)
      line(A, B, C, D, A)
      content(A, [$A$], anchor: "south-east", padding: 3pt)
      content(B, [$B$], anchor: "south-west", padding: 3pt)
      content(C, [$C$], anchor: "north-west", padding: 3pt)
      content(D, [$D$], anchor: "north-east", padding: 3pt)
      right-angle(A, D, B, label: none, radius: 0.3)
      right-angle(B, A, C, label: none, radius: 0.3)
      right-angle(C, B, D, label: none, radius: 0.3)
      right-angle(D, C, A, label: none, radius: 0.3)
    })
  ]
]

#vd()[
  #immini()[
    Tứ giác $A B C D$ như hình vẽ bên có phải là hình chữ nhật không? Vì sao?
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 0.8cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
      rotate(30deg)
      let A = (0, 0)
      let B = (3.5, 0)
      let C = (3.5, -1.5)
      let D = (0, -1.5)
      line(A, B, C, D, A)
      content(A, [$A$], anchor: "south-east", padding: 3pt)
      content(B, [$B$], anchor: "south-west", padding: 3pt)
      content(C, [$C$], anchor: "north-west", padding: 3pt)
      content(D, [$D$], anchor: "north-east", padding: 3pt)
      right-angle(C, B, D, label: none, radius: 0.3)
      right-angle(D, C, A, label: none, radius: 0.3)
      content((D, 50%, C), [$A B\/\/C D$], anchor: "north-west", padding: 5pt)
    })
  ]
  #loigiai()[
    #dotlineEX(3)
  ]
]

#luuy()[
  Nếu một tứ giác có ba góc vuông thì góc còn lại cũng là góc vuông và tứ giác đó là hình chữ nhật.
]

#subsubsection()[Tính chất hình chữ nhật]

#dl(tieude: "Tính chất hình chữ nhật")[
  #immini()[
    Trong hình chữ nhật, hai đường chéo bằng nhau và cắt nhau tại trung điểm của mỗi đường.
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 0.9cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
      let A = (0, 0)
      let B = (3.5, 0)
      let C = (3.5, -2)
      let D = (0, -2)
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

#subsubsection()[Dấu hiệu nhận biết hình chữ nhật]

#dl(tieude: "Dấu hiệu nhận biết hình chữ nhật")[
  - #immini()[
      Hình bình hành có một góc vuông là hình chữ nhật.
    ][
      #import "@preview/cetz:0.5.2"
      #set text(size: 10pt)
      #cetz.canvas(length: 0.9cm, {
        import cetz.draw: *
        import cetz.angle: *
        set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
        let A = (0, 0)
        let B = (3.5, 0)
        let C = (3.5, -2)
        let D = (0, -2)
        line(A, B, C, D, A)
        right-angle(D, C, A, label: none, radius: 0.3)
        content(A, [$A$], anchor: "south-east", padding: 3pt)
        content(B, [$B$], anchor: "south-west", padding: 3pt)
        content(C, [$C$], anchor: "north-west", padding: 3pt)
        content(D, [$D$], anchor: "north-east", padding: 3pt)
        content((C, 50%, D), [$A B\/\/C D$ và $A D\/\/B C$], anchor: "north", padding: 15pt)
      })
    ]
  - #immini()[
      Hình bình hành có hai đường chéo bằng nhau là hình chữ nhật.
    ][
      #import "@preview/cetz:0.5.2"
      #set text(size: 10pt)
      #cetz.canvas(length: 0.9cm, {
        import cetz.draw: *
        import cetz.angle: *
        set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
        let A = (0, 0)
        let B = (3.5, 0)
        let C = (3.5, -2)
        let D = (0, -2)
        let O = ((A.at(0) + C.at(0)) / 2, (A.at(1) + C.at(1)) / 2)
        line(A, B, C, D, A)
        line(A, C)
        line(B, D)
        line(A, C)
        line(B, D)
        content(A, [$A$], anchor: "south-east", padding: 3pt)
        content(B, [$B$], anchor: "south-west", padding: 3pt)
        content(C, [$C$], anchor: "north-west", padding: 3pt)
        content(D, [$D$], anchor: "north-east", padding: 3pt)
        content(O, [$O$], anchor: "south", padding: 4pt)
        content((A, 50%, O), [|], angle: -20deg)
        content((C, 50%, O), [|], angle: -20deg)
        content((O, 50%, D), [|], angle: 0deg)
        content((O, 50%, B), [|], angle: 0deg)
      })
    ]
]

#vd()[
  #immini()[
    Cho hình tứ giác $A B C D$ như hình vẽ bên. Chứng minh tam giác $A D B$ là tam giác vuông.
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 0.9cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
      let A = (0, 0)
      let B = (3.5, 0)
      let C = (3.5, -2)
      let D = (0, -2)
      let O = ((A.at(0) + C.at(0)) / 2, (A.at(1) + C.at(1)) / 2)
      line(A, B, C, D, A)
      line(A, C)
      line(B, D)
      line(A, C)
      line(B, D)
      content(A, [$A$], anchor: "south-east", padding: 3pt)
      content(B, [$B$], anchor: "south-west", padding: 3pt)
      content(C, [$C$], anchor: "north-west", padding: 3pt)
      content(D, [$D$], anchor: "north-east", padding: 3pt)
      content(O, [$O$], anchor: "south", padding: 4pt)
      content((A, 50%, O), [|], angle: -20deg)
      content((C, 50%, O), [|], angle: -20deg)
      content((O, 50%, D), [|], angle: 0deg)
      content((O, 50%, B), [|], angle: 0deg)
    })
  ]
  #loigiai()[
    #dotlineEX(5)
  ]
]

#nhanxet()[
  Nếu tam giác có một đường trung tuyến bằng nửa cạnh tương ứng thì tam giác đó là tam giác vuông.
]

#subsection()[Bài tập tự luận]

#bt()[
  Cho tam giác $A B C$ vuông ở $A$ có $A M$ là đường trung tuyến. Định dạng các tam giác $A B M$, $A C M$.
]

#bt()[
  Cho tam giác $A B C$ vuông ở $A$ có đường trung tuyến $A M$. Biết $A B = 6$cm; $A C = 8$cm. Tính độ dài các đoạn $B C$, $A M$.
]

#bt()[
  Cho tam giác $A B C$ vuông ở $A$. Gọi $E$ là trung điểm của đoạn $B C$. Gọi $D$ là điểm đối xứng của $A$ qua $E$. Chứng minh: tứ giác $A B D C$ là hình chữ nhật.
]

#bt()[
  Cho tam giác $A B C$ cân tại $A$, đường trung tuyến $A H$. Gọi $O$ là trung điểm của $A C$, $D$ là điểm đối xứng với $H$ qua $O$.
  #listEX()[
    + Chứng minh: tứ giác $A H C D$ là hình chữ nhật;
    + Tứ giác $A D H B$ là hình gì? Vì sao?;
    + Cho $B C = 6$cm, $A H = 4$cm. Tính diện tích tứ giác $A H C D$.
  ]
]

#bt()[
  Cho tam giác $A B C$ vuông ở $A$ có đường cao $A H$. Kẻ $H D$ vuông góc với $A B$ ở $D$ và $H E$ vuông góc với $A C$ ở $E$.
  #listEX()[
    + Tứ giác $A D H E$ là hình đặc biệt nào? Vì sao?;
    + Gọi $O$ là giao điểm của $A H$ và $D E$. Chứng minh: $O A = O H = O D = O E$.
  ]
]

#bt()[
  Cho tam giác $A B C$ vuông ở $A$ có đường trung tuyến $A D$. Kẻ $D H \/\/ A C$ và $D K \/\/ A B$ ($H in A B$; $K in A C$). Chứng minh: tứ giác $A H D K$ là hình chữ nhật.
]

#bt()[
  Cho hình thang cân $A B C D$ ($A B \/\/ C D$, $A B < C D$), các đường cao $A H$, $B K$.
  #listEX()[
    + Tứ giác $A B K H$ là hình gì? Vì sao?;
    + Chứng minh: $D H = C K$;
    + Gọi $E$ là điểm đối xứng với $D$ qua $H$. Chứng minh: $A B C E$ là hình bình hành;
    + Tính diện tích tứ giác $A B C D$, biết $A B = 6$cm, $A H = 4$cm và $D H = 3$cm.
  ]
]

#bt()[
  Cho tam giác $A B C$ vuông tại $A$. Gọi $D$, $E$, $F$ lần lượt là trung điểm của ba cạnh $A B$, $B C$, $A C$.
  #listEX()[
    + Tính độ dài $B C$, $A E$. Biết $A B = 12$cm, $A C = 16$cm;
    + Chứng minh: tam giác $A E B$ cân tại $E$ và tứ giác $A D E F$ là hình chữ nhật;
    + Chứng minh: tứ giác $B E F D$ là hình bình hành.
  ]
]

#bt()[
  Cho tam giác $A B C$ cân ở $A$ có $M$ và $N$ lần lượt là trung điểm của $B C$ và $A C$. Đường thẳng $M N$ cắt đường thẳng song song với $B C$ kẻ từ $A$ tại $D$.
  #listEX()[
    + Chứng minh: tứ giác $A B M D$ là hình bình hành;
    + So sánh $M D$ với $A C$;
    + Tứ giác $A D C M$ là tứ giác đặc biệt nào? Vì sao?
  ]
]

#bt()[
  Cho tam giác $A B E$ vuông tại $A$ ($A B < A E$), đường trung tuyến $A M$. Gọi $C$ là điểm đối xứng với $A$ qua $M$.
  #listEX()[
    + Tứ giác $A B C E$ là hình gì? Vì sao?;
    + Cho $A M = 5$cm, $B C = 8$cm. Tính diện tích tứ giác $A B C E$.
  ]
]

#bt()[
  Cho tam giác $A B C$ nhọn ($A B < A C$), đường cao $A H$. Gọi $M$ là trung điểm của $A B$, điểm $E$ là điểm đối xứng với $H$ qua điểm $M$.
  #listEX()[
    + Chứng minh: tứ giác $A H B E$ là hình chữ nhật;
    + Trên đoạn thẳng $H C$ ta lấy điểm $D$ sao cho $H D = H B$. Chứng minh: tứ giác $A E H D$ là hình bình hành.
  ]
]

#bt()[
  Cho tam giác $A B C$ vuông tại $A$ ($A B < A C$). Gọi $O$ là trung điểm của $B C$. Trên tia đối của tia $O A$ lấy điểm $E$ sao cho $O E = O A$. Chứng minh: Tứ giác $A C E B$ là hình chữ nhật.
]

#bt()[
  Cho tam giác $A B C$ cân ở $A$ có $M$ là trung điểm của $B C$ và $N$ là trung điểm của $A C$. Trên tia $M N$ lấy điểm $I$ sao cho $N$ là trung điểm của đoạn thẳng $M I$. Chứng minh: tứ giác $A I C M$ là hình chữ nhật.
]

#bt()[
  Cho tam giác $A B C$ vuông tại $A$ ($A B < A C$). Gọi $M$ là trung điểm $B C$. Từ $M$ vẽ $M D perp A B$ tại $D$ và $M E perp A C$ tại $E$.
  #listEX()[
    + Chứng minh: tứ giác $A D M E$ là hình chữ nhật;
    + Chứng minh: $D$ là trung điểm của đoạn thẳng $A B$ và tứ giác $B D E M$ là hình bình hành.
  ]
]

#bt()[
  Cho tam giác đều $A B C$ có $M$, $N$ là trung điểm của $B C$ và $A C$. Vẽ tia $A x \/\/ B C$ sao cho $A x$ cắt đường thẳng $M N$ ở $E$. Chứng minh: tứ giác $A M C E$ là hình chữ nhật.
]

#bt()[
  Cho tam giác đều $A B C$ có $M$ và $N$ lần lượt là trung điểm của $B C$ và $C A$. Trên tia $N M$ lấy điểm $D$ sao cho $M$ là trung điểm của $N D$. Chứng minh: tứ giác $B D C N$ là hình chữ nhật.
]

#bt()[
  Vẽ hình bình hành $A B C D$, kẻ $A H$ vuông góc với $C D$ ở $H$ và $C K$ vuông góc với $A B$ ở $K$.
  #listEX()[
    + Tính $hat(H A K)$;
    + So sánh $A C$ và $H K$ rồi suy ra $A C$, $H K$ và $B D$ có cùng một trung điểm.
  ]
]

#bt()[
  Cho hình thang vuông $A B C D$ có $hat(A) = hat(D) = 90°$; $A B = 10$cm; $A D = 12$cm; $C D = 15$cm. Lấy điểm $E$ trên cạnh $C D$ sao cho $B E$ song song với $A D$.
  #listEX()[
    + Chứng minh: tứ giác $A B E D$ là hình chữ nhật;
    + Tính độ dài các đoạn thẳng $B E$, $D E$, $E C$, $B C$.
  ]
]

#bt()[
  Cho hình thang vuông $A B C D$ có $hat(A) = hat(D) = 90°$; $A B = 10$cm; $C D = 18$cm; $B C = 17$cm. Kẻ $B E$ vuông góc với $C D$ ở $E$.
  #listEX()[
    + Chứng minh: tứ giác $A B E D$ là hình chữ nhật;
    + Tính độ dài các đoạn thẳng $D E$; $E C$; $B E$; $A D$.
  ]
]

#bt()[
  Cho hình thang cân $A B C D$ ($A B \/\/ C D$; $A B < C D$) có $A H$, $B K$ là hai đường cao.
  #listEX()[
    + Chứng minh: tứ giác $A B K H$ là hình chữ nhật;
    + So sánh $D H$ và $C K$.
  ]
]

#bt()[
  Cho hình thang cân $A B C D$ ($A B \/\/ C D$; $A B < C D$) có hai đường cao $A H$ và $B K$.
  #listEX()[
    + Tứ giác $A B K H$ là hình đặc biệt gì? Vì sao?;
    + So sánh $D H$ và $C K$;
    + Chứng minh: $D H = (C D - A B)/2$.
  ]
]

#bt()[
  Cho tam giác $A B C$ vuông tại $A$ có $A B = 6$cm, $A C = 8$cm. Gọi $M$ là trung điểm của $B C$.
  #listEX()[
    + Tính độ dài $A M$;
    + Kẻ $M D$ vuông góc với $A B$ tại $D$, $M E$ vuông góc với $A C$ tại $E$. Chứng minh: tứ giác $A D M E$ là hình chữ nhật;
    + Tính diện tích tứ giác $A D M E$.
  ]
]

#bt()[
  Vẽ hình bình hành $A B C D$ có $A D$ vuông góc với $A C$. Kéo dài đường trung tuyến $A I$ của tam giác $A D C$ về phía $I$ rồi lấy điểm $E$ sao cho $I$ là trung điểm của đoạn thẳng $A E$.
  #listEX()[
    + Tứ giác $A D E C$ là tứ giác đặc biệt gì? Vì sao?;
    + Chứng minh: ba điểm $B$, $C$, $E$ thẳng hàng;
    + Điểm $C$ là gì của đoạn thẳng $B E$?
  ]
]

#bt()[
  Cho hình chữ nhật $A B C D$ ($A B < A D$). Vẽ $hat(x A y) = 90°$ sao cho tia $A x$ cắt tia $C D$ ở $M$ và tia $A y$ cắt tia $B C$ ở $N$. Kẻ tia $M z \/\/ A N$ và tia $N t \/\/ A M$ sao cho $M z$ cắt $N t$ ở $P$.
  #listEX()[
    + Chứng minh: tứ giác $A M P N$ là hình chữ nhật;
    + Gọi $O$ là giao điểm của $A P$ và $M N$. Định dạng tam giác $O A N$.
  ]
]

#bt()[
  Cho hình chữ nhật $A B C D$ ($A B < A D$). Lấy điểm $M$ trên tia $C D$ và điểm $N$ trên tia $B C$ sao cho $hat(M A N) = 90°$. Kẻ $M x \/\/ A N$ và $N y \/\/ A M$ sao cho $M x$ và $N y$ cắt nhau ở $E$. Gọi $O$ là giao điểm của $A E$ và $M N$.
  #listEX()[
    + Chứng minh: Tứ giác $A M E N$ là hình chữ nhật;
    + So sánh $O A$ với $O C$.
  ]
]

#bt()[
  Cho tam giác $A B C$ cân ở $A$ có đường cao $A H$. Vẽ tia $A x \/\/ B C$ và tia $C y \/\/ A H$ sao cho $A x$ cắt $C y$ ở $D$.
  #listEX()[
    + Chứng minh: tứ giác $A D C H$ là hình chữ nhật;
    + Gọi $N$ là giao điểm của $A C$ và $D H$, biết $A B = 8$cm. Tính độ dài $N H$.
  ]
]

#bt()[
  Cho tam giác $A B C$ vuông tại $A$, $O$ là trung điểm của $B C$. Lấy điểm $D$ đối xứng với $A$ qua $O$. Chứng minh: tứ giác $A B D C$ là hình chữ nhật.
]

#bt()[
  Cho tam giác $A B C$ có điểm $O$ thuộc $B C$ sao cho $O A = O B = O C$. Lấy điểm $D$ đối xứng với $A$ qua $O$. Chứng minh: tứ giác $A B D C$ là hình chữ nhật.
]

#bt()[
  Cho tam giác $A B C$ vuông ở $A$ có $A B = 3$cm; $A C = 4$cm. $M$ là trung điểm của $B C$. Tính $B C$; $A M$.
]

#bt()[
  Cho tam giác $A B C$ vuông ở $A$, có $A B = 6$cm; $A C = 8$cm. $M$ là trung điểm của $B C$.
  #listEX()[
    + Tính $B C$;
    + Kẻ $M H \/\/ A C$ ($H in A B$), $M K \/\/ A B$ ($K in A C$). Tứ giác $A H M K$ là hình gì?
  ]
]

#bt()[
  Cho tam giác $A B C$ có $A B = 6$cm; $A C = 8$cm; $B C = 10$cm. $D$ là trung điểm của $B C$. Kẻ $D H perp A B$ ở $H$, $D K perp A C$ ở $K$.
  #listEX()[
    + Tính $A D$;
    + Chứng minh: tứ giác $A H D K$ là hình chữ nhật;
    + Tính $S_(A H D K)$.
  ]
]

#bt()[
  Cho tam giác $A B C$ cân tại $A$ có đường cao $A H$. Qua $B$ kẻ đường thẳng song song với $A H$, cắt $A C$ tại $I$.
  #listEX()[
    + Chứng minh: tứ giác $A H B I$ là hình thang vuông;
    + Qua $A$ kẻ đường thẳng song song với $B C$ và cắt $I B$ tại $D$. Chứng minh: tứ giác $D A H B$ là hình chữ nhật.
  ]
]

#bt()[
  Cho hình thang vuông $M N P Q$ có $hat(M) = hat(Q) = 90°$; $M N = 16$cm; $N P = 17$cm; $P Q = 24$cm. Kẻ $N E$ vuông góc $P Q$ tại $E$.
  #listEX()[
    + Định dạng tứ giác $M N E Q$;
    + Tính $Q E$; $E P$; $M Q$;
    + Tính $S_(M N E Q)$ và $S_(M N P Q)$.
  ]
]

#bt()[
  Cho tam giác $A B C$ vuông tại $A$ ($A B < A C$) có $K$ là trung điểm của $A C$. Từ $K$ vẽ đường thẳng song với $B C$ và cắt $A B$ tại $E$. Từ $K$ vẽ đường thẳng song song với $A B$ và cắt $B C$ tại $O$.
  #listEX()[
    + Chứng minh: tứ giác $B E K O$ là hình bình hành;
    + Chứng minh: $hat(A E K) = hat(K O C)$ và $E K = O C$;
    + Từ $B$ vẽ $B x \/\/ A C$, từ $C$ vẽ $C y \/\/ A B$. $B x$ và $C y$ cắt nhau tại $M$. Chứng minh: tứ giác $A B M C$ là hình chữ nhật và 3 điểm $A$, $O$, $M$ thẳng hàng.
  ]
]

#bt()[
  Cho tam giác $A B C$ vuông tại $A$ ($A B < A C$) với đường cao $A K$. Gọi $I$ là trung điểm của cạnh $B C$, $D$ là điểm đối xứng của $A$ qua $I$.
  #listEX()[
    + Chứng minh: tứ giác $A B D C$ là hình chữ nhật;
    + Vẽ $D M$ vuông góc với đường thẳng $A K$ tại $M$. Chứng minh: $M I = A I$ và $K$ là trung điểm của đoạn $A M$;
    + Chứng minh: tứ giác $B M D C$ là hình thang cân.
  ]
]

#bt()[
  Cho tam giác $A B C$ đều có $A M$ là đường trung tuyến và $N$ là trung điểm $A C$. Vẽ $A x$ song song $B C$. Đường thẳng $M N$ cắt $A x$ tại $E$.
  #listEX()[
    + Chứng minh: $A B = M E$;
    + Chứng minh: $A M C E$ là hình chữ nhật;
    + Cho $A B = 16$cm. Tính $M C$; $A M$ và $S_(A M C E)$.
  ]
]

#bt()[
  Cho tam giác $A B C$ có đường cao $A D$. Gọi $E$ là trung điểm của $A B$ và $F$ là điểm đối xứng với $D$ qua $E$. Chứng minh: tứ giác $A D B F$ là hình chữ nhật và so sánh $A B$ với $F D$.
]

#bt()[
  Cho tam giác $A B C$ vuông tại $A$ ($A B < A C$). $M$ là trung điểm của cạnh $B C$. Vẽ $M D$ vuông góc với $A B$ tại $D$, $M E$ vuông góc với $A C$ tại $E$.
  #listEX()[
    + Chứng minh tứ giác $A D M E$ là hình chữ nhật;
    + Chứng minh tứ giác $C M D E$ là hình bình hành;
    + Vẽ $A H$ vuông góc với $B C$ tại $H$. Tứ giác $M H D E$ là hình gì? Vì sao?;
    + Qua $H$ vẽ đường thẳng song song với $A B$ cắt $A C$ tại $N$. Chứng minh: $H N^2 = A N dot C N$.
  ]
]

#bt()[
  Cho tam giác $A B C$ vuông tại $A$ ($A B < A C$), đường cao $A H$, đường trung tuyến $A M$. Vẽ $H D perp A B$, $H E perp A C$ ($D in A B$, $E in A C$).
  #listEX()[
    + Chứng minh: tứ giác $A D H E$ là hình chữ nhật và $A B dot A C = A H dot B C$;
    + Gọi $P$ là điểm đối xứng của $A$ qua $E$. Tứ giác $D H P E$ là hình gì? Vì sao?;
    + Gọi $T$ là giao điểm của $D E$ và $H A$. Qua $A$ kẻ đường thẳng $x y$ vuông góc với đường thẳng $M T$. Chứng minh: ba đường thẳng $x y$, $B C$, $D E$ đồng quy.
  ]
]

#bt()[
  Cho hình chữ nhật $A B C D$ ($A B > A D$). Gọi $E$, $F$ lần lượt là trung điểm của $D C$ và $A B$.
  #listEX()[
    + Chứng minh: tứ giác $A D E F$ là hình chữ nhật;
    + Biết $D C = 14$cm, $A D = 5$cm. Tính diện tích hình chữ nhật $A D E F$;
    + Chứng minh: tứ giác $A E C F$ là hình bình hành;
    + Vẽ $E H perp F C$ tại $H$. Gọi $Q$, $K$ lần lượt là trung điểm của $F B$ và $H C$. Từ $K$, vẽ đường thẳng song song với $D C$, đường thẳng này cắt $A E$ tại $G$. Chứng minh: tứ giác $G H K E$ là hình bình hành;
    + Chứng minh: $Q K perp E K$. (gợi ý: gọi thêm $I$ là giao điểm của $G K$ và $E H$)
  ]
]

#bt()[
  Cho điểm $E$ thuộc cạnh $A B$ của hình chữ nhật $A B C D$. $F$ thuộc tia $B C$ sao cho $hat(E D F) = 90°$. Vẽ hình chữ nhật $E D F K$, tâm $O$. Chứng minh:
  #listEX()[
    + $B O = E F / 2$;
    + Tam giác $D B K$ vuông.
  ]
]
