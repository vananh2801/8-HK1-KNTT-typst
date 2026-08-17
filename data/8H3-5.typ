
#import "../style/lib.typ": *
#show: appearance

#section()[Hình thoi và hình vuông]

#subsection()[Lý thuyết]

#subsubsection()[Hình thoi]

#dn(tieude: "Hình thoi")[
  #immini()[
    _Hình thoi_ là tứ giác có bốn cạnh bằng nhau.
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 0.9cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
      let A = (-2, 0)
      let B = (0, 1.3)
      let C = (2, 0)
      let D = (0, -1.3)
      line(A, B, C, D, A)
      content(A, [$A$], anchor: "east", padding: 3pt)
      content(B, [$B$], anchor: "south", padding: 3pt)
      content(C, [$C$], anchor: "west", padding: 3pt)
      content(D, [$D$], anchor: "north", padding: 3pt)
      content((A, 50%, B), [|], angle: 20deg)
      content((B, 50%, C), [|], angle: -20deg)
      content((C, 50%, D), [|], angle: 20deg)
      content((D, 50%, A), [|], angle: -20deg)
    })
  ]
]

#dl(tieude: "Tính chất về hai đường chéo của hình thoi")[
  #immini()[
    Trong hình thoi:
    - Hai đường chéo vuông góc với nhau;
    - Hai đường chéo là các đường phân giác của các góc trong hình thoi.
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 1cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
      let A = (-2.2, 0)
      let B = (0, 1.3)
      let C = (2.2, 0)
      let D = (0, -1.3)
      line(A, B, C, D, A)
      let O = (0, 0)
      line(A, C)
      line(B, D)
      right-angle(O, B, C, label: none, radius: 0.25)
      angle(A, C, B, label: none, radius: 0.4)
      angle(A, D, C, label: none, radius: 0.6)
      angle(B, A, D, label: none, radius: 0.4)
      angle(B, A, D, label: none, radius: 0.5)
      angle(B, D, C, label: none, radius: 0.5)
      angle(B, D, C, label: none, radius: 0.6)
      angle(C, B, A, label: none, radius: 0.6)
      angle(C, A, D, label: none, radius: 0.4)
      angle(D, B, A, label: none, radius: 0.6)
      angle(D, B, A, label: none, radius: 0.5)
      angle(D, C, B, label: none, radius: 0.5)
      angle(D, C, B, label: none, radius: 0.4)
      content(A, [$A$], anchor: "east", padding: 3pt)
      content(B, [$B$], anchor: "south", padding: 3pt)
      content(C, [$C$], anchor: "west", padding: 3pt)
      content(D, [$D$], anchor: "north", padding: 3pt)
      content((A, 50%, B), [|], angle: 20deg)
      content((B, 50%, C), [|], angle: -20deg)
      content((C, 50%, D), [|], angle: 20deg)
      content((D, 50%, A), [|], angle: -20deg)
    })
  ]
]

#vd()[
  #immini()[
    Cho hai đường tròn tâm $A$ và $C$ có cùng bán kính, cắt nhau tại $B$, $D$ như hình bên
    #listEX()[
      + Hỏi tứ giác $A B C D$ là hình gì? Tại sao?
      + Chứng minh $A C perp B D$.
    ]
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 0.6cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
      let A = (-2, 0)
      let B = (0, 1.6)
      let C = (2, 0)
      let D = (0, -1.6)
      line(A, B, C, D, A)
      circle(A, B)
      circle(C, B)
      line(A, C)
      line(B, D)
      content(A, [$A$], anchor: "east", padding: 3pt)
      content(B, [$B$], anchor: "south", padding: 5pt)
      content(C, [$C$], anchor: "west", padding: 3pt)
      content(D, [$D$], anchor: "north", padding: 5pt)
      content((A, 50%, B), [|], angle: 20deg)
      content((B, 50%, C), [|], angle: -20deg)
      content((C, 50%, D), [|], angle: 20deg)
      content((D, 50%, A), [|], angle: -20deg)
    })
  ]
  #loigiai()[
    #dotlineEX(4)
  ]
]

#dl(tieude: "Dấu hiệu nhận biết hình thoi")[
  - #immini()[
      Hình bình hành có hai cạnh kề bằng nhau là hình thoi.
    ][

    ]
  - #immini()[
      Hình bình hành có hai đường chéo vuông góc với nhau là hình thoi.
    ][

    ]
  - #immini()[
      Hình bình hành có một đường chéo là đường phân giác của một góc là hình thoi.
    ][

    ]
]

#vd()[
  Tứ giác nào sau đây là hình thoi? Vì sao?
  #listEX()[
    + #box[
        #import "@preview/cetz:0.5.2"
        #set text(size: 10pt)
        #cetz.canvas(length: 1cm, {
          import cetz.draw: *
          import cetz.angle: *
          set-style(
            stroke: (thickness: 0.7pt, cap: "round"),
            mark: (fill: black),
          )
          rotate(90deg - 63.435deg)
          let A = (-2, 0)
          let B = (0, 1)
          let C = (2, 0)
          let D = (0, -1)
          line(A, B, C, D, A)
          angle(A, D, B, label: none, radius: 0.4)
          angle(C, B, D, label: none, radius: 0.4)
          angle(B, A, C, label: none, radius: 0.3)
          angle(D, C, A, label: none, radius: 0.3)
          angle(B, A, C, label: none, radius: 0.4)
          angle(D, C, A, label: none, radius: 0.4)
          content(A, [$A$], anchor: "east", padding: 3pt)
          content(B, [$B$], anchor: "south", padding: 3pt)
          content(C, [$C$], anchor: "west", padding: 3pt)
          content(D, [$D$], anchor: "north", padding: 3pt)
          content((A, 50%, B), [|], angle: 20deg)
          content((B, 50%, C), [|], angle: -20deg)
        })
      ]
    + #box[
        #import "@preview/cetz:0.5.2"
        #set text(size: 10pt)
        #cetz.canvas(length: 0.7cm, {
          import cetz.draw: *
          import cetz.angle: *
          set-style(
            stroke: (thickness: 0.7pt, cap: "round"),
            mark: (fill: black),
          )
          let A = (-2.2, 0)
          let B = (0, 1.3)
          let C = (3, 0)
          let D = (0, -1.3)
          line(A, B, C, D, A)
          content(A, [$A$], anchor: "east", padding: 3pt)
          content(B, [$B$], anchor: "south", padding: 3pt)
          content(C, [$C$], anchor: "west", padding: 3pt)
          content(D, [$D$], anchor: "north", padding: 3pt)
          content((A, 50%, B), [||], angle: 20deg)
          content((B, 50%, C), [|], angle: -20deg)
          content((C, 50%, D), [||], angle: 20deg)
          content((D, 50%, A), [|], angle: -20deg)
        })
      ]
  ]
  #loigiai()[
    #dotlineEX(4)
  ]
]

