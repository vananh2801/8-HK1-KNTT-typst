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
      set-style(
        stroke: (thickness: 0.7pt, cap: "round"),
        content: (padding: 3pt),
      )
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
        set-style(
          stroke: (thickness: 0.7pt, cap: "round"),
          content: (padding: 3pt),
        )
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
        set-style(
          stroke: (thickness: 0.7pt, cap: "round"),
          content: (padding: 3pt),
        )
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

#subsection()[Bài tập tự luận]

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
          set-style(
            stroke: (thickness: 0.7pt, cap: "round"),
            content: (padding: 3pt),
          )
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
          set-style(
            stroke: (thickness: 0.7pt, cap: "round"),
            content: (padding: 6pt),
          )
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
          set-style(
            stroke: (thickness: 0.7pt, cap: "round"),
            content: (padding: 3pt),
          )
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

#bt()[
  #immini()[
    Mối quan hệ giữa thang nhiệt độ $F$ (Fahrenheit) và thang nhiệt độ $C$ (Celsius) được cho bởi công thức $T_F = 1","8 T_C + 32$, trong đó $T_C$ là nhiệt độ tính theo độ $C$ và $T_F$ là nhiệt độ tính theo độ $F$.\
    Ví dụ $T_C = 0 degree C$ tương ứng với $T_F = 32 degree F$.
    #listEX()[
      + Hỏi $32 degree$C tương ứng với bao nhiêu độ $F$?
      + Hỏi $80 degree$F tương ứng với bao nhiêu độ $C$?
    ]
  ][
    #image("../imgs/8D7-4-nhiet-ket-C-F.jpeg", width: 3.5cm)
  ]
]

#bt()[
  Một hãng hàng không quy định phạt hành lý ký gửi vượt quá quy định miễn phí (hành lý quá cước). Cứ vượt quá $x$ (kg) hành lý thì khách hàng phải trả $y$ (USD) theo công thức liên hệ giữa $x$ và $y$ là $y = (4 \/ 5) x + 20$.
  #listEX()[
    + Tính số tiền phạt cho 15 kg hành lý quá cước.
    + Tính khối lượng hành lý quá cước nếu khoản tiền phạt tại sân bay Tân Sơn Nhất là 814 975 VNĐ (kết quả làm tròn đến hàng đơn vị). Biết tỉ giá giữa VNĐ và USD là 1 USD = 23 285 VNĐ.
  ]
]

#bt()[
  Nước là một phần không thể thiếu với cơ thể con người, bạn cần tiêu thụ đủ nước mỗi ngày để cơ thể khỏe mạnh, da dẻ hồng hào, đẹp đẽ, để biết cơ thể mình cần chính xác bao nhiêu nước mỗi ngày ta có thể sử dụng công thức (US News & World Report đã đưa ra) tính theo cân nặng như sau:
  $ L = 0","03 m, $
  trong đó: $L$ (lít/ngày) là lượng nước cơ thể cần; $m$ (kg) là cân nặng.

  _(Theo https://www.nhathuocankhang.com/ban-tin-suc-khoe/cach-tinh-chinh-xac-luong-nuoc-can-uong-moi-ngay-cua-co-the-1163869
  )_

  Bạn An nặng 55 kg thì lượng nước cần nạp vào cơ thể trong một ngày là bao nhiêu lít?
]

#bt()[
  Giờ GMT hay còn gọi là Greenwich Mean Time được tính bằng giờ trung bình hằng năm dựa theo thời gian mỗi ngày khi Mặt Trời đi qua Kinh tuyến gốc tại Đài thiên văn Hoàng gia, Greenwich.

  Việt Nam có múi giờ là $+7$ nên công thức tính giờ tại Việt Nam so với giờ GMT là $ T = G M T + 7, $ với $T$ là giờ tại Việt Nam; $G M T$ là giờ gốc (giờ ở Greenwich).
  #listEX()[
    + Lúc 8 giờ sáng ngày 24/8/2023 ở Greenwich thì ở Việt Nam là mấy giờ?
    + Lúc 6 giờ sáng ngày 24/8/2023 ở Việt Nam thì lúc đó ở Greenwich là mấy giờ?
  ]
]

