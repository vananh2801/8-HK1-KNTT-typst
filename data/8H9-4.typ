#import "../style/lib.typ": *
#show: appearance

#section()[Các trường hợp đồng dạng của tam giác vuông]

#subsection()[Lý thuyết]

#subsubsection()[Áp dụng các trường hợp đồng dạng của tam giác vào tam giác vuông]

#dl(tieude: "Trường hợp đồng dạng cạnh - góc - cạnh của hai tam giác vuông")[
  Nếu hai cạnh góc vuông của tam giác vuông này tỉ lệ với hai cạnh góc vuông
  của tam giác vuông kia thì hai tam giác vuông đó đồng dạng với nhau.
]

#align(center)[
  #grid(
    columns: (auto, auto),
    column-gutter: 2em,
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

          $hat(B' A' C')=hat(B A C)=90 degree$

          $(A' B')/(A B)=(A' C')/(A C)$
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
      #cetz.canvas(length: 0.5cm, {
        import cetz.draw: *
        import cetz.angle: *
        set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), padding: 5pt)
        let scale = 1.6
        let B = (0, 3)
        let A = (0, 0)
        let C = (4, 0)
        let Ap = (7, 0)
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
        content((rel: (180deg, 10pt), to: (A, 50%, B)), [$c$])
        content((rel: (180deg, 15pt), to: (Ap, 50%, Bp)), [$k dot c$])
        content((rel: (-90deg, 10pt), to: (A, 50%, C)), [$b$])
        content((rel: (-90deg, 10pt), to: (Ap, 50%, Cp)), [$k dot b$])
      })
    ],
  )
]

#dl(tieude: "Trường hợp đồng dạng góc - góc của hai tam giác vuông")[
  Nếu một góc nhọn của tam giác vuông này bằng một góc nhọn của tam giác
  vuông kia thì hai tam giác vuông đó đồng dạng với nhau.
]

#align(center)[
  #grid(
    columns: (auto, auto),
    column-gutter: 2em,
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

          $hat(B' A' C')=hat(B A C)=90 degree$

          $hat(A' B' C')=hat(A B C)$
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
      #cetz.canvas(length: 0.5cm, {
        import cetz.draw: *
        import cetz.angle: *
        set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), padding: 5pt)
        let scale = 1.6
        let B = (0, 3)
        let A = (0, 0)
        let C = (4, 0)
        let Ap = (7, 0)
        let Bp = (Ap.at(0) + (B.at(0) - A.at(0)) * scale, Ap.at(1) + (B.at(1) - A.at(1)) * scale)
        let Cp = (Ap.at(0) + (C.at(0) - A.at(0)) * scale, Ap.at(1) + (C.at(1) - A.at(1)) * scale)
        line(A, B, C, A)
        line(Ap, Bp, Cp, Ap)
        right-angle(A, C, B, label: none)
        right-angle(Ap, Cp, Bp, label: none)
        angle(B, A, C, label: none, radius: 1)
        angle(Bp, Ap, Cp, label: none, radius: 1)
        content((rel: (-135deg, 10pt), to: A), [$A$])
        content((rel: (135deg, 10pt), to: B), [$B$])
        content((rel: (-45deg, 10pt), to: C), [$C$])
        content((rel: (-135deg, 10pt), to: Ap), [$A'$])
        content((rel: (135deg, 10pt), to: Bp), [$B'$])
        content((rel: (-45deg, 10pt), to: Cp), [$C'$])
      })
    ],
  )
]

#vd()[
  Cho tam giác $A B C$ có các đường cao $A D$, $B E$, $C F$ đồng quy tại điểm $H$. Chứng minh rằng:
  #listEX(socot: 1)[
    + $H A dot H D = H B dot H E = H C dot H F$;
    + $triangle A E F tilde.rev triangle A B C$.
  ]
  #loigiai()[
    #dotlineEX(25)
  ]
]

#subsubsection()[Trường hợp đồng dạng đặc biệt của hai tam giác vuông]

#dl(tieude: "Trường hợp đồng dạng cạnh huyền - cạnh góc vuông của hai tam giác vuông")[
  Nếu cạnh huyền và một cạnh góc vuông của tam giác vuông này tỉ lệ với cạnh huyền và một cạnh góc vuông của tam giác vuông kia thì hai tam giác vuông đó đồng dạng với nhau.
]

#align(center)[
  #grid(
    columns: (auto, auto),
    column-gutter: 2em,
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

          $hat(B' A' C')=hat(B A C)=90 degree$

          $(A' B')/(A B)=(A' C')/(A C)$
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
      #cetz.canvas(length: 0.5cm, {
        import cetz.draw: *
        import cetz.angle: *
        set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), padding: 5pt)
        let scale = 1.6
        let B = (0, 3)
        let A = (0, 0)
        let C = (4, 0)
        let Ap = (7, 0)
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
        content((rel: (180deg, 10pt), to: (A, 50%, B)), [$c$])
        content((rel: (180deg, 15pt), to: (Ap, 50%, Bp)), [$k dot c$])
        content((rel: (40deg, 10pt), to: (B, 50%, C)), [$b$])
        content((rel: (40deg, 10pt), to: (Bp, 50%, Cp)), [$k dot a$])
      })
    ],
  )
]