#subsubsection()[Hình vuông]

#dn(tieude: "Hình vuông")[
  #immini()[
    _Hình vuông_ là tứ giác có bốn góc vuông và bốn cạnh bằng nhau.
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 0.7cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
      let A = (0, 0)
      let B = (3, 0)
      let C = (3, -3)
      let D = (0, -3)
      line(A, B, C, D, A)
      content(A, [$A$], anchor: "south-east", padding: 3pt)
      content(B, [$B$], anchor: "south-west", padding: 3pt)
      content(C, [$C$], anchor: "north-west", padding: 3pt)
      content(D, [$D$], anchor: "north-east", padding: 3pt)
      content((A, 50%, B), [|], angle: 0deg)
      content((B, 50%, C), [|], angle: 90deg)
      content((C, 50%, D), [|], angle: 0deg)
      content((D, 50%, A), [|], angle: 90deg)
      right-angle(A, D, B, label: none, radius: 0.25)
      right-angle(B, A, C, label: none, radius: 0.25)
      right-angle(C, B, D, label: none, radius: 0.25)
      right-angle(D, C, A, label: none, radius: 0.25)
    })
  ]
]

#dl(tieude: "Tính chất về đường chéo của hình vuông")[
  #immini()[
    Trong một hình vuông, hai đường chéo bằng nhau, vuông góc với nhau, cắt nhau tại trung điểm mỗi đường và là các đường phân giác của các góc của hình vuông.
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 1cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
      let A = (0, 0)
      let B = (3, 0)
      let C = (3, -3)
      let D = (0, -3)
      let O = ((A.at(0) + C.at(0)) / 2, (A.at(1) + C.at(1)) / 2)
      line(A, B, C, D, A)
      line(A, C)
      line(B, D)
      right-angle(O, B, C, label: none, radius: 0.25)
      angle(A, C, B, label: none, radius: 0.4)
      angle(A, D, C, label: none, radius: 0.5)
      angle(B, A, D, label: none, radius: 0.4)
      angle(B, D, C, label: none, radius: 0.5)
      angle(C, B, A, label: none, radius: 0.5)
      angle(C, A, D, label: none, radius: 0.4)
      angle(D, B, A, label: none, radius: 0.5)
      angle(D, C, B, label: none, radius: 0.4)
      content(A, [$A$], anchor: "south-east", padding: 3pt)
      content(B, [$B$], anchor: "south-west", padding: 3pt)
      content(C, [$C$], anchor: "north-west", padding: 3pt)
      content(D, [$D$], anchor: "north-east", padding: 3pt)
      content((A, 50%, O), [|], angle: -45deg)
      content((B, 50%, O), [|], angle: 45deg)
      content((C, 50%, O), [|], angle: -45deg)
      content((D, 50%, O), [|], angle: 45deg)
    })
  ]
]

#dl(tieude: "Dấu hiệu nhận biết hình vuông")[
  - #immini()[
      Hình chữ nhật có hai cạnh kề bằng nhau là hình vuông.
    ][
      #import "@preview/cetz:0.5.2"
      #set text(size: 10pt)
      #cetz.canvas(length: 0.8cm, {
        import cetz.draw: *
        import cetz.angle: *
        set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
        let A = (0, 0)
        let B = (3, 0)
        let C = (3, -3)
        let D = (0, -3)
        line(A, B, C, D, A)
        right-angle(A, D, B, label: none, radius: 0.25)
        right-angle(B, A, C, label: none, radius: 0.25)
        right-angle(C, B, D, label: none, radius: 0.25)
        content(A, [$A$], anchor: "south-east", padding: 3pt)
        content(B, [$B$], anchor: "south-west", padding: 3pt)
        content(C, [$C$], anchor: "north-west", padding: 3pt)
        content(D, [$D$], anchor: "north-east", padding: 3pt)
        content((A, 50%, B), [|], angle: 0deg)
        content((A, 50%, D), [|], angle: 90deg)
      })
    ]
  - #immini()[
      Hình chữ nhật có hai đường chéo vuông góc là hình vuông.
    ][
      #import "@preview/cetz:0.5.2"
      #set text(size: 10pt)
      #cetz.canvas(length: 0.8cm, {
        import cetz.draw: *
        import cetz.angle: *
        set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
        let A = (0, 0)
        let B = (3, 0)
        let C = (3, -3)
        let D = (0, -3)
        let O = ((A.at(0) + C.at(0)) / 2, (A.at(1) + C.at(1)) / 2)
        line(A, B, C, D, A)
        line(A, C)
        line(B, D)
        right-angle(A, D, B, label: none, radius: 0.25)
        right-angle(B, A, C, label: none, radius: 0.25)
        right-angle(C, B, D, label: none, radius: 0.25)
        right-angle(O, B, A, label: none, radius: 0.25)
        content(A, [$A$], anchor: "south-east", padding: 3pt)
        content(B, [$B$], anchor: "south-west", padding: 3pt)
        content(C, [$C$], anchor: "north-west", padding: 3pt)
        content(D, [$D$], anchor: "north-east", padding: 3pt)
      })
    ]
  - #immini()[
      Hình chữ nhật có một đường chéo là đường phân giác của một góc là hình vuông.
    ][
      #import "@preview/cetz:0.5.2"
      #set text(size: 10pt)
      #cetz.canvas(length: 0.8cm, {
        import cetz.draw: *
        import cetz.angle: *
        set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
        let A = (0, 0)
        let B = (3, 0)
        let C = (3, -3)
        let D = (0, -3)
        line(A, B, C, D, A)
        line(B, D)
        right-angle(A, D, B, label: none, radius: 0.25)
        right-angle(B, A, C, label: none, radius: 0.25)
        right-angle(C, B, D, label: none, radius: 0.25)
        angle(D, B, A, label: none, radius: 0.7)
        angle(D, C, B, label: none, radius: 0.5)
        content(A, [$A$], anchor: "south-east", padding: 3pt)
        content(B, [$B$], anchor: "south-west", padding: 3pt)
        content(C, [$C$], anchor: "north-west", padding: 3pt)
        content(D, [$D$], anchor: "north-east", padding: 3pt)
      })
    ]
]