#bt()[
  Một doanh nghiệp xuất khẩu gạo thu mua lúa với giá 7 triệu đồng/tấn; phí vận chuyển từ nơi thu mua đến kho là 2 triệu đồng/chuyến. Doanh nghiệp mua được $x$ tấn lúa và chỉ sử dụng ba chuyến vận chuyển số lúa đó về kho. Gọi $y$ (triệu đồng) là tổng chi phí mà doanh nghiệp đã trả mua $x$ tấn lúa và phí vận chuyển. Viết công thức $y$ theo $x$.
]

#bt()[
  Bạn Ngân làm nhân viên trang trí bánh kem ở cửa hàng XYZ. Cửa hàng trả lương một tháng gồm lương cơ bản 4 500 000 đồng, mỗi cái bánh trang trí thành phẩm bạn được trả thêm 12 000 đồng. Gọi $y$ (đồng) là số tiền lương bạn Ngân nhận được trong một tháng khi bạn trang trí được $x$ cái bánh thành phẩm.
  #listEX()[
    + Lập hàm số $y$ theo $x$.
    + Nếu trong một tháng bạn Ngân trang trí được 350 cái bánh thành phẩm thì số tiền lương bạn Ngân nhận được là bao nhiêu?
  ]
]

#bt()[
  Một tiệm trà sữa có chương trình khuyến mãi như sau: nếu khách hàng mua từ 5 ly trở lên thì từ ly thứ 5 sẽ được giảm giá 10% so với giá ban đầu. Gọi $y$ (đồng) là số tiền khách hàng phải trả khi mua $x$ ly trà sữa với $x gt.eq 5$.
  #listEX()[
    + Lập hàm số $y$ theo $x$, biết giá ban đầu của một ly trà sữa là 25 000 đồng.
    + Bạn Tâm đến tiệm trà sữa mua 7 ly trà sữa thì phải trả bao nhiêu tiền?
  ]
]

#bt()[
  Để thay đổi chiến lược kinh doanh phù hợp với khách hàng ít tiền, cửa hàng có chương trình "Mua hàng trả góp lãi suất 0%", tức là trả góp mỗi tháng mà không tính lãi suất. Tuy nhiên, trước khi mua hàng, khách hàng thường trả trước cho doanh nghiệp 20 - 30% giá sản phẩm. Số tiền còn lại chia đều mỗi tháng để trả.

  Bạn An muốn mua một chiếc laptop trả góp và bạn An đã thanh toán cho cửa hàng trước 5 400 000 đồng, kỳ trả góp là 12 tháng, với giá chiếc laptop là $y$ (triệu đồng), mỗi tháng trả $x$ (triệu đồng).
  #listEX()[
    + Hãy lập công thức tính $y$ theo $x$.
    + Nếu chiếc laptop bạn An đã mua có giá là 18 triệu đồng, thì số tiền hằng tháng bạn An phải góp là bao nhiêu? Số tiền bạn An thanh toán trước chiếm bao nhiêu phần trăm giá sản phẩm?
  ]
]

#bt()[
  Một cửa hàng sách cũ có một chính sách như sau: Nếu khách hàng đăng ký làm hội viên của cửa hàng sách, thì mỗi năm phải đóng 50 000 đồng chi phí và phải chi thuê sách với giá 5 000 đồng/cuốn; còn nếu khách hàng không phải hội viên, thì phải thuê sách với giá 10 000 đồng/cuốn. Gọi $s$ (đồng) là tổng số tiền mỗi khách hàng phải trả trong mỗi năm và $t$ là số cuốn sách mà khách hàng thuê.
  #listEX()[
    + Lập hàm số của $s$ theo $t$ đối với khách hàng là hội viên và đối với khách hàng không phải là hội viên.
    + Trung là một hội viên của cửa hàng sách, năm ngoái Trung đã trả cho cửa hàng sách tổng cộng 90 000 đồng. Hỏi nếu Trung không phải là hội viên của cửa hàng sách thì số tiền phải trả là bao nhiêu?
  ]
]

#bt()[
  Hai lớp 9A và 9B có 90 học sinh. Trong đợt góp sách ủng hộ, mỗi em lớp 9A góp 2 quyển và mỗi em lớp 9B góp 3 quyển, nên cả hai lớp góp được $S$ quyển.
  #listEX()[
    + Gọi $x$ $(x in NN^*; x < 90$; học sinh$)$ là số học sinh lớp 9A. Lập hàm số $S$ theo $x$.
    + Tính số học sinh mỗi lớp, biết cả hai lớp góp được 227 quyển sách.
  ]
]