#vd()[
  #immini()[
    Một ngôi nhà với hai mái lệch $A B$, $C D$ được thiết kế như hình bên, sao cho $C D = 6$ m, $A B = 4$ m, $H A = 2$ m, $A C = 1$ m. Chứng tỏ rằng $hat(A B D) = hat(C D B)$.
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 0.8cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), padding: 5pt)
      let H = (0, 0)
      let A = (0, 2)
      let C = (0, 3)
      let BH = calc.sqrt(4 * 4 - 2 * 2)
      let DH = calc.sqrt(6 * 6 - 3 * 3)
      let B = (-BH, 0)
      let D = (DH, 0)
      line(H, A, B, D, C, A)
      content((rel: (-135deg, 10pt), to: B), [$B$])
      content((rel: (-90deg, 10pt), to: H), [$H$])
      content((rel: (-45deg, 10pt), to: D), [$D$])
      content((rel: (90deg, 10pt), to: C), [$C$])
      content((rel: (0deg, 10pt), to: A), [$A$])
      content((rel: (180deg, 10pt), to: (A, 50%, C)), [1 m])
      content((rel: (0deg, 10pt), to: (A, 50%, H)), [2 m])
      content((rel: (135deg, 10pt), to: (A, 50%, B)), [4 m])
      content((rel: (45deg, 10pt), to: (C, 50%, D)), [6 m])
      right-angle(H, D, C, label: none, radius: 0.4)
    })
  ]
  #loigiai()[
    #dotlineEX(15)
  ]
]

#nhanxet()[
  Nếu $triangle A'B'C' tilde.rev triangle A B C$ theo tỉ số $k$ và $A H$, $A'H'$ lần lượt là các đường cao của $triangle A B C$ và $triangle A'B'C'$ thì $triangle A'B'H' tilde.rev triangle A B H$ (do $hat(B) = hat(B')$) theo tỉ số $k=(A'H')/(A H)$.
]

#subsection()[Bài tập tự luận]

#bt()[
  Điều kiện nào dưới đây chứng tỏ rằng hai tam giác vuông đồng dạng?
  #listEX()[
    + Một góc nhọn của tam giác này bằng một góc nhọn của tam giác kia.
    + Cạnh góc vuông và cạnh huyền của tam giác này tỉ lệ với cạnh góc vuông và cạnh huyền của tam giác kia.
    + Một cạnh góc vuông của tam giác này bằng một cạnh góc vuông của tam giác kia.
    + Hai cạnh góc vuông của tam giác này tỉ lệ với hai cạnh góc vuông của tam giác kia.
  ]
]

#bt()[
  Cho góc nhọn $x O y$, các điểm $A$, $N$ nằm trên tia $O x$, các điểm $B$, $M$ nằm trên tia $O y$ sao cho $A M$, $B N$ lần lượt vuông góc với $O y$, $O x$. Chứng minh rằng $triangle O A M tilde.rev triangle O B N$.
]

#bt()[
  Cho hai hình chữ nhật $A B C D$ và $A'B'C'D'$ thoả mãn $A C = 3 A B$, $B'D' = 3 A'B'$.
  #listEX()[
    + Chứng minh rằng $triangle A B C tilde.rev triangle A'B'C'$.
    + Nếu $A'B' = 2 A B$ và diện tích hình chữ nhật $A B C D$ là $2$ m$""^2$ thì diện tích hình chữ nhật $A'B'C'D'$ là bao nhiêu?
  ]
]

#bt()[
  Cho $triangle A'B'C' tilde.rev triangle A B C$ theo tỉ số $k$. Gọi $A'H'$ và $A H$ lần lượt là các đường cao đỉnh $A'$ và $A$ của tam giác $A'B'C'$ và $A B C$. Chứng minh rằng:
  #listEX()[
    + $(A'H')/(A H) = k$;
    + Diện tích tam giác $A'B'C'$ bằng $k^2$ lần diện tích tam giác $A B C$.
  ]
]

#bt()[
  Một người đo chiều cao của một tòa nhà nhờ một cọc chôn xuống đất, cọc cao 6 m và đặt cách xa tòa nhà 54 m. Sau khi người ấy lùi ra xa cách cọc $0","8$ m thì thấy đầu cọc và đỉnh tòa nhà cùng nằm trên một đường thẳng. Hỏi tòa nhà cao bao nhiêu mét, biết rằng khoảng cách từ chân đến mắt người ấy là $1","8$ m.
]

