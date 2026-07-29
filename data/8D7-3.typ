#import "../style/lib.typ": *
#show: appearance

#section()[Khái niệm hàm số và đồ thị của hàm số]

#subsection()[Lý thuyết]

#subsubsection()[Khái niệm hàm số]

#dn(tieude: "Hàm số")[
  Nếu đại lượng $y$ phụ thuộc vào đại lượng thay đổi $x$ sao cho với mỗi giá trị của $x$ ta luôn xác định được chỉ một giá trị tương ứng của $y$ thì $y$ được gọi là _hàm số_ của $x$ và $x$ gọi là _biến số_.
]

#luuy()[
  - Khi $y$ là hàm số của $x$, ta thường viết $y = f(x)$, $y = g(x)$,... Chẳng hạn, với hàm số $y = 2x+ 1$, ta còn viết $y = f(x) = 2x + 1$. Khi đó, thay cho câu "Khi $x$ bằng 1 thì giá trị tương ứng của $y$ là $3$", ta viết ngắn gọn là $f(1) = 3$.
  - Một hàm số có thể có nhiều biến số. Chẳng hạn, $y=f(x,y)=x+y$. Trong chương trình học lớp 8, chúng ta chỉ tìm hiểu hàm một biến.
]

#vd()[
  Cho hàm số $y = f(x) = 3x$. Điền vào chỗ trống để hoàn thành bảng các giá trị tương ứng của $y$ khi $x$ nhận các giá trị lần lượt là $-2$; $-1$; $0$; $1$; $2$:
  #align(center)[
    #table(
      columns: 6,
      align: center,
      [$x$], [$-2$], [$-1$], [$0$], [$1$], [$2$],
      [$y = f(x) = 3x$], [ ], [$-3$], [ ], [ ], [$6$],
    )
  ]
]

#vd()[
  Viết công thức tính thời gian di chuyển $t$ (giờ) của một ô tô chuyển động trên quãng đường dài $150$ km với vận tốc không đổi $v$ (km/h). Thời gian di chuyển $t$ có phải là một hàm số của vận tốc $v$ không? Tính giá trị của $t$ khi $v = 60$ (km/h).
  #loigiai()[
    #dotlineEX(4)
  ]
]

#subsubsection()[Mặt phẳng toạ độ]

#dn(tieude: "Mặt phẳng toạ độ")[
  #immini()[
    Trên mặt phẳng, ta vẽ hai trục số $O x$, $O y$ vuông góc với nhau và cắt nhau tại gốc $O$ của mỗi trục số.

    Các trục $O x$ và $O y$ gọi là các trục toạ độ, $O x$ thường vẽ nằm ngang và gọi là _trục hoành_, $O y$ thường vẽ thẳng đứng và gọi là _trục tung_, giao điểm $O$ gọi là gốc toạ độ.

    Mặt phẳng có hệ trục toạ độ $O x y$ gọi là _mặt phẳng toạ độ_.

    Trục toạ độ $O x y$ chia mặt phẳng toạ độ thành $4$ _góc phần tư_ (góc phần tư thứ I, II, III, IV).
  ][
    #set text(size: 10pt)
    #import "@preview/cetz:0.5.2"
    #import "@preview/cetz-plot:0.1.4": plot
    #cetz.canvas(length: 1cm, {
      import cetz.draw: *
      set-style(
        stroke: (thickness: 0.7pt, cap: "round"),
        content: (padding: 3pt),
        axes: (
          shared-zero: false,
          x: (mark: (end: "stealth", fill: black)),
          y: (mark: (end: "stealth", fill: black)),
        ),
      )
      plot.plot(
        size: (7, 5),
        axis-style: "school-book",
        x-tick-step: 1,
        y-tick-step: 1,
        x-format: value => if value != 0 { [#value] },
        y-format: value => if value != 0 { [#value] },
        x-min: -3.5,
        x-max: 3.5,
        y-min: -2.5,
        y-max: 2.5,
        name: "plot",
        {
          plot.add(
            ((0, 0),),
            style: (stroke: none),
            mark: "o",
            mark-style: (fill: black, stroke: none),
            mark-size: 0pt,
          )
          plot.annotate({
            content((0, 0), [$O$], anchor: "north-east")
            content((2, 1.5), [I])
            content((-2, 1.5), [II])
            content((-2, -1.5), [III])
            content((2, -1.5), [IV])
          })
        },
      )
    })
  ]
]

#luuy()[
  - Trên cùng một trục ($O x$ hoặc $O y$), các đơn vị phải cách đều nhau. Chẳng hạn, trên trục $O x$, khoảng cách từ $0$ đến $1$, từ $1$ đến $2$, từ $2$ đến $3$,... phải bằng nhau.
  - Hai trục $O x$ và $O y$ có thể chọn đơn vị dài khác nhau (chẳng hạn $1$ đơn vị trên $O x$ dài $1$ cm nhưng $1$ đơn vị trên $O y$ dài $2$ cm).
  - Ta thường vẽ đơn vị trên hai trục bằng nhau cho dễ nhìn và dễ tính toán.
]