#bt()[
  Một quyển tập có giá 12 500 đồng và một quyển sách có giá 45 000 đồng. Bạn An mua $x$ (quyển) tập và một quyển sách thì số tiền phải trả là $y$ (đồng).
  #listEX()[
    + Lập hàm số $y$ theo $x$.
    + Bạn An mua 10 quyển tập thì phải trả bao nhiêu tiền?
    + Với số tiền 200 000 đồng, bạn An mua được nhiều nhất bao nhiêu quyển tập?
  ]
]

#bt()[
  Tại bề mặt đại dương, áp suất nước bằng áp suất khí quyển và là 1 atm (atmosphere). Bên dưới mặt nước, áp suất nước tăng thêm 1 atm cho mỗi 10 mét sâu xuống. Biết rằng mối liên hệ giữa áp suất $y$ (atm) và độ sâu $x$ (m) dưới mặt nước là một hàm số bậc nhất $y = a x + b$.
  #listEX()[
    + Xác định các hệ số $a$ và $b$.
    + Một người thợ lặn đang ở độ sâu bao nhiêu nếu người ấy chịu một áp suất là $2","85$ atm.
  ]
]

#bt()[
  Diện tích rừng phủ xanh được cho bởi công thức $S = a t + b$, trong đó $S$ (nghìn ha) và $t$ (số năm) là số năm kể từ năm 2000 (Ví dụ: năm 2000 thì $t = 0$; năm 2001 thì $t = 1$; ...). Biết rằng vào năm 2000, diện tích phủ xanh của một khu rừng là 3,14 nghìn ha và sau 10 năm thì diện tích phủ xanh đã tăng thêm 0,5 nghìn ha.
  #listEX()[
    + Hãy xác định $a$ và $b$ trong công thức trên.
    + Em dùng công thức trên để tính xem trong năm 2020, diện tích phủ xanh của rừng trên là bao nhiêu nghìn ha.
  ]
]

#bt()[
  Nhiệt độ ở mặt đất đo được khoảng 30$degree$C. Biết rằng cứ lên 1 km thì nhiệt độ giảm đi 5$degree$C.
  #listEX()[
    + Hãy lập hàm số $T$ theo $h$, biết rằng mối liên hệ giữa nhiệt độ $T$ ($degree$C) và độ cao $h$ (km) là hàm số bậc nhất có dạng $T = a h + b$.
    + Hãy tính nhiệt độ khi ở độ cao 3 km so với mặt đất.
  ]
]

#bt()[
  Một ô tô có bình xăng chứa 30 lít. Cứ sau khi ô tô chạy được 20 km thì tiêu hao 1 lít xăng. Biết rằng mối liên hệ giữa số lít xăng còn lại trong bình là $y$ (lít) ứng với quãng đường đã đi là $x$ (km) là hàm số bậc nhất dạng $y = a x + b$.
  #listEX()[
    + Xác định hệ số $a$ và $b$.
    + Nếu số lít xăng còn lại trong bình là 16 lít thì ô tô đã đi được quãng đường bao nhiêu?
  ]
]

#bt()[
  Công ty A thực hiện một cuộc khảo sát để tìm hiểu về mối liên hệ giữa $y$ (sản phẩm) là số lượng sản phẩm $T$ bán ra với $x$ (đồng) là giá bán ra của mỗi sản phẩm $T$ và nhận thấy rằng $y = a x + b$ ($a$, $b$ là hằng số). Biết với giá bán là 400 000 (đồng)/sản phẩm thì số lượng sản phẩm bán ra là 1 200 (sản phẩm); với giá bán là 460 000 (đồng)/sản phẩm thì số lượng sản phẩm bán ra là 1 800 (sản phẩm).
  #listEX()[
    + Xác định $a$ và $b$.
    + Bằng phép tính, hãy tính số lượng sản phẩm bán ra với giá bán 440 000 (đồng)/sản phẩm.
  ]
]

