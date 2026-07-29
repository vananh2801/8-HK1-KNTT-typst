#import "../style/lib.typ": *
#show: appearance

#section()[Hàm số bậc nhất và đồ thị của hàm số bậc nhất]

#subsection()[Lý thuyết]

#subsubsection()[Hàm số bậc nhất]

#dn(tieude: "Hàm số bậc nhất")[
  Hàm số bậc nhất là hàm số cho bởi công thức $y = a x + b$, trong đó $a$, $b$ là các số cho trước và $a != 0$.
]

#vd()[
  Nếu $y$ tỉ lệ thuận với $x$, tức là $y = k x$ ($k != 0$), thì $y$ là một hàm số bậc nhất của $x$ với $a = k$, $b = 0$.
]

#vd()[
  Hàm số $y = -2x + 3$ là một hàm số bậc nhất với $a = -2$; $b = 3$.
]

#vd()[
  Trong các hàm số sau, những hàm số nào là hàm số bậc nhất?
  #listEX(socot: 3)[
    + $y = 3x - 2$;
    + $y =-2x$;
    + $y = 2x^2 + 3$;
    + $y = 3(x-1)$;
    + $y = 0x + 1$.
  ]
  #loigiai()[
    #dotlineEX(4)
  ]
]

#vd()[
  Cho hàm số bậc nhất $y = -3x + 2$.
  #listEX(socot: 1)[
    + Hoàn thành bảng giá trị sau:
      #align(center)[
        #table(
          columns: 6,
          align: center,
          [$x$], [$-2$], [$-1$], [$0$], [$1$], [$2$],
          [$y = -3x + 2$], [?], [?], [?], [?], [?],
        )
      ]
    + Tìm $x$ sao cho $y = 12$.
  ]
  #loigiai()[
    #dotlineEX(5)
  ]
]

#subsubsection()[Đồ thị của hàm số bậc nhất]

#dl(tieude: "Đồ thị của hàm số bậc nhất")[
  Đồ thị của hàm số $y = a x + b$ ($a != 0$) là một _đường thẳng_.
]

#luuy()[
  - Đồ thị của hàm số $y = a x + b$ ($a != 0$) còn được gọi là _đường thẳng_ $y = a x + b$.
]

#vd()[
  Đồ thị của hai hàm số bậc nhất $y=2x+4$ và $y=x$ trong cùng một mặt phẳng toạ độ:
  #align(center)[
    #set text(size: 10pt)
    #import "@preview/cetz:0.5.2"
    #import "@preview/cetz-plot:0.1.4": plot
    #cetz.canvas(length: 1.2cm, {
      import cetz.draw: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), content: (padding: 3pt))
      set-style(
        axes: (
          shared-zero: false,
          x: (mark: (end: "stealth", fill: black)),
          y: (mark: (end: "stealth", fill: black)),
        ),
      )
      plot.plot(
        size: (6, 7),
        axis-style: "school-book",
        x-tick-step: 1,
        y-tick-step: 1,
        x-format: value => if value != 0 { [#value] },
        y-format: value => if value != 0 { [#value] },
        x-min: -3.5,
        x-max: 2.5,
        y-min: -1.5,
        y-max: 5.5,
        name: "plot",
        {
          plot.add(
            domain: (-3.5, 2.5),
            x => 2 * x + 4,
            style: (stroke: (paint: blue)),
          )
          plot.add(
            domain: (-3.5, 2.5),
            x => x,
            style: (stroke: (paint: red)),
          )
          plot.add(
            ((0, 4), (-2, 0)),
            style: (stroke: none),
            mark: "o",
            mark-style: (fill: black, stroke: none),
            mark-size: 3pt,
          )
          plot.annotate({
            let O = (0, 0)
            let P = (0, 4)
            let Q = (-2, 0)
            content(O, anchor: -45deg, [$O$])
            content(Q, anchor: -45deg, [$Q$])
            content(P, anchor: 180deg, [$P$])
            content((-1.3, 1.5), [$y=2x+4$], angle: 65deg, anchor: "south")
            content((1, 1.8), [$y=x$], angle: 45deg, anchor: "north")
          })
        },
      )
    })
  ]
]

