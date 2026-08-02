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
  Một bạn học sinh thả diều ngoài công viên, cho biết đoạn diều từ tay bạn đến con diều dài 130 m và bạn đứng cách nơi diều được thả lên theo phương thẳng đứng là 50 m. Tính độ cao của con diều so với mặt đất, biết tay bạn học sinh cách mặt đất là $1","5$ m.
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

#bt()[
  #immini()[
    Biết số inch màn hình tivi bằng độ dài đường chéo của tivi (cm) chia cho $2","54$. Nhà bạn Linh có một chiếc tivi 55 inch. Bạn Linh đo được một cạnh của tivi là $70$ cm. Em hãy tính giúp bạn cạnh còn lại của tivi dài bao nhiêu cm.
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 0.5cm, {
      import cetz.draw: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), content: (padding: 2pt))
      let A = (0, 5)
      let B = (10, 5)
      let C = (10, 0)
      let D = (0, 0)
      line(A, B, C, D, A)
      line(A, C)
      line((9.7, 5), (9.7, 4.7), (10, 4.7))
      line((9.7, 0), (9.7, 0.3), (10, 0.3))
      content((rel: (135deg, 10pt), to: A), [$A$])
      content((rel: (45deg, 10pt), to: B), [$B$])
      content((rel: (-45deg, 10pt), to: C), [$C$])
      content((rel: (-135deg, 10pt), to: D), [$D$])
      content((rel: (45deg, 8pt), to: (A, 50%, C)), [55 inch], angle: -25deg)
      content((rel: (0deg, 8pt), to: (B, 50%, C)), [70 cm], angle: -90deg)
    })
  ]
]

#bt()[
  #immini()[
    Một mảnh vườn có dạng một tam giác vuông $A B C$. Biết độ dài các cạnh $A B = x$ (m), $B C = x + 2$ (m). Tính cạnh $A C$ theo $x$.
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 0.8cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), content: (padding: 2pt))
      let x = 2
      // Lập phương cạnh x+1
      let A = (0, 0)
      let B = (0, 3)
      let C = (5, 0)
      line(A, B, C, A)
      right-angle(A, C, B, label: none, radius: 0.3)
      content((rel: (180deg, 0.3), to: (A, 50%, B)), [$x$])
      content((rel: (30deg, 0.6), to: (B, 50%, C)), [$x+2$])
      content((rel: (-135deg, 0.3), to: (A)), [$A$])
      content((rel: (135deg, 0.3), to: (B)), [$B$])
      content((rel: (-35deg, 0.3), to: (C)), [$C$])
    })
  ]
]

#bt()[
  Một bác thợ xây tính diện tích của một phòng ngủ. Bác đứng tại một góc nhà và yêu cầu một thợ xây khác cầm đầu kia của thước đi sang góc bên cạnh để đo, kết quả đo được 6 m. Sau đó, người thợ kia lại đi sang góc bên cạnh để đo, kết quả đo được 10 m. Vậy diện tích phòng ngủ là bao nhiêu mét vuông?
]

#bt()[
  #immini()[
    Để xác định chiếc điện thoại là bao nhiêu inch, các nhà sản xuất đã dựa vào độ dài đường chéo của màn hình điện thoại. Biết rằng 1 inch $approx 2","54$ cm, điện thoại có chiều rộng là 7 cm; chiều dài là 15,5 cm. Hỏi chiếc điện thoại là bao nhiêu inch? (Làm tròn kết quả đến hàng đơn vị)?
  ][
    #image("../imgs/8H9-3-iphone-13-pro-max.jpg", width: 4cm)
  ]
]