#bt()[
  Quang hợp là quá trình lá cây nhờ có chất diệp lục, sử dụng nước, khí carbon dioxide (CO$""_2$), và năng lượng ánh sáng mặt trời để chế tạo ra tinh bột và nhả khí oxygen (O$""_2$). Nếu tính theo khối lượng thì cứ 44 kg CO$""_2$ sẽ nhả ra 32 kg O$""_2$. Gọi $x$ (kg) là khối lượng CO$""_2$ được dùng trong quá trình quang hợp để nhả ra $y$ (kg) O$""_2$. Biết mối liên hệ giữa $y$ và $x$ được biểu diễn theo hàm số $y = a x$ ($a$ là hằng số).
  #listEX()[
    + Xác định $a$.
    + Một giống cây A trưởng thành tiêu thụ 22 kg $C O_2$ trong một năm để thực hiện quá trình quang hợp. Tính số cây A trưởng thành cần trồng để tạo ra 2 400 kg $O_2$ trong một năm (biết khả năng quang hợp của các cây A trưởng thành là như nhau).
  ]
]
#bt()[
  Các nhà khoa học đã tìm ra mối liên hệ giữa $A$ là số tiếng kêu của một con dế trong một phút và $T_F$ là nhiệt độ cơ thể của nó bởi công thức: $A = 5","6 T_F - 275$, trong đó nhiệt độ $T_F$ tính theo độ F.
  #listEX()[
    + Hỏi nếu nhiệt độ cơ thể của con dế là 80$degree$F thì con dế kêu bao nhiêu tiếng trong một phút?
    + Hỏi nếu con dế kêu 106 tiếng trong một phút thì nhiệt độ của nó khoảng bao nhiêu độ F? (Kết quả làm tròn đến hàng đơn vị).
  ]
]

#bt()[
  Do hoạt động công nghiệp thiếu kiểm soát của con người làm cho nhiệt độ Trái Đất tăng dần một cách đáng lo ngại. Các nhà khoa học đưa ra công thức dự báo nhiệt độ trung bình trên bề mặt Trái Đất như sau: $T = 0","02 t + 15$.

  Trong đó: $T$ ($degree$C) là nhiệt độ trung bình trên bề mặt Trái Đất

  $t$ là số năm kể từ năm 1950. Ví dụ: năm 1950 thì $t = 0$; năm 1951 thì $t = 1$; năm 1952 thì $t = 2$; ...
  #listEX()[
    + Hãy tính nhiệt độ trung bình trên bề mặt Trái Đất năm 2020 và 2050.
    + Nhiệt độ trung bình trên bề mặt Trái Đất là 16,46$degree$C vào năm nào?
  ]
]
#bt()[
  Khi càng lên cao thì áp suất khí quyển càng giảm do không khí loãng dần. Để tính áp suất khí quyển ở độ cao không quá cao so với mặt nước biển thường sử dụng công thức: $P = 760 - 2 h \/ 25$. Trong đó, $P$ là áp suất khí quyển (mmHg); $h$ là độ cao so với mực nước biển (m). Hỏi thành phố Bảo Lộc ở độ cao 1 200 m so với mực nước biển thì áp suất của khí quyển là bao nhiêu (mmHg)?
]

#bt()[
  Một nhà máy sản xuất xi măng có sản lượng hàng năm được xác định theo hàm số $T = 12","5 n + 360$. Với $T$ là sản lượng (đơn vị tấn) và $n$ là số năm tính từ năm 2010. Ví dụ: năm 2010 thì $n = 0$; năm 2011 thì $n = 1$; năm 2012 thì $n = 2$; ...
  #listEX()[
    + Hãy tính sản lượng xi măng của nhà máy vào năm 2020.
    + Theo hàm số trên thì nhà máy đạt sản lượng 510 tấn vào năm nào?
  ]
]

#bt()[
  Một gia đình hộ A kết nối mạng internet. Cước phí hàng tháng được tính theo công thức sau: $T = 500 a + 45000$. Trong đó: $T$ (đồng) là số tiền phải trả hàng tháng, $a$ (giờ) là thời gian truy cập internet trong một tháng.
  #listEX()[
    + Hãy tính số tiền hộ A phải trả nếu sử dụng 50 giờ trong một tháng.
    + Qua tháng sau, hộ A phải trả 65 000 đồng. Hỏi hộ A đã sử dụng bao nhiêu giờ cho dịch vụ internet?
  ]
]

