#import "../style/lib.typ": *
#show: appearance

#section()[Định lý Pythagore và ứng dụng]

#subsection()[Lý thuyết]

#subsubsection()[Định lý Pythagore]

#dl(tieude: "Định lý Pythagore")[
  Trong một tam giác vuông, bình phương của cạnh huyền bằng tổng các bình phương của hai cạnh góc vuông.
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
          $triangle A B C$, $hat(C A B)=90 degree$
        ],
        [KL],
        [
          $B C^2=A B^2+A C^2$.
        ],
      )
    ],
    [
      #import "@preview/cetz:0.5.2"
      #set text(size: 10pt)
      #cetz.canvas(length: 1cm, {
        import cetz.draw: *
        import cetz.angle: *
        set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), padding: 5pt)
        let scale = 1.6
        let A = (0, 0)
        let B = (0, 3)
        let C = (4, 0)
        let H = (A, "_|_", B, C)
        line(A, B, C, A)
        line(A, H)
        content((rel: (-135deg, 10pt), to: A), [$A$])
        content((rel: (124deg, 10pt), to: B), [$B$])
        content((rel: (-45deg, 10pt), to: C), [$C$])
        content((rel: (55deg, 10pt), to: H), [$H$])
        right-angle(A, C, B, radius: 0.3, label: none)
        right-angle(H, A, C, radius: 0.3, label: none)
      })
    ],
  )
]

#vd()[
  Tìm độ dài $x$ và $y$ trong hình sau:
  #align(center)[
    #box()[
      #import "@preview/cetz:0.5.2"
      #set text(size: 10pt)
      #cetz.canvas(length: 1cm, {
        import cetz.draw: *
        import cetz.angle: *
        set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), padding: 5pt)
        let scale = 1.6
        let A = (0, 0)
        let B = (0, 2)
        let C = (2, 0)
        line(A, B, C, A)
        right-angle(A, C, B, radius: 0.3, label: none)
        content((rel: (55deg, 10pt), to: (B, 50%, C)), [$x$])
        content((rel: (180deg, 10pt), to: (A, 50%, B)), [$1$])
        content((rel: (-90deg, 10pt), to: (A, 50%, C)), [$1$])
      })
    ]
    #h(5em)
    #box()[
      #import "@preview/cetz:0.5.2"
      #set text(size: 10pt)
      #cetz.canvas(length: 1cm, {
        import cetz.draw: *
        import cetz.angle: *
        set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), padding: 5pt)
        let scale = 1.6
        let A = (0, 0)
        let B = (0, 2)
        let C = (4, 0)
        line(A, B, C, A)
        right-angle(A, C, B, radius: 0.3, label: none)
        content((rel: (55deg, 10pt), to: (B, 50%, C)), [$sqrt(5)$])
        content((rel: (180deg, 10pt), to: (A, 50%, B)), [$1$])
        content((rel: (-90deg, 10pt), to: (A, 50%, C)), [$y$])
      })
    ]
  ]
  #loigiai()[
    #dotlineEX(9)
  ]
]

#dl(tieude: "Định lý Pythagore đảo")[
  Nếu tam giác có bình phương của một cạnh bằng tổng các bình phương của hai cạnh kia thì tam giác đó là tam giác vuông.
]

#vd()[
  Tìm tam giác vuông trong các tam giác sau:
  #listEX()[
    + Tam giác $A B C$ có $A B = 6$ cm, $B C = 10$ cm, $A C = 8$ cm.
    + Tam giác $M N P$ có $M N = 3$ m, $N P = 4$ m, $P M = 6$ m.
    + Tam giác $O P Q$ có $O P = 12$ dm, $O Q = 16$ dm, $P Q = 20$ dm.
  ]
  #loigiai()[
    #dotlineEX(9)
  ]
]

#subsubsection()[Ứng dụng của định lý Pythagore]