#vd()[
  Với mỗi hình dưới đây, ta dùng dấu hiệu nhận biết nào để khẳng định đó là hình vuông?
  #listEX()[
    + #box[
        #import "@preview/cetz:0.5.2"
        #set text(size: 10pt)
        #cetz.canvas(length: 0.8cm, {
          import cetz.draw: *
          import cetz.angle: *
          set-style(
            stroke: (thickness: 0.7pt, cap: "round"),
            mark: (fill: black),
          )
          rotate(45deg)
          let A = (0, 0)
          let B = (3, 0)
          let C = (3, -3)
          let D = (0, -3)
          let O = ((A.at(0) + C.at(0)) / 2, (A.at(1) + C.at(1)) / 2)
          line(A, B, C, D, A)
          line(A, C)
          line(B, D)
          content(A, [$A$], anchor: "east", padding: 3pt)
          content(B, [$B$], anchor: "south", padding: 3pt)
          content(C, [$C$], anchor: "west", padding: 3pt)
          content(D, [$D$], anchor: "north", padding: 3pt)
          content((A, 50%, O), [|], angle: 0deg)
          content((B, 50%, O), [|], angle: 90deg)
          content((C, 50%, O), [|], angle: 0deg)
          content((D, 50%, O), [|], angle: 90deg)
          content((A, 50%, B), [||], angle: 45deg)
          content((B, 50%, C), [||], angle: -45deg)
        })
      ]
    + #box[
        #import "@preview/cetz:0.5.2"
        #set text(size: 10pt)
        #cetz.canvas(length: 0.8cm, {
          import cetz.draw: *
          import cetz.angle: *
          set-style(
            stroke: (thickness: 0.7pt, cap: "round"),
            mark: (fill: black),
          )
          rotate(45deg)
          let A = (0, 0)
          let B = (3, 0)
          let C = (3, -3)
          let D = (0, -3)
          let O = ((A.at(0) + C.at(0)) / 2, (A.at(1) + C.at(1)) / 2)
          line(A, B, C, D, A)
          line(A, C)
          line(B, D)
          content(A, [$A$], anchor: "east", padding: 3pt)
          content(B, [$B$], anchor: "south", padding: 3pt)
          content(C, [$C$], anchor: "west", padding: 3pt)
          content(D, [$D$], anchor: "north", padding: 3pt)
          content((A, 50%, O), [||], angle: 0deg)
          content((B, 50%, O), [|], angle: 90deg)
          content((C, 50%, O), [||], angle: 0deg)
          content((D, 50%, O), [|], angle: 90deg)
          content((rel: (angle: -112deg, radius: 0.9), to: B), [$45 degree$])
          content((rel: (angle: -158deg, radius: 0.9), to: B), [$45 degree$])
        })
      ]
    + #box[
        #import "@preview/cetz:0.5.2"
        #set text(size: 10pt)
        #cetz.canvas(length: 0.8cm, {
          import cetz.draw: *
          import cetz.angle: *
          set-style(
            stroke: (thickness: 0.7pt, cap: "round"),
            mark: (fill: black),
          )
          rotate(45deg)
          let A = (0, 0)
          let B = (3, 0)
          let C = (3, -3)
          let D = (0, -3)
          let O = ((A.at(0) + C.at(0)) / 2, (A.at(1) + C.at(1)) / 2)
          line(A, B, C, D, A)
          line(A, C)
          line(B, D)
          right-angle(O, B, C, label: none, radius: 0.25)
          content(A, [$A$], anchor: "east", padding: 3pt)
          content(B, [$B$], anchor: "south", padding: 3pt)
          content(C, [$C$], anchor: "west", padding: 3pt)
          content(D, [$D$], anchor: "north", padding: 3pt)
          content((A, 50%, O), [|], angle: 0deg)
          content((B, 50%, O), [|], angle: 90deg)
          content((C, 50%, O), [|], angle: 0deg)
          content((D, 50%, O), [|], angle: 90deg)
        })
      ]
  ]
  #loigiai()[
    #dotlineEX(7)
  ]
]

#subsection()[Bài tập tự luận]

#bt()[
  Cho hình thoi $A B C D$ có $hat(D A B)$.
  #listEX()[
    + Tính số đo $hat(A B C)$; $hat(B C D)$; $hat(C D A)$.
    + Tính số đo $hat(A B D)$; $hat(A C D)$.
  ]
]

#bt()[
  Cho tam giác $A B C$ cân tại $A$. Trên nửa mặt phẳng không chứa $A$ có bờ là đường thẳng chứa cạnh $B C$, vẽ tia $B x \/\/ A C$ và tia $C y \/\/ A B$. Gọi $D$ là giao điểm của hai tia $B x$ và $C y$. Chứng minh:
  #listEX()[
    + Tứ giác $A C D B$ là hình bình hành.
    + Tứ giác $A C D B$ là hình thoi.
  ]
]

#bt()[
  Cho góc $x O y$. Vẽ tia phân giác $O t$ của góc $x O y$. Từ $M$ bất kỳ trên $O t$, vẽ đường thẳng song song với $O x$ cắt $O y$ tại $A$, vẽ đường thẳng song song với $O y$ cắt $O x$ tại $B$.
  #listEX()[
    + Chứng minh: tứ giác $O A M B$ là hình thoi.
    + Qua $M$ vẽ đường thẳng song song với $A B$ cắt $O x$ tại $P$, $O y$ tại $Q$. Chứng minh: tam giác $O P Q$ là tam giác cân.
  ]
]

