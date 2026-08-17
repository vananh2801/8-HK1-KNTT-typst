#import "../style/lib.typ": *
#show: appearance

#section()[Hình đồng dạng]

#subsection()[Lý thuyết]

#subsubsection()[Hình đồng dạng phối cảnh (Hình vị tự)]

#vd()[
  Cho tam giác $A B C$ và điểm $O$ bất kì. Lấy các điểm $A'$, $B'$, $C'$ lần lượt _thuộc các tia_ $O A$, $O B$, $O C$, sao cho $O A'=1/2 O A$, $O B'=1/2 O B$ và $O C'=1/2 O C$.
  #listEX()[
    + Chứng minh $triangle A B C tilde.rev triangle A'B'C$.
    + Lấy $M$, $N$, $M'$ và $N'$ lần lượt là trung điểm của $A B$, $B C$, $A'B'$ và $B'C'$. Dùng thước thẳng để kiểm tra xem hai đường thẳng $M M'$, $N N'$ có đi qua $O$ không.
  ]
  #loigiai()[
    #dotlineEX(24)
  ]
]

#nhanxet()[
  - Trong ví dụ trên, khi lấy một cặp điểm $M$, $M'$ tương ứng tuỳ ý nằm trên hai hình tam giác. Đường thẳng $M M'$ luôn đi qua điểm $O$ cố định, ta gọi $triangle A B C$ và $triangle A'B'C'$ là hai hình _đồng dạng phối cảnh_ (hay _vị tự_), điểm $O$ là _tâm phối cảnh_ (hay _tâm vị tự_) và $k=1/2$ gọi là _tỉ số đồng dạng của hai hình đồng dạng phối cảnh_ (hay _tỉ số vị tự_).
  - Với $0<k<1$, ta nói $triangle A'B'C'$ là hình _thu nhỏ_ của $triangle A B C$.
  - Nếu ta vẽ $triangle A'B'C'$ sao cho $k>1$ thì ta có hình $triangle A'B'C'$ là hình _phóng to_ của $triangle A B C$.
]

#luuy()[
  - Nếu ta lấy các điểm $A'$, $B'$, $C'$ lần lượt thuộc _tia đối_ của các tia $O A$, $O B$, $O C$, sao cho $O A'=1/2 O A$, $O B'=1/2 O B$ và $O C'=1/2 O C$. Khi đó, tỉ số đồng dạng phối cảnh là $k=-1/2$.
  - Cần phân biệt tỉ số đồng dạng của hai hình đồng dạng phối cảnh ($k!=0$) và tỉ số đồng dạng của hai tam giác đồng dạng ($k>0$) đã học ở các bài trước.
  - Trong chương trình học lớp 8, ta chỉ tìm hiểu các hình đồng dạng phối cảnh có tỉ lệ đồng dạng $k>0$.
]