Định lý Pythagore được ứng dụng để: chứng minh một số hệ thức về cạnh và đường cao của tam giác vuông; tính toán độ dài đoạn thẳng; chứng minh tính chất hình học...

#vd()[
  #immini()[
    Cho hai tam giác vuông $A B C$ và $A'B'C'$ có số đo như hình vẽ bên. Tính độ dài của $A C$ và $A'C'$, từ đó chứng minh $triangle A B C tilde.rev triangle A'B'C'$.
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 0.3cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), padding: 5pt)
      let scale = 2
      let B = (0, 3)
      let A = (0, 0)
      let C = (4, 0)
      let Ap = (9, 0)
      let Bp = (Ap.at(0) + (B.at(0) - A.at(0)) * scale, Ap.at(1) + (B.at(1) - A.at(1)) * scale)
      let Cp = (Ap.at(0) + (C.at(0) - A.at(0)) * scale, Ap.at(1) + (C.at(1) - A.at(1)) * scale)
      line(A, B, C, A)
      line(Ap, Bp, Cp, Ap)
      right-angle(A, C, B, label: none)
      right-angle(Ap, Cp, Bp, label: none)
      content((rel: (-135deg, 10pt), to: A), [$A$])
      content((rel: (135deg, 10pt), to: B), [$B$])
      content((rel: (-45deg, 10pt), to: C), [$C$])
      content((rel: (-135deg, 10pt), to: Ap), [$A'$])
      content((rel: (135deg, 10pt), to: Bp), [$B'$])
      content((rel: (-45deg, 10pt), to: Cp), [$C'$])
      content((rel: (180deg, 10pt), to: (A, 50%, B)), [$3$])
      content((rel: (180deg, 15pt), to: (Ap, 50%, Bp)), [$6$])
      content((rel: (40deg, 10pt), to: (B, 50%, C)), [$5$])
      content((rel: (40deg, 10pt), to: (Bp, 50%, Cp)), [$10$])
    })
  ]
  #loigiai()[
    #dotlineEX(15)
  ]
]

#subsection()[Bài tập tự luận]

#bt()[
  Một bạn học sinh thả diều ngoài công viên, cho biết đoạn diều từ tay bạn đến con diều dài 130 m và bạn đứng cách nơi diều được thả lên theo phương thẳng đứng là 50 m. Tính độ cao của con diều so với mặt đất, biết tay bạn học sinh cách mặt đất là 1,5 m.
]

#bt()[
  Một con thuyền đang neo ở một điểm cách chân tháp hải đăng 180 m. Cho biết tháp hải đăng cao 25 m. Hãy tính khoảng cách từ thuyền đến ngọn hải đăng.
]

#bt()[
  Một máy bay cất cánh trong 5 phút với vận tốc 240 km/h. Hãy tính độ cao của máy bay so với mặt đất, biết khoảng cách từ điểm xuất phát đến phương thẳng đứng là 12 km.
]

#bt()[
  Cho tam giác $A B C$ vuông tại $A$. Tính cạnh $B C$ trong các trường hợp sau:
  #listEX()[
    + $A B = 30$ cm; $A C = 40$ cm.
    + $A B = 1$ cm; $A C = 1$ cm.
    + $A B = 1$ cm; $A C = sqrt(3)$ cm.
    + $A B = sqrt(2)$ cm; $A C = sqrt(13)$ cm.
  ]
]

#bt()[
  Cho tam giác $A B C$ vuông tại $A$. Tính cạnh $A C$ trong các trường hợp sau:
  #listEX()[
    + $A B = 1$ cm; $B C = sqrt(2)$ cm.
    + $A B = sqrt(3)$ cm; $B C = 2$ cm.
    + $A B = 2$ cm; $B C = sqrt(13)$ cm.
    + $A B = sqrt(99)$ cm; $B C = 10$ cm.
  ]
]