#bt()[
  #immini()[
    Một bạn học sinh thả diều ngoài đồng, cho biết đoạn dây diều từ tay bạn đến diều dài $170$ m và bạn đứng cách nơi diều được thả lên theo phương thẳng đứng là $80$ m. Tính độ cao của con diều so với mặt đất, biết tay bạn học sinh cách mặt đất $1","5$ m.
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 0.35cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
      let A = (0, 0) // góc vuông
      let B = (-8, 0) // bàn tay cầm diều
      let C = (0, 15) // diều
      let D = (0, -1.5) // chân đường vuông góc chiếu từ diều xuống đất
      let E = (-8, -1.5) // chân người
      // Vẽ đất
      line(
        (E),
        (rel: (-5, 0), to: (E)),
        (rel: (-5, -0.2), to: (E)),
        (rel: (1, -0.2), to: (D)),
        (rel: (1, 0), to: (D)),
        (D),
        stroke: none,
        fill: red.darken(50%),
      )
      // Vẽ diều
      line(
        (rel: (135deg, 1.1), to: C),
        (rel: (45deg, 0.6), to: C),
        (rel: (-45deg, 2), to: C),
        (rel: (-135deg, 0.6), to: C),
        (rel: (135deg, 1.1), to: C),
        fill: blue.lighten(90%),
      )
      hobby(
        (rel: (-45deg, 2), to: C),
        (rel: (-50deg, 3.5), to: C),
        (rel: (-45deg, 4.5), to: C),
      )
      hobby(
        (rel: (-45deg, 2), to: C),
        (rel: (-40deg, 3.5), to: C),
        (rel: (-30deg, 4.5), to: C),
      )
      // Vẽ người
      let head = (rel: (140deg, 1), to: B)
      circle(head, radius: 0.3, fill: black, stroke: black)
      let neck = (rel: (0, -0.35), to: head)
      let hip = (rel: (0, -0.6), to: neck)
      line(neck, hip)
      line(hip, (rel: (-0.5, -1.2), to: hip))
      line(hip, (rel: (0.5, -1.2), to: hip))
      line(neck, (rel: (-0.6, -0.6), to: neck))
      line(neck, B)
      // Vẽ các yếu tố hình học
      line(B, C)
      line(C, D, stroke: (dash: "dashed"))
      line(A, B, E, stroke: (dash: "dashed"))
      right-angle(A, B, C, label: none, radius: 0.7)
      content((rel: (135deg, 0.7), to: (B, 50%, C)), [$170$ m], angle: 65deg)
      content((rel: (90deg, 0.6), to: (B, 50%, A)), [$80$ m])
      content((rel: (0deg, 1.3), to: (A, 50%, D)), [$1","5$ m])
    })
  ]
]

#bt()[
  #immini()[
    Trên hình bên là khung mái nhà được làm từ các thanh thép hình bằng cách hàn chung lại với nhau. Mái nhà là một tam giác cân tại $A$, có chiều cao $A H = 1","4$ m $(A H perp B C)$, chiều rộng $B C = 4","8$ m. Để tạo được khung như hình vẽ, người thợ hàn phải cắt các thanh thép dài thành các đoạn. Em hãy tính độ dài các đoạn thẳng $A B$, $A C$ (đơn vị cm) để giúp chú thợ hàn cắt chuẩn kích thước (làm tròn đến chữ số thập phân thứ hai).
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 1cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 5pt), mark: (fill: black), content: (padding: 2pt))
      let H = (0, 0)
      let A = (0, 1.4)
      let B = (-2.4, 0)
      let C = (2.4, 0)
      line(A, B, C, A)
      line(A, H)
      line((H, 50%, B), (B, 50%, A))
      line((B, 50%, A), H, (C, 50%, A))
      line((C, 50%, A), (H, 50%, C))
      content((rel: (90deg, 0.3), to: (A)), [$A$])
      content((rel: (-140deg, 0.4), to: (B)), [$B$])
      content((rel: (-90deg, 0.3), to: (H)), [$H$])
      content((rel: (-40deg, 0.4), to: (C)), [$C$])
    })
  ]
]