#let imgs-8H9-5-example-1(scale: 1cm) = box()[
  #import "@preview/cetz:0.5.2"
  #cetz.canvas(length: scale, {
    import cetz.draw: *
    import cetz.angle: *
    set-style(
      stroke: (thickness: 0.7pt, cap: "round"),
      mark: (fill: black),
      padding: 5pt,
    )
    // Kích thước tam giác đều
    let R = 2.5
    let r = R / 2
    let sqrt3 = calc.sqrt(3)
    // Tọa độ các đỉnh và trung điểm
    let O = (0, 0)
    let A = (0, R) // Đỉnh trên
    let B = (-R * sqrt3 / 2, -R / 2) // Đỉnh dưới trái
    let C = (R * sqrt3 / 2, -R / 2) // Đỉnh dưới phải
    let D = (0, -r) // Trung điểm cạnh đáy BC
    let E = (r * sqrt3 / 2, r / 2) // Trung điểm cạnh CA
    let F = (-r * sqrt3 / 2, r / 2) // Trung điểm cạnh AB
    // 1. Vẽ tam giác nền màu xám
    line(A, B, C, close: true, fill: rgb("#9e9e9e"), stroke: 1.2pt + black)
    // Hàm tạo điểm cho đường cong cánh hoa (dạng hình mầm/chiếc lá)
    let make-petal(P, width-factor) = {
      let (x1, y1) = P
      let L = calc.sqrt(x1 * x1 + y1 * y1)
      // Vectơ đơn vị hướng từ O -> P và vectơ pháp tuyến vuông góc
      let ux = x1 / L
      let uy = y1 / L
      let nx = -uy
      let ny = ux
      let w = L * width-factor
      // Điểm điều khiển Bézier hai bên cánh hoa
      let c1x = 0.3 * x1 + w * nx
      let c1y = 0.3 * y1 + w * ny
      let c2x = 0.7 * x1 + w * nx
      let c2y = 0.7 * y1 + w * ny
      let c3x = 0.7 * x1 - w * nx
      let c3y = 0.7 * y1 - w * ny
      let c4x = 0.3 * x1 - w * nx
      let c4y = 0.3 * y1 - w * ny
      let pts = ()
      let n = 20
      // Nửa đường cong bên trái (từ O đến P)
      for i in range(0, n + 1) {
        let t = i / n
        let t1 = 1 - t
        let x = 3 * t1 * t1 * t * c1x + 3 * t1 * t * t * c2x + t * t * t * x1
        let y = 3 * t1 * t1 * t * c1y + 3 * t1 * t * t * c2y + t * t * t * y1
        pts.push((x, y))
      }
      // Nửa đường cong bên phải (từ P về O)
      for i in range(0, n + 1) {
        let t = i / n
        let t1 = 1 - t
        let x = t1 * t1 * t1 * x1 + 3 * t1 * t1 * t * c3x + 3 * t1 * t * t * c4x
        let y = t1 * t1 * t1 * y1 + 3 * t1 * t1 * t * c3y + 3 * t1 * t * t * c4y
        pts.push((x, y))
      }
      return pts
    }
    // Tỉ lệ độ rộng cánh hoa
    let long-w = 0.16
    let short-w = 0.22
    // 2. Vẽ 6 cánh hoa màu trắng chèn lên nền xám
    line(..make-petal(A, long-w), close: true, fill: white)
    line(..make-petal(E, short-w), close: true, fill: white)
    line(..make-petal(C, long-w), close: true, fill: white)
    line(..make-petal(D, short-w), close: true, fill: white)
    line(..make-petal(B, long-w), close: true, fill: white)
    line(..make-petal(F, short-w), close: true, fill: white)
  })
]