#bt()[
  Cho tam giác $A B C$ vuông tại $A$ có đường cao $A H$. Kẻ $H M perp A B$ tại $M$.
  #listEX()[
    + Chứng minh: $triangle A M H tilde.rev triangle A H B$.
    + Kẻ $H K perp A C$ tại $K$. Chứng minh: $A M dot A B = A K dot A C$.
    + Chứng minh: $triangle A K M tilde.rev triangle A B C$.
    + Cho biết $A B = 18$ cm, $A C = 24$ cm. Tính diện tích $triangle A M K$.
  ]
]

#bt()[
  Cho tam giác $A B C$ vuông tại $A$ và tam giác $A'B'C'$ vuông tại $A'$ có $(A B)/(A'B') = (B C)/(B'C') = k$, $k > 0$.
  #listEX()[
    + Chứng minh: $(A C)/(A'C') = k$.
    + Chứng minh: $triangle A B C$ đồng dạng với $triangle A'B'C'$.
  ]
]

#bt()[
  Cho tam giác $A B C$ và tam giác $A'B'C'$ là hai tam giác nhọn có các đường cao lần lượt là $A H$, $A'H'$. Biết rằng: $(A H)/(A B) = (A'H')/(A'B')$ và $hat(A C B) = hat(A'C'B')$.
  #listEX()[
    + Chứng minh: tam giác $A B H$ đồng dạng với tam giác $A'B'H'$.
    + Chứng minh: tam giác $A B C$ đồng dạng với tam giác $A'B'C'$.
  ]
]

#bt()[
  Cho tam giác $A B C$ vuông tại $A$ và tam giác $A'B'C'$ vuông tại $A'$ có các đường cao lần lượt là $A H$, $A'H'$. Biết rằng: $(A H)/(A B) = (A'H')/(A'B')$. Chứng minh:
  #listEX()[
    + $triangle A B H$ đồng dạng với $triangle A'B'H'$.
    + $triangle A B C$ đồng dạng với $triangle A'B'C'$.
  ]
]

#bt()[
  Cho hai tam giác nhọn $A B C$ và $A'B'C'$ có các đường cao lần lượt là $A H$, $A'H'$. Biết rằng: $(A H)/(A'H') = (A B)/(A'B') = (A C)/(A'C')$.
  #listEX()[
    + Chứng minh: $triangle A B H$ đồng dạng với $triangle A'B'H'$ và $triangle A C H$ đồng dạng với $triangle A'C'H'$.
    + Chứng minh: $triangle A B C$ đồng dạng với $triangle A'B'C'$ và $(A H)/(A'H') = (A B)/(A'B') = (A C)/(A'C') = (B C)/(B'C')$.
    + Chứng minh: $S_(A B C)/S_(A'B'C') = (A B dot A C)/(A'B' dot A'C')$.
  ]
]

#bt()[
  Tam giác $A B H$ vuông tại $H$ có: $A B = 20$ cm, $B H = 12$ cm. Trên tia đối của tia $H B$ lấy điểm $C$ sao cho $A C = 5/3 A H$. Chứng minh:
  #listEX()[
    + Tam giác $A B H$ đồng dạng với tam giác $C A H$.
    + $hat(B A C) = 90 degree$.
  ]
]

#bt()[
  Cho $triangle A B C$ đồng dạng với $triangle D E F$. Kẻ các đường cao $A H$ và $D K$.
  #listEX()[
    + Chứng minh: tam giác $A B H$ đồng dạng với tam giác $D E K$.
    + Chứng minh: $(A H)/(D K) = (A B)/(D E) = (A C)/(D F) = (B C)/(E F)$. Từ đó rút ra nhận xét gì?
    + Chứng minh: $S_(A B C)/S_(D E F) = ((A B)/(D E))^2$. Từ đó rút ra nhận xét gì?
  ]
]

#bt()[
  Cho $triangle A B C$ và $triangle D E F$ có $(A B)/(D E) = (A C)/(D F) = (B C)/(E F) = k > 0$. Kẻ các đường cao $A H$ và $D K$.
  #listEX()[
    + Chứng minh: $triangle A B C$ đồng dạng với $triangle D E F$.
    + Chứng minh: $triangle A B H$ đồng dạng với $triangle D E K$.
    + Chứng minh: $(A H)/(D K) = k$. Từ đó rút ra nhận xét gì?
    + Chứng minh: $S_(A B C)/S_(D E F) = k^2$. Từ đó rút ra nhận xét gì?
  ]
]

#bt()[
  Cho tam giác $A B C$ đồng dạng với tam giác $D E F$. Kẻ các đường trung tuyến $A M$ và $D N$. Chứng minh:
  #listEX()[
    + $(B M)/(E N) = (A B)/(D E)$.
    + Tam giác $A B M$ đồng dạng với tam giác $D E N$ và $(A M)/(D N) = (A B)/(E D)$.
  ]
]

#bt()[
  Cho $triangle A B C$ đồng dạng với $triangle D E F$. Kẻ các đường phân giác trong $A I$ và $D K$.
  #listEX()[
    + Chứng minh: $triangle A B I$ đồng dạng với $triangle D E K$.
    + Chứng minh: $(A I)/(D K) = (A B)/(D E)$.
  ]
]