#dn(tieude: "Toạ độ điểm trong mặt phẳng toạ độ")[
  #immini()[
    Trong mặt phẳng toạ độ, mỗi điểm M xác định duy nhất một cặp số $(x_0; y_0)$ và mỗi cặp số $(x_0; y_0)$ xác định duy nhất một điểm $M$.

    Cặp số $(x_0; y_0)$ gọi là _toạ độ_ của điểm $M$ và kí hiệu là $M(x_0; y_0)$, trong đó $x_0$ là _hoành độ_ và $y_0$ là tung độ của điểm $M$.
  ][
    #set text(size: 10pt)
    #import "@preview/cetz:0.5.2"
    #import "@preview/cetz-plot:0.1.4": plot
    #cetz.canvas(length: 1cm, {
      import cetz.draw: *
      set-style(
        stroke: (thickness: 0.7pt, cap: "round"),
        content: (padding: 3pt),
        axes: (
          shared-zero: false,
          x: (mark: (end: "stealth", fill: black)),
          y: (mark: (end: "stealth", fill: black)),
        ),
      )
      plot.plot(
        size: (5, 5),
        axis-style: "school-book",
        x-tick-step: 1,
        y-tick-step: 1,
        x-format: value => if value != 0 { [#value] },
        y-format: value => if value != 0 { [#value] },
        x-min: -2.5,
        x-max: 2.5,
        y-min: -1.5,
        y-max: 3.5,
        name: "plot",
        {
          plot.add(
            ((0, 0),),
            style: (stroke: none),
            mark: "o",
            mark-style: (fill: black, stroke: none),
            mark-size: 0pt,
          )
          plot.annotate({
            content((0, 0), [$O$], anchor: "north-east")
            let M = (1.5, 2.5)
            circle(M, radius: 1.5pt, stroke: none, fill: black)
            line(M, (M.at(0), 0), stroke: (dash: "dashed"))
            line(M, (0, M.at(1)), stroke: (dash: "dashed"))
            content(M, [$M$], anchor: "south-west")
            content((0, M.at(1)), [$y_0$], anchor: "east", padding: 9pt)
            content((M.at(0), 0), [$x_0$], anchor: "north", padding: 9pt)
          })
        },
      )
    })
  ]
]

#luuy()[
  - Thay cho cách viết "toạ độ của điểm $M$ là $(x_0;y_0)$", ta có thể kí hiệu ngắn gọn là "$M(x_0;y_0)$".
  - Khi viết toạ độ, cần viết dấu chấm phẩy ở giữa hoành độ và tung độ, tránh nhầm lẫn với dấu phẩy thập phân.
]