#phuongphap(tieude: "Cách vẽ đồ thị của hàm số bậc nhất")[
  Ta đã biết đồ thị của hàm số bậc nhất $y = a x + b$ ($a != 0$) là một đường thẳng. Do đó, để vẽ đồ thị này, ta chỉ cần xác định được hai điểm phân biệt nào đó thuộc đồ thị rồi vẽ đường thẳng đi qua hai điểm đó.

  Ta xét hai trường hợp:
  - #immini()[
      Khi $b = 0$ thì $y = a x$. Đồ thị của hàm số $y = a x$ là đường thẳng đi qua gốc toạ độ $O(0; 0)$ và điểm $A(1; a)$ như hình bên.
    ][
      #set text(size: 10pt)
      #import "@preview/cetz:0.5.2"
      #import "@preview/cetz-plot:0.1.4": plot
      #cetz.canvas(length: 1cm, {
        import cetz.draw: *
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
          x-ticks: ((1, [$1$]),),
          y-ticks: ((2, [$a$]),),
          x-min: -1.5,
          x-max: 1.5,
          y-min: -1,
          y-max: 3,
          name: "plot",
          {
            plot.add(
              domain: (-0.8, 2.5),
              x => 2 * x,
              style: (stroke: (paint: blue)),
            )
            plot.add(
              ((1, 2),),
              style: (stroke: none),
              mark: "o",
              mark-style: (fill: black, stroke: none),
              mark-size: 3pt,
            )
            plot.annotate({
              let O = (0, 0)
              let A = (1, 2)
              content(O, anchor: -45deg, [$O$])
              line(A, (A.at(0), 0), stroke: (dash: "dashed"))
              line(A, (0, A.at(1)), stroke: (dash: "dashed"))
              content(A, anchor: -55deg, [$A$])
            })
          },
        )
      })
    ]
  - #immini()[
      Khi $b != 0$ ta thường xác định hai điểm đặc biệt trên đồ thị là giao của đồ thị với hai trục toạ độ như sau:
      - Cho $x = 0$ thì $y = b$, ta được điểm $P(0; b)$ thuộc trục tung $O y$.
      - Cho $y=0$ thì $x=-b/a$, ta được điểm $Q(-b/a;0)$ thuộc trục hoành $O x$.
      - Vẽ đường thẳng đi qua hai điểm $P$, $Q$, ta được đồ thị của hàm số $y=a x+b$ như hình bên.
    ][
      #set text(size: 10pt)
      #import "@preview/cetz:0.5.2"
      #import "@preview/cetz-plot:0.1.4": plot
      #cetz.canvas(length: 1cm, {
        import cetz.draw: *
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
              domain: (-0.8, 2.5),
              x => -2 * x + 2,
              style: (stroke: (paint: blue)),
            )
            plot.add(
              ((0, 2), (1, 0)),
              style: (stroke: none),
              mark: "o",
              mark-style: (fill: black, stroke: none),
              mark-size: 3pt,
            )
            plot.annotate({
              let O = (0, 0)
              let P = (0, 2)
              let Q = (1, 0)
              content(O, anchor: -45deg, [$O$])
              content(Q, anchor: -135deg, [$Q$])
              content(Q, anchor: 65deg, [$-b/a$], padding: 6pt)
              content(P, anchor: 180deg, [$P$])
              content(P, anchor: 0deg, [$b$])
            })
          },
        )
      })
    ]
]

#vd()[
  Vẽ đồ thị của các hàm số bậc nhất $y=-2x+3$ và $y =1/2 x$ trên cùng một mặt phẳng toạ độ.
  #loigiai()[
    #dotlineEX(10)
  ]
]

#subsubsection()[Bài tập tự luận]

#bt()[
  Vẽ các đồ thị của các hàm số:
  #listEX()[
    + $y = x$;
    + $y = -2x$;
    + $y = 1/2 x$;
    + $y = -3x$;
    + $y = 3/2 x$.
  ]
]