#let imgs-8H9-5-example-2(scale: 1cm) = box()[
  #import "@preview/cetz:0.5.2": canvas, draw
  #canvas(length: scale, {
    import draw: *
    // Bán kính / Nửa độ dài cạnh hình vuông lớn
    let R = 2.5
    let sqrt2 = calc.sqrt(2)
    // Kích thước hình vuông nhỏ trung tâm
    let s = 0.2
    let r = R / sqrt2
    let d = R / 2 - s
    let alpha = calc.asin((d / R) * sqrt2) / 1deg
    // Hàm tạo danh sách điểm trên cung tròn
    let arc-pts(cx, cy, rad-val, start-deg, stop-deg, steps: 20) = {
      let pts = ()
      for i in range(0, steps + 1) {
        let t = i / steps
        let deg = start-deg + t * (stop-deg - start-deg)
        let rad = deg * calc.pi / 180
        pts.push((cx + rad-val * calc.cos(rad), cy + rad-val * calc.sin(rad)))
      }
      return pts
    }
    // 1. Tạo 4 cánh hoa lớn màu xám ở 4 góc
    let outer-tl = arc-pts(0, R, R, 180, 270) + arc-pts(-R, 0, R, 0, 90)
    let outer-tr = arc-pts(R, 0, R, 90, 180) + arc-pts(0, R, R, 270, 360)
    let outer-br = arc-pts(0, -R, R, 0, 90) + arc-pts(R, 0, R, 180, 270)
    let outer-bl = arc-pts(-R, 0, R, 270, 360) + arc-pts(0, -R, R, 90, 180)
    line(..outer-tl, close: true, fill: rgb("#9e9e9e"), stroke: 1pt + black)
    line(..outer-tr, close: true, fill: rgb("#9e9e9e"), stroke: 1pt + black)
    line(..outer-br, close: true, fill: rgb("#9e9e9e"), stroke: 1pt + black)
    line(..outer-bl, close: true, fill: rgb("#9e9e9e"), stroke: 1pt + black)
    // 2. Tạo 4 cánh hoa nhỏ màu xám bên trong hình thoi
    let inner-top = (
      arc-pts(-R / 2, R / 2, r, -alpha, 45)
        + arc-pts(R / 2, R / 2, r, 135, 180 + alpha)
    )
    let inner-right = (
      arc-pts(R / 2, R / 2, r, 270 - alpha, 315)
        + arc-pts(R / 2, -R / 2, r, 45, 90 + alpha)
    )
    let inner-bottom = (
      arc-pts(R / 2, -R / 2, r, 180 - alpha, 225)
        + arc-pts(-R / 2, -R / 2, r, -45, alpha)
    )
    let inner-left = (
      arc-pts(-R / 2, -R / 2, r, 90 - alpha, 135)
        + arc-pts(-R / 2, R / 2, r, 225, 270 + alpha)
    )
    line(..inner-top, close: true, fill: rgb("#9e9e9e"), stroke: 1pt + black)
    line(..inner-right, close: true, fill: rgb("#9e9e9e"), stroke: 1pt + black)
    line(..inner-bottom, close: true, fill: rgb("#9e9e9e"), stroke: 1pt + black)
    line(..inner-left, close: true, fill: rgb("#9e9e9e"), stroke: 1pt + black)
    // 3. Vẽ hình thoi nối 4 trung điểm của hình vuông lớn
    line((0, R), (R, 0), (0, -R), (-R, 0), close: true, stroke: 1pt + black)
    // 4. Vẽ hình vuông nhỏ màu trắng ở tâm
    line(
      (-s, s),
      (s, s),
      (s, -s),
      (-s, -s),
      close: true,
      fill: white,
      stroke: 1pt + black,
    )
    // 5. Vẽ viền hình vuông ngoài cùng
    line((-R, R), (R, R), (R, -R), (-R, -R), close: true, stroke: 1.2pt + black)
  })
]

#vd()[
  Một số cặp hình đồng dạng phối cảnh khác:
  #align(center)[
    #imgs-8H9-5-example-1(scale: 0.3cm)
    #h(2em)
    #imgs-8H9-5-example-1(scale: 0.5cm)
    #h(5em)
    #imgs-8H9-5-example-2(scale: 0.2cm)
    #h(2em)
    #imgs-8H9-5-example-2(scale: 0.45cm)
  ]
]

#vd()[
  Bạn An chụp hình chợ Bến Thành ở TP Hồ Chí Minh và in ra 2 tờ giấy có kích cỡ khác nhau là A3 và A4. Bạn An xếp hai tờ giấy sao cho các cạnh bên song song như sau:
  #align(center)[
    #box(stroke: 1pt + black, inset: 3pt, fill: white)[
      #image(
        "../imgs/8H9-5-cho-ben-thanh.png",
        height: 4cm,
        width: 4cm * 141.14%,
      )
    ]
    #h(2em)
    #box(stroke: 1pt + black, inset: 3pt, fill: white)[
      #image("../imgs/8H9-5-cho-ben-thanh.png", width: 4cm, height: 4cm / 1.414)
    ]
  ]
  Khi đó ta có hai hình đồng dạng phối cảnh.
]