#vd()[
  #immini()[
    Tìm toạ độ các điểm $O$, $A$, $B$ trong mặt phẳng toạ độ như hình bên.
  ][
    #set text(size: 10pt)
    #import "@preview/cetz:0.5.2"
    #import "@preview/cetz-plot:0.1.4": plot
    #cetz.canvas(length: 1cm, {
      import cetz.draw: *
      set-style(
        stroke: (thickness: 0.7pt, cap: "round"),
        content: (padding: 3pt),
        axes: (
          shared-zero: false,
          x: (mark: (end: "stealth", fill: black)),
          y: (mark: (end: "stealth", fill: black)),
        ),
      )
      let A = (2, -3)
      let B = (-2, 1)
      let O = (0, 0)
      plot.plot(
        size: (6, 5),
        axis-style: "school-book",
        x-tick-step: 1,
        y-tick-step: 1,
        x-format: value => none,
        y-format: value => none,
        x-min: -2.5,
        x-max: 3.5,
        y-min: -3.5,
        y-max: 1.5,
        name: "plot",
        {
          plot.add(
            (A, B),
            style: (stroke: none),
            mark: "o",
            mark-style: (fill: black, stroke: none),
            mark-size: 3pt,
          )
          plot.annotate({
            content(O, [$O$], anchor: "north-east")
            line(B, (B.at(0), 0), stroke: (dash: "dashed"))
            line(B, (0, B.at(1)), stroke: (dash: "dashed"))
            content((0, B.at(1)), [$1$], anchor: "west", padding: 9pt)
            content((B.at(0), 0), [$-2$], anchor: "north", padding: 9pt)
            content(B, [$B$], anchor: "south-east")
            line(A, (A.at(0), 0), stroke: (dash: "dashed"))
            line(A, (0, A.at(1)), stroke: (dash: "dashed"))
            content((0, A.at(1)), [$-3$], anchor: "east", padding: 9pt)
            content((A.at(0), 0), [$2$], anchor: "south", padding: 9pt)
            content(A, [$A$], anchor: "north-west")
          })
        },
      )
    })
  ]
  #loigiai()[
    #dotlineEX(1)
  ]
]

#vd()[
  Vẽ mặt phẳng toạ độ $O x y$ và xác định các điểm $R(-3;-2)$ và $S(frac(5, 3);2)$ trong mặt phẳng toạ độ đó.
  #loigiai()[
    #dotlineEX(9)
  ]
]

#subsubsection()[Đồ thị của hàm số]

#dn(tieude: "Đồ thị của hàm số")[
  _Đồ thị của hàm số_ $y = f(x)$ là tập hợp tất cả các điểm biểu diễn các cặp giá trị tương ứng $(x; y)$ trên mặt phẳng toạ độ.
]

#bt()[
  Vẽ đồ thị của hàm số $y = f(x)$ cho bởi bảng sau:
  #align(center)[
    #table(
      columns: 5,
      align: center,
      [$x$], [$-3$], [$-1$], [$1$], [$2,5$],
      [$y$], [$4$], [$3,5$], [$1$], [$0$],
    )
  ]
  #loigiai()[
    #dotlineEX(10)
  ]
]

#subsection()[Bài tập tự luận]

#bt()[
  Nhiệt độ $T(°C)$ tại các thời điểm $t$ (giờ) của Thành phố Hồ Chí Minh vào một ngày được cho trong bảng sau:
  #align(center)[
    #table(
      columns: 6,
      align: center,
      [$T$ (giờ)], [0], [4], [8], [12], [16],
      [$T(°C)$], [23], [23], [24], [26], [27],
    )
  ]
  #listEX()[
    + Hãy cho biết nhiệt độ của Thành phố Hồ Chí Minh vào thời điểm 12 giờ trưa ngày hôm đó;
    + Với mỗi giá trị của $t$, ta xác định được bao nhiêu giá trị tương ứng của $T$?
  ]
]

#bt()[
  Viết công thức tính thời gian di chuyển $t$ (giờ) của một ô tô chuyển động trên quãng đường dài 120km với vận tốc không đổi $v$ (km/h). Thời gian di chuyển $t$ có phải là một hàm số của vận tốc $v$ không? Tính giá trị của $t$ khi $v = 40$ (km/h).
]