#bt()[
  Sự thay đổi nhiệt độ của không khí tùy theo độ cao của địa hình như sau: cứ lên cao 100 m thì nhiệt độ không khí giảm 0,6$degree$C. Gọi $y$ ($degree$C) là nhiệt độ không khí tại khu du lịch Bà Nà Hills có độ cao khoảng 1 500 m, và $x$ ($degree$C) là nhiệt độ không khí tại bãi biển Đà Nẵng gần đấy.
  #align(center)[
    #box()[
      #image("../imgs/8D7-4-ba-na-hills.png", width: 8cm)
    ]
    #h(1em)
    #box()[
      #image("../imgs/8D7-4-ba-na-hills-2.png", width: 8cm)
    ]
  ]
  #listEX()[
    + Hãy lập công thức tính $y$ theo $x$.
    + Khi nhiệt độ tại khu du lịch Bà Nà Hill là 18$degree$C thì nhiệt độ tại bãi biển Đà Nẵng là bao nhiêu?
  ]
]

#bt()[
  Một quyển tập giá 4 000 đồng, một hộp bút giá 30 000 đồng. Bạn An cần mua một số quyển tập và một hộp bút.
  #listEX()[
    + Gọi $x$ là số quyển tập An mua và $y$ là số tiền phải trả (bao gồm tiền mua tập và một hộp bút). Viết công thức biểu diễn $y$ theo $x$.
    + Nếu bạn An có 200 000 đồng để mua tập và một hộp bút thì tối đa bạn An mua được bao nhiêu quyển tập?
  ]
]

#bt()[
  Một người thuê nhà với giá 5 000 000 đồng/tháng và người đó phải trả tiền dịch vụ giới thiệu là 1 000 000 đồng (tiền dịch vụ chỉ trả 1 lần). Gọi $x$ (tháng) là khoảng thời gian người đó thuê nhà. Gọi $y$ (đồng) là số tiền người đó phải tốn khi thuê nhà trong $x$ tháng.
  #listEX()[
    + Em hãy tìm một hệ thức liên hệ giữa $x$ và $y$.
    + Tính số tiền người đó phải tốn sau khi ở 6 tháng, 1 năm.
  ]
]

#bt()[
  Hai bạn An và Bình ở cùng một vị trí cách TP.HCM 150 km, cùng đi trên một con đường về TP.HCM. An đi với vận tốc 30 km/h, Bình đi với vận tốc 45 km/h. Gọi $d$ (km) là khoảng cách từ TP.HCM đến vị trí của An hoặc Bình sau khi đi $t$ (giờ).
  #listEX()[
    + Lập hàm số của $d$ theo $t$ đối với mỗi người.
    + Hỏi nếu hai người xuất phát cùng một lúc thì vào thời điểm nào kể từ lúc xuất phát, khoảng cách giữa hai người là 30 km?
  ]
]

#bt()[
  Hai bạn An và Bình ở cùng một vị trí cách TP.HCM 150 km, cùng đi trên một con đường về TP.HCM. An đi với vận tốc 30 km/h, Bình đi với vận tốc 45 km/h. Gọi $d$ (km) là khoảng cách từ TP.HCM đến vị trí của An hoặc Bình sau khi đi $t$ (giờ).
  #listEX()[
    + Lập hàm số của $d$ theo $t$ đối với mỗi người.
    + Hỏi nếu hai người xuất phát cùng một lúc thì vào thời điểm nào kể từ lúc xuất phát, khoảng cách giữa hai người là 30 km?
  ]
]

#bt()[
  Trong một xưởng sản xuất đồ gia dụng có tổng cộng 900 thùng hàng và mỗi ngày nhân viên sẽ lấy 30 thùng hàng để đi phân phối cho các đại lý.
  #listEX()[
    + Gọi $y$ là số thùng hàng còn lại trong kho sau $x$ ngày. Hãy lập hàm số $y$ theo $x$.
    + Sau bao nhiêu ngày thì xưởng sẽ vận chuyển hết được 900 thùng hàng?
  ]
]

#bt()[
  Bạn Dương mang theo 100 000 đồng và đạp xe đến nhà sách để mua vở. Biết giá mỗi quyển vở là 7 000 đồng, phí gửi xe đạp là 3 000 đồng.
  #listEX()[
    + Viết công thức biểu thị tổng số tiền $y$ (đồng) bạn Dương cần phải trả cho việc gửi xe đạp và mua $x$ quyển vở.
    + Tính số tiền bạn Dương phải trả khi gửi xe và mua 12 quyển vở.
    + Viết công thức biểu thị số tiền còn lại $t$ (đồng) bạn Dương còn lại sau khi gửi xe và mua $x$ quyển vở.
    + Với số tiền trên, bạn Dương có thể mua được 15 quyển vở hay không? Vì sao?
  ]
]