#bt()[
  Cho tam giác $A B C$ cân tại $A$ có đường trung tuyến $A D$. Trên tia đối của tia $D A$ lấy điểm $E$ sao cho $D E = D A$. Chứng minh:
  #listEX()[
    + Tứ giác $A C E B$ là hình bình hành.
    + Tứ giác $A C E B$ là hình thoi.
  ]
]

#bt()[
  Cho tam giác $A B C$ cân tại $B$ có đường cao $B E$. Trên tia đối của tia $E B$ lấy điểm $D$ sao cho $E D = E B$. Chứng minh:
  #listEX()[
    + Tứ giác $A B C D$ là hình bình hành.
    + Tứ giác $A B C D$ là hình thoi.
  ]
]

#bt()[
  Cho tam giác $A B C$ có đường phân giác trong $A D$. Trên $A C$ lấy điểm $E$ sao cho $D E \/\/ A B$, trên $A B$ lấy điểm $F$ sao cho $D F \/\/ A C$. Chứng minh:
  #listEX()[
    + Tứ giác $A E D F$ là hình bình hành.
    + Tứ giác $A E D F$ là hình thoi.
  ]
]

#bt()[
  Cho tam giác $A B C$ cân tại $B$. Đường thẳng qua $C$ song song với $A B$ cắt tia phân giác của $hat(A B C)$ tại $D$. Chứng minh:
  #listEX()[
    + $A B = C D$.
    + Tứ giác $A B C D$ là hình thoi.
  ]
]

#bt()[
  Cho tứ giác $A B C D$ có $hat(B A D) = hat(B C D)$. Biết rằng: tia $A C$ là tia phân giác của $hat(B A D)$ và tia $C A$ là tia phân giác của $hat(B C D)$. Chứng minh:
  #listEX()[
    + Các tam giác $A B C$ và $A D C$ là các tam giác cân.
    + $A B = A D$.
    + Tứ giác $A B C D$ là hình thoi.
  ]
]

#bt()[
  Cho hình bình hành $A B C D$ có hai đường chéo $A C$ và $B D$ cắt nhau tại $O$. Đường thẳng $d_1$ qua $O$ cắt cạnh $A B$ và $C D$ lần lượt tại $M$ và $P$, đường thẳng $d_2$ qua $O$ cắt cạnh $B C$ và $D A$ lần lượt tại $N$ và $Q$. Biết rằng: $d_1 perp d_2$. Chứng minh:
  #listEX()[
    + Tứ giác $M N P Q$ là hình bình hành.
    + Tứ giác $M N P Q$ là hình thoi.
  ]
]

#bt()[
  Cho hình thoi $A B C D$ có hai đường chéo $A C$ và $B D$ cắt nhau tại $O$. Trên đoạn $O A$ lấy điểm $E$, trên đoạn $O C$ lấy điểm $F$ sao cho $A E = C F$. Chứng minh:
  #listEX()[
    + $O E = O F$.
    + Tứ giác $B E D F$ là hình thoi.
  ]
]

#bt()[
  Cho hình thoi $A B C D$ có hai đường chéo $A C$ và $B D$ cắt nhau tại $O$. Gọi $M$, $N$, $P$, $Q$ lần lượt là trung điểm của các đoạn $O A$, $O B$, $O C$, $O D$. Chứng minh: tứ giác $M N P Q$ là hình thoi.
]

#bt()[
  Cho hình thoi $A B C D$ có $O$ là giao điểm của hai đường chéo.
  #listEX()[
    + Tính $A B$ khi biết $O A = 4$ cm và $O B = 3$ cm.
    + Tính $hat(B A D)$ khi biết $hat(B A O) = 32 degree$.
  ]
]

#bt()[
  Cho hình thoi $M N P Q$ có $I$ là giao điểm của hai đường chéo.
  #listEX()[
    + Tính $M P$ khi biết $M N = 10$ dm, $I N = 6$ dm.
    + Tính $hat(I M N)$ khi biết $hat(M N P) = 128 degree$.
  ]
]

#bt()[
  Cho hình thoi $A B C D$ có hai đường chéo $A C$ và $B D$ cắt nhau tại $O$. Biết rằng: $A C = 8$ cm và $B D = 6$ cm. Tính độ dài các đoạn thẳng $O A$, $O B$, $A B$.
]

#bt()[
  Cho hình thoi $A B C D$ có $A C = 12$ cm, $B D = 16$ cm.
  #listEX()[
    + Tính diện tích hình thoi $A B C D$.
    + Tính độ dài các cạnh của hình thoi $A B C D$.
  ]
]

#bt()[
  Cho hình thoi $A B C D$ có $A B = 15$ cm, $B D = 24$ cm.
  #listEX()[
    + Tính độ dài $A C$.
    + Tính diện tích hình thoi $A B C D$.
  ]
]

#bt()[
  Cho hình thoi $A B C D$ có $A B = B D = 10$ cm.
  #listEX()[
    + $triangle A B D$ là tam giác gì? Vì sao?
    + Tính số đo các góc của hình thoi $A B C D$.
    + Tính độ dài $A C$.
    + Tính diện tích hình thoi $A B C D$.
  ]
]

#bt()[
  Cho hình thoi $A B C D$ có diện tích bằng $120$ $"cm"^2$ và $A C = 10$ cm.
  #listEX()[
    + Tính độ dài $B D$.
    + Tính chu vi của hình thoi $A B C D$.
  ]
]

#bt()[
  Cho hình thoi $A B C D$ có diện tích bằng $50 sqrt(3)$ $"cm"^2$ và $A C = 10$ cm.
  #listEX()[
    + Tính độ dài $B D$ và $A B$.
    + Tính số đo các góc của hình thoi $A B C D$.
  ]
]

#bt()[
  Một tứ giác có chu vi là $52$ cm và một đường chéo là $24$ cm. Tìm độ dài của mỗi cạnh và đường chéo còn lại nếu biết hai đường chéo vuông góc tại trung điểm của mỗi đường.
]