#vd()[
  Đưa ra ví dụ minh hoạ cho hai hình bằng nhau có thể là hai hình đồng dạng phối cảnh.
  #loigiai()[
    #dotlineEX(2)
  ]
]

#subsubsection()[Hình đồng dạng]

#vd()[
  Bạn An chụp hình bến Nhà Rồng ở TP Hồ Chí Minh và in ra 3 tờ giấy có kích cỡ lần lượt là A3, A4 và A4. Bạn An xếp hai tờ giấy A3 và A4 sao cho các cạnh bên song song, tờ giấy A4 thứ hai bị nghiêng như sau:
  #align(center)[
    #box(stroke: 1pt + black, inset: 3pt, fill: white)[
      #image(
        "../imgs/8H9-5-ben-nha-rong.png",
        height: 4cm,
        width: 4cm * 141.14%,
      )
    ]
    #h(2em)
    #box(stroke: 1pt + black, inset: 3pt, fill: white)[
      #image("../imgs/8H9-5-ben-nha-rong.png", width: 4cm, height: 4cm / 1.414)
    ]
    #h(2em)
    #box()[
      #rotate(-10deg)[
        #box(stroke: 1pt + black, inset: 3pt, fill: white)[
          #image(
            "../imgs/8H9-5-ben-nha-rong.png",
            width: 4cm,
            height: 4cm / 1.414,
          )
        ]
      ]
    ]
  ]
]

#nhanxet()[
  - Hình ảnh trên tờ giấy thứ nhất và thứ hai là hai hình _đồng dạng phối cảnh_.
  - Hình ảnh trên tờ giấy thứ hai và thứ ba là hai hình _bằng nhau_.
  - Ta nói hình thứ nhất và hình thứ ba là hai hình _đồng dạng_.
]

#luuy()[
  - Hai hình bằng nhau cũng là hai hình đồng dạng. Do đó, hình ảnh trên tờ giấy thứ hai và thứ ba cũng là hai hình _đồng dạng_.
]

#dn(tieude: "Hình đồng dạng")[
  Một hình $cal(H')$ được gọi là đồng dạng với hình $cal(H)$ nếu nó bằng $cal(H)$ hoặc bằng một hình phóng to hay thu nhỏ của $cal(H)$.
]

#subsubsection()[Bài tập tự luận]


#bt()[
  Trong các hình dưới đây, hãy chọn ra các cặp hình đồng dạng:
  #align(center)[
    #box()[
      #image("../imgs/8H9-5-bien-bao-cam-di-nguoc-chieu.jpg", width: 2cm)
      a)
    ]
    #h(2em)
    #box()[
      #image("../imgs/8H9-5-bien-bao-tre-em.jpg", width: 4cm)
      b)
    ]
    #h(2em)
    #box()[
      #image("../imgs/8H9-5-bien-bao-stop.png", width: 2cm)
      c)
    ]
    #h(2em)
    #box()[
      #image("../imgs/8H9-5-bien-bao-cam-queo-trai.png", width: 4cm)
      d)
    ]
  ]
  #align(center)[
    #box()[
      #image("../imgs/8H9-5-bien-bao-queo-trai.png", width: 2cm)
      e)
    ]
    #h(2em)
    #box()[
      #image("../imgs/8H9-5-bien-bao-stop.png", width: 4cm)
      f)
    ]
    #h(2em)
    #box()[
      #image("../imgs/8H9-5-bien-bao-gioi-han-toc-do-50.png", width: 2cm)
      g)
    ]
    #h(2em)
    #box()[
      #image("../imgs/8H9-5-bien-bao-cam-di-nguoc-chieu.jpg", width: 4cm)
      h)
    ]
  ]
]