#bt()[
  Khi đo nhiệt độ, ta có công thức đổi từ đơn vị độ C (Celsius) sang đơn vị độ F (Fahrenheit) như sau: $F = 1,8C + 32$.

  Theo em, $F$ có phải là một hàm số theo biến số $C$ hay không? Giải thích.
]

#bt()[
  Các giá trị tương ứng của hai đại lượng $x$ và $y$ được cho trong bảng sau:
  #align(center)[
    #table(
      columns: 9,
      align: center,
      [$x$], [$-3$], [$-8$], [$-6$], [$-2$], [$3$], [$-8$], [$-6$], [$9$],
      [$y$], [$1$], [$5$], [$10$], [$9$], [$7$], [$5$], [$3$], [$1$],
    )
  ]
  Đại lượng $y$ có phải là hàm số của đại lượng $x$ không? Giải thích.

  *Hướng dẫn giải:* Đại lượng $y$ không là hàm số của đại lượng $x$ vì với giá trị của $x = -6$ ta xác định được hai giá trị của $y$ là $10$ và $3$.
]

#bt()[
  Các giá trị tương ứng của hai đại lượng $x$ và $y$ được cho trong bảng sau:
  #align(center)[
    #table(
      columns: 9,
      align: center,
      [$x$], [$-4$], [$-3$], [$-2$], [$-1$], [$1$], [$2$], [$3$], [$4$],
      [$y$], [$15$], [$13$], [$14$], [$12$], [$1$], [$2$], [$3$], [$4$],
    )
  ]
  Đại lượng $y$ có phải là hàm số của đại lượng $x$ không? Giải thích.
]

#bt()[
  Các giá trị tương ứng của hai đại lượng $x$ và $y$ được cho trong bảng sau:
  #align(center)[
    #table(
      columns: 9,
      align: center,
      [$x$], [$-10$], [$-8$], [$-4$], [$-2$], [$0$], [$-2$], [$4$], [$6$],
      [$y$], [$1$], [$3$], [$5$], [$7$], [$7$], [$5$], [$3$], [$1$],
    )
  ]
  Đại lượng $y$ có phải là hàm số của đại lượng $x$ không? Giải thích.
]

#bt()[
  Các giá trị tương ứng của hai đại lượng $x$ và $y$ được cho trong bảng sau:
  #align(center)[
    #table(
      columns: 7,
      align: center,
      [$x$], [$-3$], [$-2$], [$-1$], [$1$], [$2$], [$3$],
      [$y$], [$-6$], [$-4$], [$-2$], [$2$], [$4$], [$6$],
    )
  ]
  Đại lượng $y$ có phải là hàm số của đại lượng $x$ không?
]

#bt()[
  Cho hàm số $y = f(x) = x^2$.
  #listEX()[
    + Tính $f(2)$; $f(-4)$;
    + Lập bảng giá trị của hàm số với $x$ lần lượt bằng $-3$; $-2$; $-1$; $0$; $1$; $2$; $3$.
  ]
]

#bt()[
  Cho hàm số $y = f(x) = 2x^2 - 3$.
  #listEX()[
    + Tính $f(-1)$; $f(-3)$;
    + Lập bảng giá trị của hàm số với $x$ lần lượt bằng: $-2$; $0$; $1$; $2$; $3$.
  ]
]

#bt()[
  Các giá trị tương ứng của hai đại lượng $x$ và $y$ được cho trong bảng sau:
  #align(center)[
    #table(
      columns: 9,
      align: center,
      [$x$], [$1$], [$2$], [$3$], [$4$], [$5$], [$6$], [$7$], [$8$],
      [$y$], [$9$], [$9$], [$9$], [$9$], [$9$], [$9$], [$9$], [$9$],
    )
  ]
  Đại lượng $y$ có phải là hàm số của đại lượng $x$ không? Giải thích.
]

