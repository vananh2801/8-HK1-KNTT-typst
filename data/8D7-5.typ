#import "../style/lib.typ": *
#show: appearance

#section()[Hệ số góc của đường thẳng]

#subsection()[Lý thuyết]

#subsubsection()[Hệ số góc của đường thẳng]

#dn(tieude: [Góc tạo bởi đường thẳng *$y=a x+b$* (*$a!=0$*) và trục *$O x$*])[
  Trong mặt phẳng $O x y$, góc $alpha$ tạo bởi đường thẳng $y = a x + b$ ($a != 0$) và trục $O x$ là góc tạo bởi tia $A x$ và tia $A T$, trong đó $A$ là giao điểm của đường thẳng $y = a x + b$ với trục $O x$, $T$ là một điểm nào đó thuộc đường thẳng $y = a x + b$ và có tung độ dương. Ngoài ra, $0 degree < alpha < 180 degree$.
  #align(center)[
    #box()[
      #set text(size: 10pt)
      #import "@preview/cetz:0.5.2"
      #import "@preview/cetz-plot:0.1.4": plot
      #cetz.canvas(length: 1.4cm, {
        import cetz.draw: *
        import cetz.angle: *
        set-style(stroke: (thickness: 0.7pt, cap: "round"), content: (padding: 3pt))
        set-style(
          axes: (
            shared-zero: false,
            x: (mark: (end: "stealth", fill: black)),
            y: (mark: (end: "stealth", fill: black)),
          ),
        )
        plot.plot(
          size: (3, 4),
          axis-style: "school-book",
          x-tick-step: none,
          y-tick-step: none,
          y-ticks: ((2, [$a$]),),
          x-min: -1.5,
          x-max: 1.5,
          y-min: -1,
          y-max: 3,
          name: "plot",
          {
            plot.add(
              domain: (-1.5, 1.5),
              x => x + 1,
              style: (stroke: (paint: blue)),
            )
            plot.add(
              ((1, 2), (-1, 0)),
              style: (stroke: none),
              mark: "o",
              mark-style: (fill: black, stroke: none),
              mark-size: 3pt,
            )
            plot.annotate({
              let O = (0, 0)
              let A = (-1, 0)
              let T = (1, 2)
              content(O, anchor: 45deg, [$O$])
              line(T, (0, T.at(1)), stroke: (dash: "dashed"))
              content((rel: (115deg, 0.2), to: T), [$T$])
              content((rel: (-75deg, 0.2), to: A), [$A$])
              angle(A, (1, 0), T, label: none)
              content((rel: (25deg, 0.7), to: A), [$alpha$])
              content((rel: (60deg, 0.7), to: A), [$y=a x+b$], angle: 45deg)
              content((-1.2, 1.5), box(inset: 3pt, stroke: 0.7pt + black)[$a>0$])
            })
          },
        )
      })
    ]
    #h(5em)
    #box()[
      #set text(size: 10pt)
      #import "@preview/cetz:0.5.2"
      #import "@preview/cetz-plot:0.1.4": plot
      #cetz.canvas(length: 1.4cm, {
        import cetz.draw: *
        import cetz.angle: *
        set-style(stroke: (thickness: 0.7pt, cap: "round"), content: (padding: 3pt))
        set-style(
          axes: (
            shared-zero: false,
            x: (mark: (end: "stealth", fill: black)),
            y: (mark: (end: "stealth", fill: black)),
          ),
        )
        plot.plot(
          size: (3, 4),
          axis-style: "school-book",
          x-tick-step: none,
          y-tick-step: none,
          x-min: -1.5,
          x-max: 1.5,
          y-min: -1,
          y-max: 3,
          name: "plot",
          {
            plot.add(
              domain: (-1.5, 1.5),
              x => -x + 1,
              style: (stroke: (paint: blue)),
            )
            plot.add(
              ((-1, 2), (1, 0)),
              style: (stroke: none),
              mark: "o",
              mark-style: (fill: black, stroke: none),
              mark-size: 3pt,
            )
            plot.annotate({
              let O = (0, 0)
              let A = (1, 0)
              let T = (-1, 2)
              content(O, anchor: 45deg, [$O$])
              line(T, (0, T.at(1)), stroke: (dash: "dashed"))
              content((rel: (45deg, 0.3), to: T), [$T$])
              content((rel: (-115deg, 0.2), to: A), [$A$])
              angle(A, (1, 0), T, label: none, radius: 0.35)
              angle(A, (1, 0), T, label: none, radius: 0.3)
              content((rel: (65deg, 0.6), to: A), [$alpha$])
              content((rel: (0deg, 0.25), to: (0, T.at(1))), [$a$])
              content((rel: (-1.6, 1.3), to: A), [$y=a x+b$], angle: -45deg)
              content((1.2, 1.5), box(inset: 3pt, stroke: 0.7pt + black)[$a<0$])
            })
          },
        )
      })
    ]
  ]
]