#bt()[
  Trong các hình dưới đây, hai hình nào đồng dạng với nhau? Tính tỉ số đồng dạng của hai hình đó.
  #align(center)[
    #box()[
      #import "@preview/cetz:0.5.2"
      #set text(size: 10pt)
      #cetz.canvas(length: 1cm, {
        import cetz.draw: *
        import cetz.angle: *
        set-style(
          stroke: (thickness: 0.7pt, cap: "round"),
          mark: (fill: black),
          padding: 5pt,
        )
        // Mũi tên nằm ngang (2 cm)
        line((-1, 1.5), (1, 1.5), mark: (end: "stealth"), stroke: 0.7pt)
        content((0, 2.05), [2 cm])
        // Mũi tên thẳng đứng (2,5 cm)
        line((-1.6, -1.5), (-1.6, 1), mark: (end: "stealth"), stroke: 0.7pt)
        content((-2.2, -0.3), [2,5 cm])
        // Cánh trên bên trái
        bezier(
          (0, 0.2),
          (-1.0, 0.9),
          (-0.3, 0.8),
          (-0.8, 1.0),
          stroke: 1pt,
          fill: luma(230),
        )
        bezier(
          (-1.0, 0.9),
          (0, -0.2),
          (-1.1, 0.3),
          (-0.4, -0.1),
          stroke: 1pt,
          fill: luma(230),
        )
        // Cánh trên bên phải
        bezier(
          (0, 0.2),
          (1.0, 0.9),
          (0.3, 0.8),
          (0.8, 1.0),
          stroke: 1pt,
          fill: luma(230),
        )
        bezier(
          (1.0, 0.9),
          (0, -0.2),
          (1.1, 0.3),
          (0.4, -0.1),
          stroke: 1pt,
          fill: luma(230),
        )
        // Cánh dưới bên trái
        bezier(
          (0, -0.1),
          (-0.7, -1.1),
          (-0.6, -0.2),
          (-0.8, -0.6),
          stroke: 1pt,
          fill: luma(240),
        )
        bezier(
          (-0.7, -1.1),
          (0, -0.8),
          (-0.4, -1.3),
          (-0.2, -1.0),
          stroke: 1pt,
          fill: luma(240),
        )
        // Cánh dưới bên phải
        bezier(
          (0, -0.1),
          (0.7, -1.1),
          (0.6, -0.2),
          (0.8, -0.6),
          stroke: 1pt,
          fill: luma(240),
        )
        bezier(
          (0.7, -1.1),
          (0, -0.8),
          (0.4, -1.3),
          (0.2, -1.0),
          stroke: 1pt,
          fill: luma(240),
        )
        // Đuôi cánh bướm
        line((-0.5, -1.0), (-0.65, -1.45), stroke: 1.2pt)
        circle((-0.65, -1.45), radius: 0.04, fill: black)
        line((0.5, -1.0), (0.65, -1.45), stroke: 1.2pt)
        circle((0.65, -1.45), radius: 0.04, fill: black)
        // Hoạ tiết gân cánh đơn giản
        line((0, 0.1), (-0.6, 0.5), stroke: 0.5pt + gray)
        line((0, 0.1), (0.6, 0.5), stroke: 0.5pt + gray)
        line((0, -0.3), (-0.4, -0.7), stroke: 0.5pt + gray)
        line((0, -0.3), (0.4, -0.7), stroke: 0.5pt + gray)
        // Thân con bướm (Body & Head)
        circle((0, -0.2), radius: (0.07, 0.55), fill: black)
        circle((0, 0.38), radius: 0.09, fill: black)
        // Râu bướm (Antennae)
        bezier(
          (0, 0.45),
          (-0.3, 0.85),
          (-0.05, 0.65),
          (-0.15, 0.8),
          stroke: 0.8pt,
        )
        bezier((0, 0.45), (0.3, 0.85), (0.05, 0.65), (0.15, 0.8), stroke: 0.8pt)
        circle((-0.3, 0.85), radius: 0.03, fill: black)
        circle((0.3, 0.85), radius: 0.03, fill: black)
        content((0, -2), [a)])
      })
    ]
    #h(2em)
    #box()[
      #import "@preview/cetz:0.5.2"
      #set text(size: 10pt)
      #cetz.canvas(length: 1cm, x: 1.5, {
        import cetz.draw: *
        import cetz.angle: *
        set-style(
          stroke: (thickness: 0.7pt, cap: "round"),
          mark: (fill: black),
          padding: 5pt,
        )
        // Mũi tên nằm ngang (3 cm)
        line((-1, 1.3), (1, 1.3), mark: (end: "stealth"), stroke: 0.7pt)
        content((0, 1.6), [3 cm])
        // Mũi tên thẳng đứng (2,5 cm)
        line((-1.3, -1.5), (-1.3, 1), mark: (end: "stealth"), stroke: 0.7pt)
        content((-1.9, -0.3), [2,5 cm])
        // Cánh trên bên trái
        bezier(
          (0, 0.2),
          (-1.0, 0.9),
          (-0.3, 0.8),
          (-0.8, 1.0),
          stroke: 1pt,
          fill: luma(230),
        )
        bezier(
          (-1.0, 0.9),
          (0, -0.2),
          (-1.1, 0.3),
          (-0.4, -0.1),
          stroke: 1pt,
          fill: luma(230),
        )
        // Cánh trên bên phải
        bezier(
          (0, 0.2),
          (1.0, 0.9),
          (0.3, 0.8),
          (0.8, 1.0),
          stroke: 1pt,
          fill: luma(230),
        )
        bezier(
          (1.0, 0.9),
          (0, -0.2),
          (1.1, 0.3),
          (0.4, -0.1),
          stroke: 1pt,
          fill: luma(230),
        )
        // Cánh dưới bên trái
        bezier(
          (0, -0.1),
          (-0.7, -1.1),
          (-0.6, -0.2),
          (-0.8, -0.6),
          stroke: 1pt,
          fill: luma(240),
        )
        bezier(
          (-0.7, -1.1),
          (0, -0.8),
          (-0.4, -1.3),
          (-0.2, -1.0),
          stroke: 1pt,
          fill: luma(240),
        )
        // Cánh dưới bên phải
        bezier(
          (0, -0.1),
          (0.7, -1.1),
          (0.6, -0.2),
          (0.8, -0.6),
          stroke: 1pt,
          fill: luma(240),
        )
        bezier(
          (0.7, -1.1),
          (0, -0.8),
          (0.4, -1.3),
          (0.2, -1.0),
          stroke: 1pt,
          fill: luma(240),
        )
        // Đuôi cánh bướm
        line((-0.5, -1.0), (-0.65, -1.45), stroke: 1.2pt)
        circle((-0.65, -1.45), radius: 0.04, fill: black)
        line((0.5, -1.0), (0.65, -1.45), stroke: 1.2pt)
        circle((0.65, -1.45), radius: 0.04, fill: black)
        // Hoạ tiết gân cánh đơn giản
        line((0, 0.1), (-0.6, 0.5), stroke: 0.5pt + gray)
        line((0, 0.1), (0.6, 0.5), stroke: 0.5pt + gray)
        line((0, -0.3), (-0.4, -0.7), stroke: 0.5pt + gray)
        line((0, -0.3), (0.4, -0.7), stroke: 0.5pt + gray)
        // Thân con bướm (Body & Head)
        circle((0, -0.2), radius: (0.07, 0.55), fill: black)
        circle((0, 0.38), radius: 0.09, fill: black)
        // Râu bướm (Antennae)
        bezier(
          (0, 0.45),
          (-0.3, 0.85),
          (-0.05, 0.65),
          (-0.15, 0.8),
          stroke: 0.8pt,
        )
        bezier((0, 0.45), (0.3, 0.85), (0.05, 0.65), (0.15, 0.8), stroke: 0.8pt)
        circle((-0.3, 0.85), radius: 0.03, fill: black)
        circle((0.3, 0.85), radius: 0.03, fill: black)
        content((0, -2), [b)])
      })
    ]
    #h(2em)
    #box()[
      #import "@preview/cetz:0.5.2"
      #set text(size: 10pt)
      #cetz.canvas(length: 1.4cm, {
        import cetz.draw: *
        import cetz.angle: *
        set-style(
          stroke: (thickness: 0.7pt, cap: "round"),
          mark: (fill: black),
          padding: 5pt,
        )
        // Mũi tên nằm ngang (2,8 cm)
        line((-1, 1.2), (1, 1.2), mark: (end: "stealth"), stroke: 0.7pt)
        content((0, 1.4), [2,8 cm])
        // Mũi tên thẳng đứng (3,5 cm)
        line((-1.3, -1.5), (-1.3, 1), mark: (end: "stealth"), stroke: 0.7pt)
        content((-1.7, -0.3), [3,5 cm])
        // Cánh trên bên trái
        bezier(
          (0, 0.2),
          (-1.0, 0.9),
          (-0.3, 0.8),
          (-0.8, 1.0),
          stroke: 1pt,
          fill: luma(230),
        )
        bezier(
          (-1.0, 0.9),
          (0, -0.2),
          (-1.1, 0.3),
          (-0.4, -0.1),
          stroke: 1pt,
          fill: luma(230),
        )
        // Cánh trên bên phải
        bezier(
          (0, 0.2),
          (1.0, 0.9),
          (0.3, 0.8),
          (0.8, 1.0),
          stroke: 1pt,
          fill: luma(230),
        )
        bezier(
          (1.0, 0.9),
          (0, -0.2),
          (1.1, 0.3),
          (0.4, -0.1),
          stroke: 1pt,
          fill: luma(230),
        )
        // Cánh dưới bên trái
        bezier(
          (0, -0.1),
          (-0.7, -1.1),
          (-0.6, -0.2),
          (-0.8, -0.6),
          stroke: 1pt,
          fill: luma(240),
        )
        bezier(
          (-0.7, -1.1),
          (0, -0.8),
          (-0.4, -1.3),
          (-0.2, -1.0),
          stroke: 1pt,
          fill: luma(240),
        )
        // Cánh dưới bên phải
        bezier(
          (0, -0.1),
          (0.7, -1.1),
          (0.6, -0.2),
          (0.8, -0.6),
          stroke: 1pt,
          fill: luma(240),
        )
        bezier(
          (0.7, -1.1),
          (0, -0.8),
          (0.4, -1.3),
          (0.2, -1.0),
          stroke: 1pt,
          fill: luma(240),
        )
        // Đuôi cánh bướm
        line((-0.5, -1.0), (-0.65, -1.45), stroke: 1.2pt)
        circle((-0.65, -1.45), radius: 0.04, fill: black)
        line((0.5, -1.0), (0.65, -1.45), stroke: 1.2pt)
        circle((0.65, -1.45), radius: 0.04, fill: black)
        // Hoạ tiết gân cánh đơn giản
        line((0, 0.1), (-0.6, 0.5), stroke: 0.5pt + gray)
        line((0, 0.1), (0.6, 0.5), stroke: 0.5pt + gray)
        line((0, -0.3), (-0.4, -0.7), stroke: 0.5pt + gray)
        line((0, -0.3), (0.4, -0.7), stroke: 0.5pt + gray)
        // Thân con bướm (Body & Head)
        circle((0, -0.2), radius: (0.07, 0.55), fill: black)
        circle((0, 0.38), radius: 0.09, fill: black)
        // Râu bướm (Antennae)
        bezier(
          (0, 0.45),
          (-0.3, 0.85),
          (-0.05, 0.65),
          (-0.15, 0.8),
          stroke: 0.8pt,
        )
        bezier((0, 0.45), (0.3, 0.85), (0.05, 0.65), (0.15, 0.8), stroke: 0.8pt)
        circle((-0.3, 0.85), radius: 0.03, fill: black)
        circle((0.3, 0.85), radius: 0.03, fill: black)
        content((0, -2), [c)])
      })
    ]
  ]
]