#bt()[
  Cho $triangle A B C$ cân tại $A$ có đường trung tuyến $A D$. Từ $D$, kẻ đường thẳng $D E$ song song với $A B$ ($E in A C$) và kẻ $D F$ song song với $A C$ ($F in A B$). Chứng minh: tứ giác $A E D F$ là hình thoi.
]

#bt()[
  Cho hình bình hành $A B C D$ có 2 đường cao $A H = A K$. Chứng minh: tứ giác $A B C D$ là hình thoi.
]

#bt()[
  Cho góc $x O y$ và tia phân giác $O z$. Từ điểm $M in O z$, kẻ $M A \/\/ O y$ và $M B \/\/ O x$ (với $A in O x$ và $B in O y$). Chứng minh: tứ giác $O A M B$ là hình thoi.
]

#bt()[
  Hình bình hành $A B C D$ có $hat(D A C) = 90 degree$. Gọi $M$, $N$ là trung điểm của $A B$, $C D$. Chứng minh:
  #listEX()[
    + $A M = C N$.
    + $A N = C N$.
    + Tứ giác $A M C N$ là hình thoi.
  ]
]

#bt()[
  Cho hình bình hành $A B C D$ có $A B = A C$. Gọi $M$ là trung điểm $B C$. Trên tia đối của tia $M A$ lấy $M E = M A$. Chứng minh:
  #listEX()[
    + Tứ giác $A B E C$ là hình thoi.
    + $D$, $C$, $E$ thẳng hàng.
    + $C$ là trung điểm của $D E$.
  ]
]

#bt()[
  Cho hình thoi $A B C D$ có $hat(A) = 60 degree$, kẻ $B H perp A D$ ($H in A D$), rồi kéo dài một đoạn $H E = B H$. Nối $E$ với $A$, $E$ với $D$. Chứng minh:
  #listEX()[
    + $H$ là trung điểm $A D$.
    + $A B D E$ là hình thoi.
  ]
]

#bt()[
  Cho hình thoi $A B C D$ có $A B = B D$.
  #listEX()[
    + $triangle A B D$ là tam giác gì? Vì sao?
    + Tính các góc của hình thoi $A B C D$.
  ]
]

#bt()[
  Hình thoi $A B C D$ có $hat(A) = 60 degree$. Kẻ 2 đường cao $B E$ và $B F$ ($E in A D$; $F in D C$).
  #listEX()[
    + Chứng minh: $B E = B F$.
    + Tính số đo $hat(A B C)$.
    + Tính số đo $hat(E B F)$. $triangle B E F$ là tam giác đặc biệt gì? Vì sao?
  ]
]

#bt()[
  Cho hình thoi $A B C D$ có $hat(A) = 60 degree$, kẻ $B H perp A D$ ($H in A D$), rồi kéo dài một đoạn $H E = B H$. Nối $E$ với $A$, $E$ với $D$. Chứng minh:
  #listEX()[
    + $H$ là trung điểm $A D$.
    + Tứ giác $A B D E$ là hình thoi.
    + $D$ là trung điểm của $C E$.
    + $A C = B E$.
  ]
]

#bt()[
  Cho hình thoi $A B C D$ có $A B = B D$.
  #listEX()[
    + Chứng minh: $triangle A B D$ đều.
    + Gọi $O$ là giao điểm của $A C$ và $B D$. Chứng minh: $O A^2 = 3/4 A B^2$.
    + Biết chu vi của hình thoi $A B C D$ là $8$ cm. Tính độ dài đường chéo $B D$; $A C$.
    + Tính diện tích hình thoi $A B C D$.
  ]
]

#bt()[
  Cho hình thoi $A B C D$ có chu vi là $8$ cm và $A C = 2 sqrt(3)$ cm.
  #listEX()[
    + Tính độ dài $B D$.
    + Tính số đo các góc của hình thoi $A B C D$.
  ]
]

#bt()[
  Cho hình thoi $A B C D$ có chu vi là $8$ cm và $A B = B D$. Tính độ dài đường cao của hình thoi.
]

#bt()[
  Cho hình thoi $A B C D$ có chu vi là $24$ cm. Đường cao $A H = 3$ cm ($H in$ đoạn $B C$). Tính các góc của hình thoi.
]

#bt()[
  Cho hình thang $A B C D$ ($A B \/\/ C D$) có $A D = C D$ và $A C perp B C$. Từ $C$ kẻ đường thẳng song song với $A D$ và cắt $A B$ tại $E$.
  #listEX()[
    + Chứng minh: tứ giác $A E C D$ là hình thoi.
    + Chứng minh: tứ giác $B E D C$ là hình bình hành.
    + Chứng minh: $triangle C E B$ cân.
    + Giả sử $triangle C E B$ đều. Chứng minh: tứ giác $A B C D$ là hình thang cân.
  ]
]

#bt()[
  Cho hình thang $A B C D$ ($A B \/\/ C D$) có $A D = C D$ và $A C perp B C$. Từ $C$ kẻ đường thẳng song song với $A D$ và cắt $A B$ tại $E$.
  #listEX()[
    + Chứng minh: $triangle C E B$ cân.
    + Hình thang $A B C D$ sẽ như thế nào để $triangle C E B$ đều?
  ]
]

#bt()[
  Cho hình thoi $A B C D$ có $hat(A) = 60 degree$. Một góc $x B y$ thay đổi sao cho tia $B x$ cắt cạnh $A D$ tại $M$, tia $B y$ cắt cạnh $D C$ tại $N$ và $hat(x B y) = 60 degree$. Chứng minh:
  #listEX()[
    + $A B = B D$;
    + $triangle A B M = triangle D B N$.
    + Tổng độ dài $D M + D N$ không đổi.
  ]
]

#bt()[
  Cho hình thoi $A B C D$ có $A B = B D$. Gọi $M$ và $N$ lần lượt trên $A B$, $B C$ sao cho $A M = B N$.
  #listEX()[
    + Chứng minh: $hat(A D M) = hat(B D N)$.
    + Chứng minh: $triangle M D N$ là tam giác đều.
  ]
]