#bt()[
  #immini()[
    Tính chiều dài đường trượt $A C$ trong hình vẽ bên _(kết quả làm tròn đến hàng phần mười)_.
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 0.8cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round", join: "round"), mark: (fill: black))
      let H = (0, 0)
      let A = (0, 3)
      let B = (4, 0)
      let C = (-6, 0)
      // Vẽ tam giác
      line(A, B, C, A)
      line(A, H)
      line(
        A,
        (rel: (180deg, 0.6), to: (A)),
        (rel: (90deg, 0.3), to: (C)),
        C,
      )
      // Vẽ tay vịn
      hobby(
        (rel: (180deg, 0.6), to: (A)),
        (rel: (150deg, 0.75), to: (A)),
        (rel: (90deg, 0.6), to: (A)),
        (rel: (30deg, 0.7), to: (A)),
        (rel: (0deg, 0.6), to: (A)),
        (rel: (-10deg, 0.7), to: (A)),
      )
      hobby(
        (rel: (180deg, 0.5), to: (A)),
        (rel: (150deg, 0.65), to: (A)),
        (rel: (90deg, 0.5), to: (A)),
        (rel: (30deg, 0.6), to: (A)),
        (rel: (0deg, 0.5), to: (A)),
        (rel: (-15deg, 0.6), to: (A)),
      )
      line(
        (rel: (-10deg, 0.7), to: (A)),
        (rel: (90deg, 0.4), to: (B)),
        B,
      )
      line(
        (rel: (-15deg, 0.6), to: (A)),
        (rel: (105deg, 0.37), to: (B)),
        (rel: (135deg, 0.15), to: (B)),
      )
      // Vẽ cầu thang đi lên
      for i in range(1, 14) {
        line(
          (A.at(0) + 0.3 * i - 0.3, A.at(1) - 0.225 * i + 0.225),
          (A.at(0) + 0.3 * i, A.at(1) - 0.225 * i + 0.225),
          (A.at(0) + 0.3 * i, A.at(1) - 0.225 * i),
          (A.at(0) + 0.3 * i - 0.3, A.at(1) - 0.225 * i + 0.225),
          fill: gray,
        )
      }
      // các thông số và điểm
      content((rel: (90deg, 0.25), to: (A)), [$A$])
      content((rel: (-40deg, 0.4), to: (B)), [$B$])
      content((rel: (-90deg, 0.3), to: (H)), [$H$])
      content((rel: (-140deg, 0.4), to: (C)), [$C$])
      content((rel: (-140deg, 0.4), to: (A, 50%, B)), [$5$ m])
      content((rel: (180deg, 0.5), to: (A, 50%, H)), [$3$ m])
      line(
        (rel: (-90deg, 0.6), to: (C)),
        (rel: (-90deg, 0.6), to: (B)),
        mark: (start: "stealth", end: "stealth"),
      )
      content((rel: (-90deg, 0.9), to: (C, 50%, B)), [$10$ m])
    })
  ]
]

#bt()[
  #immini()[
    Một mái nhà có khung sắt được thiết kế như hình vẽ bên. Hãy tính số tiền sắt phải trả, biết rằng một mét sắt có giá 135 000 đồng và để đảm bảo đủ sắt thì người ta dùng dư 5% so với chiều dài cần dùng.
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 1.2cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round", join: "round"), mark: (fill: black))
      let A = (0, 0)
      let B = (A.at(0) + calc.cos(53deg) * 2, A.at(1) + calc.sin(53deg) * 2)
      let C = (B.at(0) + calc.cos(-37deg) * 2, B.at(1) + calc.sin(-37deg) * 2)
      let D = (C.at(0) + calc.cos(53deg), C.at(1) + calc.sin(53deg))
      let E = (D.at(0) + calc.cos(-37deg) * 2, D.at(1) + calc.sin(-37deg) * 2)
      line(A, B, C, D, E, A, stroke: 3pt)
      right-angle(B, A, C, label: none, radius: 0.2)
      right-angle(C, D, B, label: none, radius: 0.2)
      right-angle(D, C, E, label: none, radius: 0.2)
      content((rel: (-135deg, 0.2), to: (A)), [$A$])
      content((rel: (90deg, 0.2), to: (B)), [$B$])
      content((rel: (-80deg, 0.2), to: (C)), [$C$])
      content((rel: (90deg, 0.2), to: (D)), [$D$])
      content((rel: (-45deg, 0.2), to: (E)), [$E$])
      content((rel: (127deg, 0.2), to: (A, 50%, B)), [$2$ m], angle: 53deg)
      content((rel: (37deg, 0.2), to: (B, 50%, C)), [$2$ m], angle: -37deg)
      content((rel: (127deg, 0.2), to: (C, 50%, D)), [$1$ m], angle: 53deg)
      content((rel: (37deg, 0.2), to: (D, 50%, E)), [$2$ m], angle: -37deg)
    })
  ]
]