#dn(tieude: "Hệ số góc")[
  Ta gọi $a$ là _hệ số góc_ của đường thẳng $y = a x+ b$ ($a != 0$).
]

#nhanxet()[
  - Khi hệ số góc $a$ dương, đường thẳng $y = a x + b$ đi lên từ trái sang phải. Góc tạo bởi đường thẳng này và trục $O x$ là góc nhọn.
  - Khi hệ số góc $a$ âm, đường thẳng $y = a x + b$ đi xuống từ trái sang phải. Góc tạo bởi đường thẳng này và trục $O x$ là góc tù.
]

#vd()[
  Tìm hàm số bậc nhất có đồ thị là đường thẳng có hệ số góc là $3$ và cắt trục tung tại điểm có tung độ bằng $-1$.
  #loigiai()[
    #dotlineEX(5)
  ]
]

#subsubsection()[Đường thẳng song song và đường thẳng cắt nhau]

#dn(tieude: "Đường thẳng song song, trùng nhau")[
  #immini()[
    Hai đường thẳng $y = a x + b$ ($a != 0$) và $y = a'x + b'$ ($a' != 0$) song song với nhau khi $a = a'$, $b != b'$ và ngược lại; trùng nhau khi $a = a'$, $b = b'$ và ngược lại.
  ][
    #set text(size: 10pt)
    #import "@preview/cetz:0.5.2"
    #import "@preview/cetz-plot:0.1.4": plot
    #cetz.canvas(length: 1.4cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), content: (padding: 3pt))
      set-style(
        axes: (
          shared-zero: false,
          x: (mark: (end: "stealth", fill: black)),
          y: (mark: (end: "stealth", fill: black)),
        ),
      )
      plot.plot(
        size: (3, 3.5),
        axis-style: "school-book",
        x-tick-step: none,
        y-tick-step: none,
        x-min: -1.5,
        x-max: 1.5,
        y-min: -1,
        y-max: 2.5,
        name: "plot",
        {
          plot.add(
            domain: (-1.5, 1.5),
            x => x + 1,
            style: (stroke: (paint: blue)),
          )
          plot.add(
            domain: (-1.5, 1.5),
            x => x - 0.5,
            style: (stroke: (paint: blue)),
          )
          plot.annotate({
            let O = (0, 0)
            let A = (-1, 0)
            let Ap = (A.at(0) + 1.5, 0)
            let T = (1, 2)
            content(O, anchor: 45deg, [$O$])
            angle(A, (1, 0), T, label: none)
            angle(Ap, (2, 0), (rel: (45deg, 1), to: Ap), label: none)
            content((1, 2.2), [$y=a x+b$], angle: 45deg)
            content((1, 0.7), [$y=a' x+b'$], angle: 45deg)
          })
        },
      )
    })
  ]
]

#dn(tieude: "Đường thẳng cắt nhau")[
  Hai đường thẳng $y = a x + b$ ($a != 0$) và $y = a'x + b'$ ($a' != 0$) cắt nhau khi $a != a'$ và ngược lại.
]