#bt()[
  Áp suất trên bề mặt Trái Đất được tính là 760 mmHg (milimet thủy ngân) (bề mặt Trái Đất được tính ngang với mực nước biển). Cứ lên cao 12 m so với mực nước biển thì áp suất giảm đi 1 mmHg. Biết rằng mối liên hệ giữa áp suất $p$ (mmHg) và độ cao $h$ (m) là một hàm số bậc nhất có dạng $p = a h + b$ $(h < 9120)$.
  #listEX()[
    + Xác định các hệ số $a$ và $b$.
    + Em thử tính xem ở đỉnh Everest áp suất là bao nhiêu? Biết rằng đỉnh Everest cao 8 848 m so với mực nước biển (làm tròn đến hàng đơn vị).
  ]
]

#bt()[
  Minh đến nhà sách mua một quyển tập và một quyển sách thì phải thanh toán số tiền là 25 000 đồng. Nếu Minh mua thêm một quyển tập cùng loại nữa thì số tiền phải thanh toán là 30 000 đồng. Biết rằng mối liên hệ giữa số tiền phải thanh toán $y$ (đồng) cho nhà sách và số tập $x$ (quyển) mà Minh mua là một hàm số bậc nhất có dạng: $y = a x + b$ $(a eq.not 0)$.
  #listEX()[
    + Xác định các hệ số $a$ và $b$.
    + Minh mang theo khi đến nhà sách là 70 000 đồng thì có thể mua được bao nhiêu quyển tập và giá của quyển sách mà Minh mua là bao nhiêu tiền?
  ]
]

#bt()[
  Một ô tô có bình chứa xăng chứa được 40 lít xăng. Cứ chạy 100 km thì ô tô tiêu thụ hết 8 lít xăng. Gọi $x$ (km) là quãng đường ô tô đi được và $y$ (lít) là số lít xăng ô tô tiêu thụ.
  #listEX()[
    + Hãy lập công thức tính $y$ theo $x$.
    + Khi ô tô chạy từ TP.HCM đến Đà Lạt quãng đường dài 290 km thì số lít xăng trong bình còn bao nhiêu nếu lúc đầu bình đầy (làm tròn kết quả đến lít)?
  ]
]

#bt()[
  Qua nghiên cứu, người ta nhận thấy rằng với mỗi người trung bình nhiệt độ môi trường giảm đi 1$degree$C thì lượng calo cần tăng thêm khoảng 30 calo. Tại 21$degree$C, một người làm việc cần sử dụng khoảng 3000 calo mỗi ngày. Người ta thấy mối quan hệ giữa hai đại lượng này là một hàm số bậc nhất $y = a x + b$ ($x$ đại lượng biểu thị cho nhiệt độ môi trường và $y$ đại lượng biểu thị cho lượng calo).
  #listEX()[
    + Xác định hệ số $a$, $b$.
    + Nếu một người làm việc ở sa mạc Sahara trong nhiệt độ 50$degree$C thì cần bao nhiêu calo?
  ]
]

#bt()[
  Chim cắt là loài chim lớn, có bản tính hung dữ, đặc điểm nổi bật của loài chim này là chúng có khả năng lao nhanh như tên bắn. Từ vị trí cao 16 m so với mặt đất, đường bay lên của chim cắt được cho bởi công thức: $y = a x + b$. Trong đó, $y$ là độ cao so với mặt đất, $x$ (giây) là thời gian bay. Chỉ cần 8 giây là nó có thể bay lên đậu trên một núi đá cao 256 m so với mặt đất.
  #listEX()[
    + Hãy xác định các hệ số $a$ và $b$.
    + Nếu nó muốn bay lên đậu trên một núi đá cao 316 m so với mặt đất thì nó cần bao nhiêu giây?
  ]
]