#bt()[
  Các giá trị tương ứng của hai đại lượng $x$ và $y$ được cho trong bảng sau:
  #align(center)[
    #table(
      columns: 8,
      align: center,
      [$x$], [$-5$], [$-3$], [$-1$], [$0$], [$1$], [$3$], [$5$],
      [$y$], [$25$], [$9$], [$1$], [$0$], [$1$], [$9$], [$25$],
    )
  ]
  Đại lượng $y$ có phải là hàm số của đại lượng $x$ không? Giải thích.
]

#bt()[
  Các giá trị tương ứng của hai đại lượng $x$ và $y$ được cho trong bảng sau:
  #align(center)[
    #table(
      columns: 9,
      align: center,
      [$x$], [$-3$], [$-8$], [$-6$], [$-2$], [$3$], [$-8$], [$-6$], [$9$],
      [$y$], [$1$], [$5$], [$10$], [$9$], [$7$], [$5$], [$3$], [$1$],
    )
  ]
  Đại lượng $y$ có phải là hàm số của đại lượng $x$ không? Giải thích.
]

#bt()[
  Các giá trị tương ứng của hai đại lượng $x$ và $y$ được cho trong bảng sau:
  #align(center)[
    #table(
      columns: 9,
      align: center,
      [$x$], [$1$], [$2$], [$3$], [$4$], [$5$], [$6$], [$7$], [$8$],
      [$y$], [$9$], [$9$], [$9$], [$9$], [$9$], [$9$], [$9$], [$9$],
    )
  ]
  Đại lượng $y$ có phải là hàm số của đại lượng $x$ không? Giải thích.
]

#bt()[
  Các giá trị tương ứng của hai đại lượng $x$ và $y$ được cho trong bảng sau:
  #align(center)[
    #table(
      columns: 8,
      align: center,
      [$x$], [$-5$], [$-3$], [$-1$], [$0$], [$1$], [$3$], [$5$],
      [$y$], [$25$], [$9$], [$1$], [$0$], [$1$], [$9$], [$25$],
    )
  ]
  Đại lượng $y$ có phải là hàm số của đại lượng $x$ không? Giải thích.
]

#bt()[
  Cho hàm số $y = f(x) = 4x$.
  #listEX()[
    + Tính $f(1)$; $f(-2)$; $f(5)$; $f(3/4)$; $f((-5)/8)$;
    + Lập bảng các giá trị tương ứng của $y$ khi $x$ lần lượt nhận các giá trị: $-3$; $-2$; $-1$; $0$; $1$; $2$; $3$.
  ]
]

#bt()[
  Cho hàm số $y = f(x) = x^2 - 3$. Tính $f(-3)$; $f(-2)$; $f(-1)$; $f(0)$; $f(2)$; $f(4)$.
]

#bt()[
  Khối lượng $m$ (g) của một thanh sắt có khối lượng riêng là $7,8$ $"kg/dm"^3$ tỉ lệ thuận với thể tích $V$ (cm$""^3$) theo công thức $m = 7,8V$. Đại lượng $m$ có phải là hàm số của đại lượng $V$ không? Nếu có, tính $m(10)$; $m(20)$; $m(30)$; $m(35)$; $m(40)$; $m(50)$; $m(60)$.
]

#bt()[
  Thời gian $t$ (giờ) của một vật chuyển động đều trên quãng đường 20 km tỉ lệ nghịch với tốc độ $v$ (km/h) của nó theo công thức $t = 20/v$. Tính và lập bảng các giá trị tương ứng của $t$ khi $v$ lần lượt nhận các giá trị $5$; $10$; $20$; $25$; $40$; $80$.
]