#bt()[
  Các đồ thị sau đây là đồ thị của hàm số nào?
  #listEX()[
    + #box[
        #set text(size: 10pt)
        #import "@preview/cetz:0.5.2"
        #import "@preview/cetz-plot:0.1.4": plot
        #cetz.canvas(length: 1cm, {
          import cetz.draw: *
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
            x-ticks: ((1, [$1$]),),
            y-ticks: ((2, [$2$]),),
            x-min: -1.5,
            x-max: 1.5,
            y-min: -1,
            y-max: 3,
            name: "plot",
            {
              plot.add(
                domain: (-0.8, 2.5),
                x => 2 * x,
                style: (stroke: (paint: blue)),
              )
              plot.add(
                ((1, 2),),
                style: (stroke: none),
                mark: "o",
                mark-style: (fill: black, stroke: none),
                mark-size: 3pt,
              )
              plot.annotate({
                let O = (0, 0)
                let A = (1, 2)
                content(O, anchor: -45deg, [$O$])
                line(A, (A.at(0), 0), stroke: (dash: "dashed"))
                line(A, (0, A.at(1)), stroke: (dash: "dashed"))
                content(A, anchor: -55deg, [$A$])
              })
            },
          )
        })
      ]
    + #box[
        #set text(size: 10pt)
        #import "@preview/cetz:0.5.2"
        #import "@preview/cetz-plot:0.1.4": plot
        #cetz.canvas(length: 1cm, {
          import cetz.draw: *
          set-style(stroke: (thickness: 0.7pt, cap: "round"), content: (padding: 6pt))
          set-style(
            axes: (
              shared-zero: false,
              x: (mark: (end: "stealth", fill: black)),
              y: (mark: (end: "stealth", fill: black)),
            ),
          )
          plot.plot(
            size: (3 * 4 / 5, 4),
            axis-style: "school-book",
            x-tick-step: none,
            y-tick-step: none,
            x-min: -1.5,
            x-max: 1.5,
            y-min: -3.5,
            y-max: 1.5,
            name: "plot",
            {
              plot.add(
                domain: (-0.8, 2.5),
                x => -3 * x,
                style: (stroke: (paint: blue)),
              )
              plot.add(
                ((1, -3),),
                style: (stroke: none),
                mark: "o",
                mark-style: (fill: black, stroke: none),
                mark-size: 3pt,
              )
              plot.annotate({
                let O = (0, 0)
                let A = (1, -3)
                content(O, anchor: 45deg, [$O$])
                line(A, (A.at(0), 0), stroke: (dash: "dashed"))
                line(A, (0, A.at(1)), stroke: (dash: "dashed"))
                content(A, anchor: -135deg, [$A$])
                content((A.at(0), 0), [$1$], anchor: "south")
                content((0, A.at(1)), [$-3$], anchor: "east")
              })
            },
          )
        })
      ]
    + #box[
        #set text(size: 10pt)
        #import "@preview/cetz:0.5.2"
        #import "@preview/cetz-plot:0.1.4": plot
        #cetz.canvas(length: 1cm, {
          import cetz.draw: *
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
            x-ticks: ((1, [$1$]),),
            y-ticks: ((1, [$1$]),),
            x-min: -1.5,
            x-max: 1.5,
            y-min: -1,
            y-max: 3,
            name: "plot",
            {
              plot.add(
                domain: (-0.8, 2.5),
                x => x,
                style: (stroke: (paint: blue)),
              )
              plot.add(
                ((1, 1),),
                style: (stroke: none),
                mark: "o",
                mark-style: (fill: black, stroke: none),
                mark-size: 3pt,
              )
              plot.annotate({
                let O = (0, 0)
                let A = (1, 1)
                content(O, anchor: -45deg, [$O$])
                line(A, (A.at(0), 0), stroke: (dash: "dashed"))
                line(A, (0, A.at(1)), stroke: (dash: "dashed"))
                content(A, anchor: -55deg, [$A$])
              })
            },
          )
        })
      ]
  ]
]

#bt()[
  Cho hai hàm số $y = f(x) = -x$ và $y = g(x) = -x + 2$
  #listEX()[
    + Thay dấu ? bằng số thích hợp.
      #align(center)[
        #table(
          columns: 6,
          align: center + horizon,
          [$x$], [$-2$], [$-1$], [$0$], [$1$], [$2$],
          [$y = f(x) = -x$], [?], [?], [?], [?], [?],
          [$y = f(x) = -x + 2$], [?], [?], [?], [?], [?],
        )
      ]
    + Trên cùng một mặt phẳng tọa độ, vẽ đồ thị hàm số $y = f(x)$ và biểu diễn các điểm có tọa độ thỏa mãn hàm số $y = g(x)$ có trong bảng trên.
    + Kiểm tra xem các điểm thuộc đồ thị hàm số $y = g(x)$ vẽ ở câu b có thẳng hàng không? Và có quan hệ như thế nào với đồ thị hàm số $y = f(x)$?
      Ta suy ra tính chất của đồ thị hàm số bậc nhất như sau:\
      Đồ thị của hàm số $y = a x + b$ $(a, b != 0)$ là một đường thẳng:
      – Cắt trục tung tại điểm có tung độ bằng $b$;
      – Song song với đường thẳng $y = a x$.
  ]
]