#bt()[
  Cho hình thoi $A B C D$ có $A B = B D$. Gọi $M$, $N$ lần lượt trên các cạnh $A B$, $B C$ sao cho $A M + N C = A D$.
  #listEX()[
    + Chứng minh: $A M = B N$ và $triangle A M D = triangle B N D$.
    + Tính số đo các góc của $triangle D M N$.
  ]
]

#bt()[
  Cho $hat(x O y) = 90 degree$ và tia phân giác $O t$. Lấy điểm $A$ bất kì trên $O t$, kẻ $A B perp O x$ ở $B$, $A C perp O y$ ở $C$. Chứng minh: tứ giác $O B A C$ là hình vuông.
]

#bt()[
  Cho tam giác $A B C$ có $hat(A) = 90 degree$; $A B = A C = a$ và $A D$ là đường phân giác của góc trong. Từ $D$ kẻ $D E \/\/ A C$ và $D F \/\/ A B$ (với $E in A B$; $F in A C$). Chứng minh:
  #listEX()[
    + Tứ giác $A E D F$ là hình vuông.
    + $C E = B F$.
  ]
]

#bt()[
  Cho tam giác $A B C$ cân tại $A$ có $A B = sqrt(2)$ và $B C = 2$. $D$ là điểm đối xứng với $A$ qua $B C$.
  #listEX()[
    + $triangle A B C$ là tam giác gì? Vì sao?
    + Chứng minh: tứ giác $A B D C$ là hình vuông.
  ]
]

#bt()[
  Cho tam giác $A B C$ vuông cân ở $A$ có đường trung tuyến $A M$. Kẻ $M H \/\/ A C$, $M K \/\/ A B$ ($H in A B$; $K in A C$). Tứ giác $A H M K$ là hình đặc biệt gì? Vì sao?
]

#bt()[
  Cho tam giác $A B C$ vuông cân tại $A$ có đường cao $A H$. Gọi $O$ là trung điểm của $A C$, trên tia đối của tia $O B$ lấy điểm $D$ sao cho $O D = O B$.
  #listEX()[
    + Tứ giác $A B C D$ là hình gì? Vì sao?
    + Gọi $E$ là trung điểm của $A B$. Tứ giác $A H C D$ là hình gì? Vì sao?
    + Tứ giác $A O H E$ là hình gì? Vì sao?
  ]
]

#bt()[
  Cho hình vuông $A B C D$. Kéo dài $B C$ lấy $E$, kéo dài $C D$ lấy $F$, sao cho $B E = D F$.
  #listEX()[
    + Chứng minh: $triangle A B E = triangle A D F$.
    + $triangle E A F$ là tam giác gì? Vì sao?
    + Kẻ tia $E x \/\/ A F$ và tia $F y \/\/ A E$. $E x$ cắt $F y$ tại $G$. Tứ giác $A E G F$ là hình gì? Vì sao?
  ]
]

#bt()[
  Cho hình vuông $A B C D$ có $E$ là trung điểm của $A B$, $F$ là trung điểm của $A D$.
  #listEX()[
    + Chứng minh: tứ giác $D F E B$ là hình thang cân.
    + Gọi $I$ là trung điểm của $E F$. Từ $I$ lần lượt vẽ $I P perp A D$ tại $P$, $I Q perp A B$ tại $Q$. Tứ giác $A Q I P$ là hình đặc biệt gì? Vì sao?
    + Chứng minh: $A$, $I$, $C$ thẳng hàng.
    + Vẽ $B H perp C F$ tại $H$, $B H$ cắt $C D$ tại $T$. Chứng minh: $T$ là trung điểm của $C D$.
  ]
]

#bt()[
  Cho hình vuông $A B C D$. Trên tia đối của các tia $A D$, $B A$, $C B$, $D C$ lần lượt lấy các điểm $A'$, $B'$, $C'$, $D'$ sao cho $A A' = B B' = C C' = D D'$. Chứng minh:
  #listEX()[
    + $triangle A A' B' = triangle B B' C' = triangle C C' D' = triangle D D' A'$.
    + $hat(A' B' C') = 90 degree$.
    + Tứ giác $A' B' C' D'$ là hình vuông.
  ]
]

#bt()[
  Cho hình vuông $A B C D$. Hai đường thẳng $d_1$ và $d_2$ vuông góc nhau ở tâm $O$ của hình vuông. Đường thẳng $d_1$ cắt $A B$, $C D$ ở $P$ và $Q$. Đường thẳng $d_2$ cắt $B C$, $A D$ ở $R$ và $S$. Chứng minh:
  #listEX()[
    + $triangle A O P = triangle B O R$.
    + $O P = O R = O S = O Q$.
    + Tứ giác $P R Q S$ là hình vuông.
  ]
]

#bt()[
  Cho hình chữ nhật $A B C D$ có $A B = 2 B C$. Gọi $I$ là trung điểm của $A B$ và $K$ là trung điểm của $D C$. Chứng minh:
  #listEX()[
    + $A I K D$ và $B I K C$ là hình vuông.
    + $I K = (D C)/2$ và $hat(D I C) = 90 degree$.
  ]
]

#bt()[
  Cho tam giác $A B C$ vuông cân ở $A$. Trên cạnh $B C$ lấy các điểm $H$, $G$ sao cho $B H = H G = G C$. Qua $H$ và $G$ kẻ các đường thẳng vuông góc với $B C$ chúng cắt $A B$ và $A C$ theo thứ tự tại $E$, $F$. Chứng minh:
  #listEX()[
    + $triangle B E H$ và $triangle C F G$ là các tam giác vuông cân.
    + $E H = H G = G F$.
  ]
]

#bt()[
  Cho $hat(x O y) = 90 degree$ có $O t$ là đường phân giác. $D$ là điểm trên $O t$ với $O D = a$. Đường trung trực của $O D$ cắt hai tia $O x$, $O y$ lần lượt tại $A$, $B$.
  #listEX()[
    + Chứng minh: $triangle O B D$ vuông cân và $triangle O A D$ vuông cân.
    + Tứ giác $O B D A$ là hình gì? Vì sao?
    + Tính $S_(O A D B)$ theo $a$.
  ]
]