#bt()[
  Cho tam giác $A B C$ vuông tại $A$. Tính cạnh $B C$ nếu biết:
  #listEX()[
    + $A B = A C$ và $A B + A C = 10$ cm.
    + $A B = A C$ và $A B + A C = 2 sqrt(2)$ cm.
    + $A B + A C = 17$ cm và $A B - A C = 7$ cm.
    + $A B + A C = 14$ cm và $A B - A C = 2$ cm.
    + $A B + A C = 49$ cm và $A B - A C = 7$ cm.
    + $(A B)/3 = (A C)/4$ và $A B + A C = 14$ cm.
    + $(A B)/12 = (A C)/5$ và $5 A B + 8 A C = 100$ cm.
    + $4 A B = 3 A C$ và $A B + A C = 70$ cm.
  ]
]

#bt()[
  Tam giác nào là tam giác vuông trong các tam giác có độ dài ba cạnh như sau:
  #listEX()[
    + 9 cm, 15 cm, 12 cm.
    + 6 cm, 7 cm, 8 cm.
    + 13 dm, 12 dm, 5 dm.
    + 7 m, 7 m, 10 m.
    + 1 m, 6 dm, 8 dm.
    + 24 cm, 1 dm, 26 cm.
    + 5 cm, 5 cm, 1 dm.
    + $sqrt(2)$ cm, $sqrt(3)$ cm, $sqrt(5)$ cm.
  ]
]

#bt()[
  Chứng minh: tam giác $A B C$ là tam giác vuông trong các trường hợp sau:
  #listEX()[
    + $A B = 3x$, $A C = 4x$, $B C = 5x$ $(x > 0)$.
    + $A B = 5x$, $A C = 12x$, $B C = 13x$ $(x > 0)$.
    + $(A B)/3 = (A C)/4 = (B C)/5$.
    + $20 A B = 15 A C = 12 B C$.
  ]
]

#bt()[
  Cho tam giác nhọn $A B C$. Kẻ $A H$ vuông góc với $B C$ $(H in B C)$. Cho biết $A B = 13$ cm, $A H = 12$ cm, $H C = 16$ cm. Tính các độ dài $A C$, $B C$.
]

#bt()[
  Cho tam giác $A B C$, kẻ $A H perp B C$ tại $H$, ($H$ nằm giữa $B$ và $C$). Hãy tính các cạnh $A B$, $A C$ và chứng minh tam giác $A B C$ vuông tại $A$ nếu biết:
  #listEX()[
    + $A H = 12$ cm, $B H = 9$ cm, $C H = 16$ cm.
    + $A H = 4$ cm, $B H = 1$ cm, $C H = 16$ cm.
    + $A H = 24$ cm, $B H = 32$ cm, $C H = 18$ cm.
    + $A H = 10$ cm, $B H = 25$ cm, $C H = 4$ cm.
    + $A H = 2$ cm, $B H = 1$ cm, $C H = 4$ cm.
    + $A H = sqrt(20)$ cm, $B H = 4$ cm, $C H = 5$ cm.
  ]
]

#bt()[
  Cho tam giác $A B C$, kẻ $A H perp B C$ tại $H$ ($H$ thuộc đoạn $B C$). $hat(B A C)$ có phải là góc vuông không? Nếu biết:
  #listEX()[
    + $A B = 15$ cm, $A C = 20$ cm, $A H = 12$ cm.
    + $A B = sqrt(52)$ cm, $A H = 6$ cm, $C H = 4$ cm.
    + $A B = 3$ cm, $A C = 4$ cm, $A H = 2","4$ cm.
    + $A B = sqrt(2)$ cm, $A H = 1$ cm, $C H = 1$ cm.
    + $A B = 2$ cm, $A C = 2$ cm, $A H = sqrt(2)$ cm.
    + $A C = sqrt(45)$ cm, $A H = 1$ cm, $B H = sqrt(11)$ cm.
  ]
]