#bt()[
  Tìm các hàm số bậc nhất trong các hàm số sau đây và xác định hệ số $a$, $b$ của chúng.
  #listEX()[
    + $y = 3x - 7$.
    + $y = -3x + 4$.
    + $y = 4 - 2x$.
    + $y = -6 - x$.
    + $y = 2x^2 - 7$.
    + $y = -3 + x^2$.
    + $y = 3x$.
    + $y = -0","5x$.
    + $y = sqrt(2)x - 3$.
    + $y = sqrt(2)x^3 - 1$.
    + $y = 5 - sqrt(3)x$.
    + $y = (sqrt(5) + 1)x - 7$.
  ]
]

#bt()[
  Với giá trị nào của $m$ thì mỗi hàm số sau đây là hàm số bậc nhất?
  #listEX()[
    + $y = (m-2)x + 3$.
    + $y = (m-7)x + 5$.
    + $y = (-2m+8)x - 3m + 1$.
    + $y = (6m-1)x + 4m$.
    + $y = 6 - 2m x$.
    + $y = 3m - 1 + (2m-5)x$.
    + $y = (10-5m)x - 2m + 1$.
    + $y = (2/5 m - 8)x + 2$.
    + $y = (7m-4)x + 2024$.
    + $y = (1/3 - 3m)x + 3 - m$.
  ]
]

#bt()[
  Cho hàm số: $(D_1): y = 3x - 1$; $(D_2): y = x + 3$. Vẽ $(D_1)$ và $(D_2)$ trên cùng mặt phẳng tọa độ.
]

#bt()[
  Cho hai hàm số $y = 2x - 5$ có đồ thị $(d)$ và $y = -1/2 x$ có đồ thị $(d')$. Vẽ $(d)$ và $(d')$ trên cùng mặt phẳng tọa độ.
]

#bt()[
  Vẽ đồ thị các hàm số sau đây trên cùng một mặt phẳng tọa độ: $y = 2x - 1$; $y = -x + 5$.
]

#bt()[
  Vẽ đồ thị các hàm số sau đây trên cùng mặt phẳng tọa độ:

  $y = x$; $y = x + 2$; $y = -x$; $y = -x + 2$.
]

#bt()[
  Để đổi nhiệt độ từ độ $F$ (Fahrenheit) sang độ $C$ (Celsius), ta dùng công thức
  $ C = 5/9 (F - 32). $
  #listEX()[
    + $C$ có phải là hàm số bậc nhất theo biến số $F$ không?
    + Hãy tính $C$ khi $F = 32$ và tính $F$ khi $C = 100$.
  ]
]

#bt()[
  Gọi $C$ và $r$ lần lượt là chu vi và bán kính của một đường tròn. Hãy chứng tỏ $C$ là một hàm số bậc nhất theo biến số $r$. Tìm hệ số $a$, $b$ của hàm số này.
]

#bt()[
  Một người đi bộ trên đường thẳng với tốc độ $v$ (km/h). Gọi $s$ (km) là quãng đường đi được trong $t$ (giờ).
  #listEX()[
    + Lập công thức tính $s$ theo $t$.
    + Vẽ đồ thị của hàm số $s$ theo biến số $t$ khi $v = 4$.
  ]
]

#bt()[
  Một xí nghiệp may cần thanh lý $1500$ bộ quần áo. Biết mỗi ngày xí nghiệp đó bán được $50$ bộ quần áo. Gọi $x$ là số ngày đã bán, $y$ là số bộ quần áo còn lại sau $x$ ngày bán được.
  #listEX()[
    + Hãy lập công thức biểu thị $y$ theo $x$.
    + Xí nghiệp cần bán trong bao nhiêu ngày thì sẽ thanh lý hết số bộ quần áo trên.
  ]
]