#bt()[
  #immini()[
    Tìm tọa độ của các điểm $O$, $E$, $F$ trong hình bên.
  ][
    #set text(size: 10pt)
    #import "@preview/cetz:0.5.2"
    #import "@preview/cetz-plot:0.1.4": plot
    #cetz.canvas(length: 0.8cm, {
      import cetz.draw: *
      set-style(
        stroke: (thickness: 0.7pt, cap: "round"),
        content: (padding: 3pt),
        axes: (
          shared-zero: false,
          x: (mark: (end: "stealth", fill: black)),
          y: (mark: (end: "stealth", fill: black)),
        ),
      )
      let F = (3, -2)
      let E = (-3, 0)
      let O = (0, 0)
      plot.plot(
        size: (7, 4),
        axis-style: "school-book",
        x-tick-step: 1,
        y-tick-step: 1,
        x-format: value => none,
        y-format: value => none,
        x-min: -3.5,
        x-max: 3.5,
        y-min: -2.5,
        y-max: 1.5,
        name: "plot",
        {
          plot.add(
            (E, F),
            style: (stroke: none),
            mark: "o",
            mark-style: (fill: black, stroke: none),
            mark-size: 3pt,
          )
          plot.annotate({
            content(O, [$O$], anchor: "north-east")
            circle(F, radius: 1.5pt, stroke: none, fill: black)
            line(F, (F.at(0), 0), stroke: (dash: "dashed"))
            line(F, (0, F.at(1)), stroke: (dash: "dashed"))
            content(F, [$F$], anchor: "north-west")
            content((0, F.at(1)), [$-2$], anchor: "east", padding: 9pt)
            content((F.at(0), 0), [$3$], anchor: "south", padding: 9pt)
            circle(E, radius: 1.5pt, stroke: none, fill: black)
            content(E, [$E$], anchor: "north", padding: 8pt)
          })
        },
      )
    })
  ]
]

#bt()[
  Vẽ một hệ trục tọa độ $O x y$ và đánh dấu các điểm $A(2; 0)$, $B(0; -3)$, $C(3; -4)$, $D(1; 3)$.
]

#bt()[
  Vẽ một hệ trục tọa độ $O x y$ và đánh dấu các điểm $E(-3; 0)$, $F(0; 2)$, $M(2; 1)$, $N(3; 1)$.
]

#bt()[
  Vẽ một hệ trục tọa độ $O x y$ và đánh dấu các điểm $A(-2; 0)$, $B(3; 0)$, $C(4; 0)$.
  #listEX()[
    + Em có nhận xét gì về các điểm $A$, $B$, $C$?;
    + Em hãy cho biết một điểm bất kì trên trục hoành có tung độ bằng bao nhiêu.
  ]
]

#bt()[
  Vẽ một hệ trục tọa độ $O x y$ và đánh dấu các điểm $M(0; -2)$, $N(0; 1)$, $P(0; 4)$.
  #listEX()[
    + Em có nhận xét gì về các điểm $M$, $N$, $P$?;
    + Em hãy cho biết một điểm bất kì trên trục tung có hoành độ bằng bao nhiêu?
  ]
]

#bt()[
  Vẽ một hệ trục $O x y$ và đánh dấu các điểm $A(-3; 3)$, $B(3; 3)$, $C(3; -3)$, $D(-3; -3)$. Nêu nhận xét về các cạnh và các góc của tứ giác $A B C D$.
]

#bt()[
  Vẽ đồ thị hàm số được cho bởi bảng sau:
  #align(center)[
    #table(
      columns: 6,
      align: center,
      [$x$], [$-3$], [$-1$], [$0$], [$1$], [$2$],
      [$y$], [$-6$], [$-2$], [$0$], [$2$], [$4$],
    )
  ]
]

#bt()[
  Trong những điểm sau, tìm điểm thuộc đồ thị của hàm số $y = 4x$:

  $M(-1; -4)$; $N(1; -4)$; $P(1/4; 1)$.
]

#bt()[
  Cho $y$ là hàm số của biến số $x$. Giá trị tương ứng của $x$, $y$ được cho trong bảng sau:
  #align(center)[
    #table(
      columns: 6,
      align: center,
      [$x$], [$-2$], [$-1$], [$0$], [$1$], [$2$],
      [$y$], [$-6$], [$-3$], [$0$], [$3$], [$6$],
    )
  ]
  #listEX()[
    + Vẽ hệ trục tọa độ $O x y$ và xác định các điểm, biểu diễn các cặp giá trị $(x; y)$ tương ứng có trong bảng trên;
    + Em có nhận xét gì về các điểm vừa xác định trong câu 1?
  ]
]