#bt()[
  Cho tam giác $A B C$ cân tại $A$ có $A B = sqrt(2)$ và $B C = 2$. $D$ là điểm đối xứng với $A$ qua $B C$.
  #listEX()[
    + Tính $B D$, $D C$.
    + Tứ giác $A B D C$ là hình gì? Vì sao? Tính $S_(A B C D)$.
  ]
]

#bt()[
  Cho hình thang $A B C D$ có độ dài đáy lớn bằng $2$ lần đáy nhỏ $C D$. Gọi $I$ là trung điểm của $A B$. Đường thẳng $A D$ cắt đường thẳng $B C$ tại $E$.
  #listEX()[
    + Chứng minh: tứ giác $A I C D$ và tứ giác $B C D I$ là hình bình hành.
    + Chứng minh: $hat(D I A) = hat(E C D)$ và $A D = D E$.
    + Giả sử $hat(A) = hat(D) = 90 degree$ và $A D = C D$. Chứng minh: $B C perp A C$.
  ]
]

#bt()[
  Cho hình chữ nhật $A B C D$ có $A B = 2 B C$. Gọi $I$ là trung điểm của $A B$ và $K$ là trung điểm của $D C$. Chứng minh:
  #listEX()[
    + $A I K D$ và $B I K C$ là hình vuông.
    + $I K = (D C)/2$ và $hat(D I C) = 90 degree$.
  ]
]

#bt()[
  Cho $triangle A B C$ vuông cân tại $B$, gọi $O$ là trung điểm của $A C$; $D$ là điểm đối xứng của $B$ qua $O$. Trên cạnh $B C$ lấy điểm $M$ và trên tia đối của tia $D C$ lấy điểm $N$ sao cho $D N = B M$.
  #listEX()[
    + Tứ giác $A B C D$ là hình gì? Vì sao?
    + Chứng minh: tam giác $M A N$ là tam giác vuông cân.
    + Chứng minh: $B D$ đi qua trung điểm của $M N$. (gợi ý: từ $N$ vẽ đường thẳng song song với $B M$ và cắt $B D$ tại $T$)
  ]
]

#bt()[
  Cho hình bình hành $A B C D$ có $A B = 2 A D$. Gọi $E$ và $F$ theo thứ tự là trung điểm của $A B$ và $C D$.
  #listEX()[
    + Chứng minh: $A E C F$ là hình bình hành.
    + Chứng minh: $A E F D$ là hình thoi.
    + Gọi $M$ là giao điểm của $A F$ và $D E$; $N$ là giao điểm của $B F$ và $C E$. Chứng minh: $E M F N$ là hình chữ nhật.
    + Hình bình hành $A B C D$ cần điều kiện gì thì $E M F N$ là hình vuông?
  ]
]

#bt()[
  Cho hình bình hành $A B C D$. Gọi $D E$, $B K$ lần lượt là đường phân giác góc trong của các $triangle A D B$ và $triangle D B C$.
  #listEX()[
    + Chứng minh: $D E \/\/ B K$.
    + Tứ giác $D E B K$ là hình gì? Vì sao?
    + Tìm điều kiện của $triangle A B D$ để $D E B K$ trở thành:
      + Hình chữ nhật;
      + Hình vuông.
  ]
]

#bt()[
  Cho hình bình hành $A B C D$ có $A B = 2 A D$. Gọi $M$ và $N$ là trung điểm của $A B$ và $C D$.
  #listEX()[
    + Xác định dạng tứ giác $A M N D$.
    + Chứng minh: $A N \/\/ M C$.
    + $E$ là giao điểm của $A N$ và $D M$, $F$ là giao điểm của $M C$ và $B N$. Chứng minh: $E F \/\/ B C$.
    + Xác định dạng của tứ giác $M E N F$.
    + Tìm điều kiện của hình bình hành $A B C D$ để tứ giác $M E N F$ là hình vuông.
  ]
]

#bt()[
  Cho hình chữ nhật $A B C D$. Gọi $M$ và $N$ lần lượt là trung điểm của các cạnh $A B$ và $C D$.
  #listEX()[
    + Chứng minh: tứ giác $A M N D$ là hình chữ nhật.
    + Tính diện tích của hình chữ nhật $A M N D$ biết $A D = 4$ cm và $A B = 6$ cm.
    + Gọi $I$ là giao điểm của $A N$ và $D M$, $K$ là giao điểm của $B N$ và $M C$. Chứng minh: tứ giác $M I N K$ là hình thoi.
    + Tìm điều kiện của hình chữ nhật $A B C D$ để tứ giác $M I N K$ là hình vuông.
  ]
]

#bt()[
  Cho tam giác $A B C$ cân tại $A$, đường trung tuyến $A M$. Gọi $I$ là trung điểm của $A C$ và $K$ là điểm đối xứng với $M$ qua điểm $I$.
  #listEX()[
    + Tứ giác $A K C M$ là hình gì? Vì sao?
    + Chứng minh: $A K M B$ là hình bình hành.
    + Tìm điều kiện của tam giác $A B C$ để tứ giác $A K C M$ là hình vuông.
  ]
]

#bt()[
  Cho hình vuông $A B C D$. Vẽ $hat(x A y) = 90 degree$. $A x$ cắt $B C$ ở $M$; $A y$ cắt đường thẳng $C D$ tại $N$.
  #listEX()[
    + Chứng minh: $triangle M A N$ vuông cân.
    + Vẽ hình bình hành $A M F N$ có $O$ là giao điểm của $A F$ và $M N$. Chứng minh: $O A = O C = (A F)/2$ và $triangle A C F$ vuông tại $C$.
    + Chứng minh: $D$, $O$, $B$ thẳng hàng.
  ]
]