#bt()[
  Để đổi từ độ $F$ (Fahrenheit) sang độ $C$ (Celsius) ta dùng công thức sau: $C = 5/9(F-32)$.
  #listEX()[
    + Tính nhiệt độ $C$ khi biết nhiệt độ $F$ là 30°F.
    + Tính nhiệt độ $F$ khi biết nhiệt độ $C$ là 20°C.
  ]
]

#bt()[
  Người ta thấy áp suất khí quyển càng lên cao càng giảm theo công thức: $P = 760 - 1/12 h$, trong đó $P$ là áp suất khí quyển tính theo đơn vị mmHg, $h$ là độ cao trên mực nước biển tính bằng m. $(0 <= h <= 9120)$
  #listEX()[
    + Em hãy xem ở Thành phố Hồ Chí Minh áp suất khí quyển là bao nhiêu? Biết rằng độ cao ở Thành phố ngang với mực nước biển?
    + Đỉnh Fansipan được gọi là "nóc nhà của Đông Dương" vì là ngọn núi cao nhất Đông Dương. Ở đây bạn An dùng áp kế thủy ngân đo được áp suất là $497","75$ mmHg. Em hãy tính xem đỉnh Fansipan cao bao nhiêu mét?
  ]
]

#bt()[
  Rừng ngập mặn Cần Giờ (còn gọi là rừng Sác), trong chiến tranh bom đạn và chất độc hóa học đã làm nơi đây trở thành "vùng đất chết"; được trồng lại từ năm 1979, nay đã trở thành "lá phổi xanh" cho Thành phố Hồ Chí Minh, được UNESCO công nhận là khu dự trữ sinh quyển của thế giới đầu tiên ở Việt Nam vào ngày 21/01/2000. Diện tích rừng phủ xanh được cho bởi hàm số $S = 3","14 + 0","05t$, trong đó $S$ tính bằng nghìn héc ta, $t$ tính bằng số năm kể từ năm 2000.
  #listEX()[
    + Hãy tính diện tích rừng Sác được phủ xanh vào năm 2000.
    + Diện tích rừng Sác được phủ xanh đạt $4","04$ nghìn héc-ta vào năm nào?
  ]
]

#bt()[
  Dưới nước biển, khi độ sâu tăng lên 10 m thì áp suất nước biển sẽ tăng thêm 1 atmosphere (ký hiệu atm). Do đó ở độ sâu $d$ (m) thì áp suất $p$ (atm) tương ứng được cho bởi công thức: $p = 1/10 d + 1$ với $0 <= d <= 40$.
  #listEX()[
    + Nếu ở độ sâu 25 m thì áp suất của nước biển là bao nhiêu?
    + Nếu áp suất của nước biển là $3","6$ atm thì độ sâu tương ứng là bao nhiêu?
  ]
]

#bt()[
  Khối lượng $P$ của một loại máy bay hạng nhẹ được tính phụ thuộc vào lượng xăng mang theo bởi công thức sau: $P = a x + b$. Trong đó: $P$ là một hàm số bậc nhất của biến số $x$; và $P$ được tính bằng đơn vị pound; $x$ là số gallon xăng mang theo.

  Biết rằng khối lượng của máy bay khi cạn nhiên liệu xăng là 2512 pounds, và khi chở 20 gallons xăng thì khối lượng máy bay là 2632 pounds. Hãy xác định hệ số $a$ và $b$.
]

#bt()[
  Một cửa hàng bán giày thể thao nhập một đơn hàng và ngày đầu tiên cửa hàng nhanh chóng bán được 40 đôi giày. Hôm sau mở cửa, cửa hàng tiếp tục bán giày thể thao; và số đôi giày thể thao bình quân mỗi ngày cửa hàng bán ra được tính theo công thức: $G = k x + m$ và được biểu diễn minh họa bởi biểu đồ bên; trong đó $G$ là số đôi giày của cửa hàng bán được và $x$ là số ngày bán.
  #listEX()[
    + Dựa vào hình bên, xác định hệ số $k$ và $m$.
    + Nếu lúc đầu cửa hàng nhập về 250 đôi giày thể thao thì sau 15 ngày cửa hàng còn lại bao nhiêu đôi?
  ]
]