#vd()[
  Tìm các cặp đường thẳng cắt nhau trong các đường thẳng sau:
  #listEX()[
    + $y = 2x + 1$;
    + $y = 2x$;
    + $y = 2 + 2x$;
    + $y = 1 - 2x$.
  ]
  #loigiai()[
    #dotlineEX(3)
  ]
]

#vd()[
  Cho hai hàm số bậc nhất $y = 2m x + 1$ và $y = (m-1)x+2$. Tìm các giá trị của $m$ để đồ thị của hai hàm số đã cho là:
  #listEX()[
    + Hai đường thẳng song song với nhau.
    + Hai đường thẳng cắt nhau.
  ]
  #loigiai()[
    #dotlineEX(5)
  ]
]

#subsection()[Bài tập tự luận]

#bt()[
  Cho hàm số bậc nhất $y = a x + 3$.
  #listEX()[
    + Tìm hệ số góc $a$ biết rằng đồ thị hàm số đi qua điểm $A(-1;4)$.
    + Vẽ đồ thị của hàm số.
  ]
]

#bt()[
  Cho hàm số bậc nhất $y = m x + m - 3$.
  #listEX()[
    + Tìm hệ số góc $m$ biết rằng đồ thị hàm số đi qua điểm $B(2;3)$.
    + Vẽ đồ thị của hàm số.
  ]
]

#bt()[
  Cho hàm số bậc nhất $y = k x - 2k - 3$.
  #listEX()[
    + Tìm hệ số góc $m$ biết rằng đồ thị hàm số đi qua điểm $C(2;-3)$.
    + Vẽ đồ thị của hàm số.
  ]
]

#bt()[
  #listEX()[
    + Vẽ đồ thị của hai hàm số $y = -x$ và $y = -x + 2$ trên cùng một mặt phẳng tọa độ.
    + Dùng thước đo góc để tìm góc tạo bởi hai đường thẳng $y = -x$ và $y = -x + 2$ với trục $O x$.
  ]
]

#bt()[
  Hãy chỉ ra ba cặp đường thẳng cắt nhau và các cặp đường thẳng song song với nhau trong các đường thẳng sau:

  $(d_1): y = 0","2x$. $quad$ $(d_2): y = -2x + 3$. $quad$ $(d_3): y = 0","2x - 0","5$.

  $(d_4): y = -7x - 4$. $quad$ $(d_5): y = sqrt(2)x - 3$. $quad$ $(d_6): y = sqrt(2)x - sqrt(3)$.
]

#bt()[
  Tìm hệ số góc $k$ để hai đường thẳng $y = k x - 3$ và $y = 7x - 5$ song song với nhau.
]

#bt()[
  Cho đường thẳng $(D): y = x + 2025$. Hãy viết phương trình hai đường thẳng song song với $(D)$.
]

#bt()[
  Cho đường thẳng $(d): y = -x - 2024$. Hãy viết phương trình hai đường thẳng cắt $(d)$.
]

#bt()[
  Một xe khách khởi hành từ bến xe phía Nam bưu điện thành phố Đà Nẵng để đi vào thành phố Nha Trang với tốc độ $45$ km/h.
  #listEX()[
    + Cho biết bến xe cách bưu điện thành phố Đà Nẵng $5$ km. Sau $x$ giờ, xe khách cách bưu điện thành phố Đà Nẵng $y$ km. Tính $y$ theo $x$.
    + Tìm hệ số góc của đường thẳng là đồ thị của hàm số $y$ vừa tìm được.
  ]
]

#bt()[
  Một người bắt đầu mở một vòi nước vào một cái bể đã chứa sẵn $4$ m$""^3$ nước, mỗi giờ chảy được $1$ m$""^3$.
  #listEX()[
    + Tính thể tích $y$ (m$""^3$) của nước có trong bể sau $x$ giờ.
    + Vẽ đồ thị của hàm số $y$ theo biến số $x$.
  ]
]