#bt()[
  Cho hình vuông $A B C D$. Từ điểm $M$ thuộc cạnh $B C$, vẽ đường thẳng cắt $C D$ ở $K$ sao cho $hat(A M B) = hat(A M K)$. Kẻ $A H perp M K$ ở $H$. Chứng minh:
  #listEX()[
    + $triangle A B M = triangle A H M$ và $A H = A D$.
    + $triangle D A K = triangle H A K$.
    + $hat(M A K) = 1/2 hat(A) = 45 degree$.
  ]
]

#bt()[
  Cho hình vuông $A B C D$. Từ điểm $M$ thuộc cạnh $B C$, vẽ đường thẳng cắt $C D$ ở $K$ sao cho $hat(A M B) = hat(A M K)$. Kẻ $A M perp M K$ ở $H$. Chứng minh:
  #listEX()[
    + $triangle A M H = triangle A M B$.
    + $hat(K A M) = 45 degree$.
  ]
]

#bt()[
  Cho hình vuông $A B C D$. $M$ là điểm tùy ý trên cạnh $D C$. Tia phân giác của $hat(D A M)$ cắt $C D$ tại $I$. Kẻ $I H perp A M$ tại $H$ và tia $I H$ cắt $B C$ tại $K$. Chứng minh:
  #listEX()[
    + $triangle A D I = triangle A H I$ và $triangle A B K = triangle A H K$.
    + $hat(I A K) = 45 degree$.
  ]
]

#bt()[
  Cho hình vuông $A B C D$. Lấy $N in A B$, $M in B C$ sao cho $hat(A D N) = hat(N D M)$. Kẻ tia $D x perp D N$; $D x$ cắt tia $B C$ tại $K$. Chứng minh:
  #listEX()[
    + $hat(A D N) = hat(C D K)$.
    + $A N = C K$.
    + $triangle M D K$ cân ở $M$.
    + $D M = A N + C M$.
  ]
]

#bt()[
  #immini()[
    Nhà ông Tư có miếng đất như hình vẽ sau, gồm hình vuông $A B C D$ và hình chữ nhật $E H K F$ có diện tích bằng nhau. Biết chiều rộng hình chữ nhật $E H K F$ là $H K = 5$ m và chiều dài $E H$ gấp bốn lần chiều rộng $H K$.
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 0.25cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(
        stroke: (thickness: 0.7pt, cap: "round"),
        mark: (fill: black),
        padding: 5pt,
      )
      let A = (0, 0)
      let B = (0, 10)
      let C = (10, 10)
      let D = (10, 0)
      let E = (10, 7.5)
      let F = (10, 2.5)
      let H = (30, 7.5)
      let K = (30, 2.5)
      line(A, B, C, E, H, K, F, D, A)
      line(E, F, stroke: (dash: "dashed"))
      content((rel: (-135deg, 1), to: A), [$A$])
      content((rel: (135deg, 1), to: B), [$B$])
      content((rel: (45deg, 1), to: C), [$C$])
      content((rel: (-45deg, 1), to: D), [$D$])
      content((rel: (180deg, 1), to: E), [$E$])
      content((rel: (180deg, 1), to: F), [$F$])
      content((rel: (45deg, 1), to: H), [$H$])
      content((rel: (-45deg, 1), to: K), [$K$])
      content((rel: (0deg, 1.8), to: (H, 50%, K)), [$5$ m])
    })
  ]
  #listEX()[
    + Tính diện tích miếng đất nhà ông Tư.
    + Ông Tư muốn rào xung quanh khu đất trên bằng dây kẽm gai có giá 12 000 đồng một mét. Tính số tiền ông Tư phải trả khi mua dây kẽm gai, biết $E F$ nằm trong mảnh đất thì cần phải rào.
  ]
]

#bt()[
  #immini()[
    Một mảnh đất hình chữ nhật có độ dài cạnh là 20 mét và 50 mét. Nhà thi công dự kiến sẽ trồng hoa ở chính giữa miếng đất với hình thoi có độ dài hai đường chéo lần lượt là 12 và 25 mét. Hãy tính diện tích phần còn lại của mảnh đất sau khi trồng hoa.
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 1.2cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(
        stroke: (thickness: 0.7pt, cap: "round"),
        mark: (fill: black),
        padding: 5pt,
      )
      let A = (0, 0)
      let B = (0, 2)
      let C = (5, 2)
      let D = (5, 0)
      line(A, B, C, D, A)
      line(
        (rel: (0deg, 1.25), to: (A, 50%, B)),
        (rel: (-90deg, 0.4), to: (B, 50%, C)),
        (rel: (180deg, 1.25), to: (C, 50%, D)),
        (rel: (90deg, 0.4), to: (D, 50%, A)),
        (rel: (0deg, 1.25), to: (A, 50%, B)),
        fill: gray,
      )
    })
  ]
]

#bt()[
  Một phòng khách hình chữ nhật có chiều dài 6 m và chiều rộng "3$,$5" m được lát nền bởi các viên gạch hình vuông có kích thước 50 cm $times$ 50 cm. Coi diện tích các mạch là không đáng kể. Biết 1 hộp gồm có 4 viên với giá 135 000 đồng mỗi hộp. Để lát nền cho phòng khách trên thì tốn hết bao nhiêu tiền?
]

#bt()[
  Bác Minh có một mảnh sân hình chữ nhật với chiều dài 15 m, chiều rộng 10 m. Bác Minh muốn lót gạch 80% diện tích mảnh sân bằng các tấm gạch hình vuông có cạnh bằng $0","5$ m, phần sân còn lại để trồng hoa. Hãy tính số tấm gạch cần dùng để lót sân (xem khoảng cách giữa các tấm gạch là không đáng kể).
]

#bt()[
  Nhà bác Hai có một cái sân hình chữ nhật có chiều dài $12$ m, chiều rộng $8$ m. Bác muốn mua những viên gạch hình vuông có cạnh "0$,$4" m để lót sân. Ngoài ra, bác còn mua thêm 2% gạch dự trữ cùng loại để thay thế các viên gạch bị hỏng sau này. Hỏi bác Hai cần trả bao nhiêu tiền để mua số gạch như dự tính? (Tính cả các viên gạch dự trữ; giả sử diện tích giữa các viên gạch là không đáng kể). Biết giá một viên là 15 000 VNĐ.
]