#bt()[
  Nhiệt độ sôi của nước không phải lúc nào cũng là 100$degree$C mà phụ thuộc vào độ cao của nơi đó so với mực nước biển. Chẳng hạn, Thành phố Hồ Chí Minh có độ cao xem như ngang mực nước biển $(x = 0 m)$ thì nước có nhiệt độ sôi là $y = 100 degree C$ nhưng ở thủ đô La Paz của Bolivia, Nam Mỹ có độ cao $x = 3600$ m so với mực nước biển thì nhiệt độ sôi của nước là $y = 87 degree C$. Ở độ cao trong khoảng vài km, người ta thấy mối liên hệ giữa hai đại lượng này là một hàm số bậc nhất $y = a x + b$ có đồ thị như sau:
  #align(center)[
    #set text(size: 10pt)
    #import "@preview/cetz:0.5.2"
    #cetz.canvas(length: 0.3cm, {
      import cetz.draw: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
      let f(x) = (-13 / 3600 * (x * 100) + 100) / 10
      line((0, 0), (42, 0), mark: (end: "stealth"))
      line((0, 0), (0, 14), mark: (end: "stealth"))
      line((0, f(0)), (40, f(40)))
      line((0, f(36)), (36, f(36)), stroke: (dash: "dashed"))
      line((36, 0), (36, f(36)), stroke: (dash: "dashed"))
      line((15, 0), (15, f(15)), stroke: (dash: "dashed"))
      content((rel: (-135deg, 1), to: (0, 0)), [$O$])
      content((rel: (-135deg, 1), to: (42, 0)), [$x$])
      content((rel: (-135deg, 1), to: (0, 14)), [$y$])
      content((rel: (-90deg, 1), to: (15, 0)), [$1500$])
      content((rel: (-90deg, 1), to: (36, 0)), [$3600$])
      content((rel: (180deg, 1), to: (0, 8.7)), [$87$])
      content((rel: (180deg, 1.3), to: (0, 10)), [$100$])
    })
  ]
  Trong đó: \
  $x$ (m) là đại lượng biểu thị cho độ cao so với mực nước biển.\
  $y$ ($degree$C) là đại lượng biểu thị cho nhiệt độ sôi của nước.
  #listEX()[
    + Xác định các hệ số $a$ và $b$.
    + Thành phố Đà Lạt có độ cao 1500 m so với mực nước biển. Hỏi nhiệt độ sôi của nước ở thành phố này là bao nhiêu (kết quả làm tròn một chữ số thập phân)?
  ]
]

#bt()[
  Một vận động viên khi leo núi nhận thấy rằng càng lên cao thì nhiệt độ không khí càng giảm. Mối liên hệ giữa nhiệt độ không khí $T$ và độ cao $h$ (so với chân núi) được cho bởi hàm số $T = a h + b$ có đồ thị như hình vẽ bên (nhiệt độ $T$ tính theo $degree$C và độ cao $h$ tính theo mét).\
  Tại chân núi, người đó đo được nhiệt độ không khí là 23$degree$C và trung bình cứ lên cao 100 m thì nhiệt độ giảm 0,6$degree$C.
  #align(center)[
    #set text(size: 10pt)
    #import "@preview/cetz:0.5.2"
    #cetz.canvas(length: 0.3cm, {
      import cetz.draw: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
      let f(x) = (-3 / 500 * (x * 100) + 23) / 2.5
      line((0, 0), (35, 0), mark: (end: "stealth"))
      line((0, 0), (0, 12), mark: (end: "stealth"))
      line((0, f(0)), (30, f(30)))
      line((0, f(30)), (30, f(30)), stroke: (dash: "dashed"))
      line((30, 0), (30, f(30)), stroke: (dash: "dashed"))
      content((rel: (-135deg, 1), to: (0, 0)), [$O$])
      content((rel: (-135deg, 1), to: (35, 0)), [$x$])
      content((rel: (-135deg, 1), to: (0, 12)), [$y$])
      content((rel: (-90deg, 1), to: (30, 0)), [$3000$])
      content((rel: (180deg, 1), to: (0, f(0))), [$23$])
      content((rel: (180deg, 1), to: (0, f(30))), [$5$])
    })
  ]
  #listEX()[
    + Xác định $a$ và $b$ trong công thức trên.
    + Bạn Minh đang leo núi và dùng nhiệt kế đo được nhiệt độ không khí tại vị trí dừng chân là 15,8$degree$C. Hỏi bạn Minh đang ở độ cao bao nhiêu mét so với chân núi?
  ]
]
