#import "../style/lib.typ": *
#show: appearance

#section[Đơn thức]

#subsection[Lý thuyết]

#subsubsection[Đơn thức và đơn thức thu gọn]

#dn(tieude: "Đơn thức")[
  _Đơn thức_ là _biểu thức đại số chỉ gồm một số hoặc một biến_, hoặc có dạng tích của những số và biến.
]

#vd[
  Tìm đơn thức trong các biểu thức sau:
  #listEX[
    + $-x 6 y$;
    + $x + 2 y$;
    + $0","3 x y x^2$;
    + $5x sqrt(y)$;
    + $frac(3, 2)+y^2$;
    + $-frac(5, 9)x y z$;
    + $(3-x)x^2y^2$;
    + $(1+sqrt(2))x^2y$.
  ]
  #loigiai()[
    #dotlineEX(6)
  ]
]

#dn(tieude: "Đơn thức thu gọn")[
  _Đơn thức thu gọn_ là đơn thức chỉ gồm một số, hoặc có dạng tích của một số với những biến, mỗi biến chỉ xuất hiện một lần và đã được nâng lên luỹ thừa với số mũ nguyên dương.

  Trong một đơn thức thu gọn, phần số gọi là _hệ số_, phần còn lại gọi là _phần biến_.

  _Tổng số mũ của các biến_ trong một đơn thức _thu gọn_ với hệ số khác $0$ gọi là _bậc của đơn thức_ đó.
]

#phuongphap(tieude: "Cách thu gọn đơn thức")[
  #cacbuoc()[
    + Sử dụng tính chất giao hoán của phép nhân để sắp xếp các thừa số là số vào một nhóm, các thừa số cùng biến vào một nhóm.
    + Thực hiện phép nhân trong các nhóm.
    + Viết kết quả cuối cùng.
  ]
]

#vd()[
  Thu gọn đơn thức $A=2x y(-3)x^2z$. Xác định hệ số, phần biến của đơn thức thu gọn.
  #loigiai()[
    #dotlineEX(3)
  ]
]

#vd()[
  Xác định bậc của đơn thức $B=-5","5x^2y(-3)x^2z^4$.
  #loigiai()[
    #dotlineEX(2)
  ]
]

#luuy()[
  - Với các đơn thức có hệ số là $+1$ hay $–1$, ta không viết số 1. Ví dụ, đơn thức $x y^2$ có hệ số là 1; đơn thức $-x y^2$ có hệ số là -1.
  - Mỗi số khác $0$ là một đơn thức thu gọn bậc $0$.
  - Số $0$ cũng được coi là một đơn thức. Nó không có bậc.
]

#subsubsection()[Đơn thức đồng dạng]

#dn(tieude: "Đơn thức đồng dạng")[
  Hai _đơn thức đồng dạng_ là hai đơn thức với hệ số khác 0 và có phần biến giống nhau.
]

#nhanxet()[
  - Hai đơn thức đơn thức đồng dạng thì có cùng bậc.\
  - Hai số khác 0 cũng được coi là hai đơn thức đồng dạng.
]

#vd()[
  Cho các đơn thức:
  $ frac(5, 3)x^2y; quad -x y^2; quad 0","5x^4; quad -2x y^2; quad -frac(1, 4)x^2 y; quad 3x y^2. $
  Hãy sắp xếp các đơn thức đã cho thành từng nhóm, sao cho tất cả các đơn thức
  đồng dạng thì thuộc cùng một nhóm.
  #loigiai()[
    #dotlineEX(4)
  ]
]

#dl(tieude: "Cộng và trừ hai đơn thức đồng dạng")[
  Muốn cộng (hay trừ) hai đơn thức đồng dạng, ta cộng (hay trừ) các hệ số với nhau và giữ nguyên phần biến.
]

#luuy()[Phép cộng và trừ này không thực hiện được đối với hai đơn thức không đồng dạng.]

#vd()[
  Cho các đơn thức $-x^3y$, $4x^3y$ và $-2x^3y$.
  #listEX()[
    + Tính tổng $S$ của ba đơn thức đó.
    + Tính giá trị của tổng $S$ tại $x = 2$; $y = -3$.
  ]
  #loigiai()[
    #dotlineEX(3)
  ]
]

#subsection()[Bài tập tự luận]

#bt()[
  Thu gọn các đơn thức sau. Chỉ ra hệ số, phần biến và bậc của mỗi đơn thức.
  #listEX()[
    + $5x y x$;
    + $-x y z 2/3 y$;
    + $-2x^2(-1/6)x$.
  ]
]

#bt()[
  #immini()[
    Viết biểu thức biểu thị thể tích $V$ và diện tích xung quanh $S$ của hình hộp chữ nhật trong hình bên. Tính giá trị của $V$, $S$ khi $x = 4$ cm, $y = 2$ cm và $z = 1$ cm.
  ][
    #import "@preview/cetz:0.5.2"
    #cetz.canvas(length: 1.1cm, {
      import cetz.draw: *
      // Cài đặt nét vẽ bo tròn giống line cap=round
      set-style(stroke: (cap: "round"), mark: (fill: black))
      // Tô màu nền (tương đương \fill[orange!30])
      line(
        (0, 0),
        (3, 0),
        (4, 1),
        (4, 3),
        (1, 3),
        (0, 2),
        close: true,
        fill: orange.lighten(70%),
        stroke: none,
      )
      // Vẽ các mặt và cạnh nhìn thấy (tương đương \draw nét liền)
      line((0, 2), (0, 0), (3, 0), (3, 2), (0, 2), (1, 3), (4, 3), (4, 1), (3, 0))
      line((3, 2), (4, 3))
      // Vẽ các cạnh khuất ở mặt sau (tương đương \draw[dashed])
      line((0, 0), (1, 1), (1, 3), stroke: (dash: "dashed"))
      line((1, 1), (4, 1), stroke: (dash: "dashed"))
      // Chèn text hiển thị kích thước (tương đương các node)
      // anchor: "north" đặt node ở phía nam (tương đương below)
      // anchor: "west" đặt node ở phía đông (tương đương right)
      // anchor: "north-west" đặt node ở phía đông nam (tương đương below right)
      content((1.5, 0), [$3x$], anchor: "north", padding: 5pt)
      content((4, 2), [$2y$], anchor: "west", padding: 5pt)
      content((3.5, 0.5), [$4z$], anchor: "north-west", padding: 5pt)
    })
  ]
]

#bt()[
  Bạn Bình viết ba ví dụ về đơn thức như sau: $(5 - x)x^2; -5/9 x^2 y; -5$.\
  Em hãy kiểm tra xem bạn viết đã đúng chưa.
]

#bt()[
  Trong các biểu thức sau, biểu thức nào là đơn thức?
  #listEX()[
    + $2/5 + x^2 y$;
    + $9x^2 y z$;
    + $15","5$;
    + $1 - 5/9 x^3$.
  ]
]

#bt()[
  #immini()[
    Một bức tường hình thang vuông có cửa sổ hình chữ nhật với các kích thước như hình bên (tính bằng m).
    #listEX()[
      + Viết biểu thức biểu thị diện tích bức tường (không tính phần cửa sổ).
      + Tính giá trị diện tích trên khi $x = 3$ m; $h = 4$ m.
    ]
  ][
    #import "@preview/cetz:0.5.2"
    #cetz.canvas(length: 0.8cm, {
      import cetz.draw: *
      // Cài đặt nét vẽ (line cap=join tương đương với join: "miter" hoặc "round")
      set-style(stroke: (join: "miter"))
      // Vẽ bức tường hình thang và tô màu nền nâu nhạt
      line(
        (0, 0),
        (8, 0),
        (4, 3),
        (0, 3),
        close: true,
        fill: red.lighten(70%),
      )
      // Vẽ cửa sổ hình chữ nhật và tô màu trắng (đè lên bức tường)
      rect((1, 1), (3, 2), fill: white)
      // Chèn các nhãn kích thước (text)
      // - anchor: "north" (mỏ neo ở đỉnh chữ -> chữ rớt xuống dưới -> giống below)
      // - anchor: "south" (mỏ neo ở đáy chữ -> chữ đội lên trên -> giống above)
      // - anchor: "east" (mỏ neo ở bên phải chữ -> chữ dạt sang trái -> giống left)
      // - anchor: "west" (mỏ neo ở bên trái chữ -> chữ dạt sang phải -> giống right)
      content((4, 0), [$8x$], anchor: "north", padding: 5pt)
      content((2, 3), [$4x$], anchor: "south", padding: 5pt)
      content((0, 1.5), [$h$], anchor: "east", padding: 5pt)
      content((1, 1.5), [$x$], anchor: "west", padding: 2pt)
      content((2, 1), [$2x$], anchor: "north", padding: 5pt)
    })
  ]
]

#bt()[
  Tìm hệ số, phần biến và bậc của các đơn thức sau:
  #listEX()[
    + $4x$;
    + $2y$;
    + $0$;
    + $3x y$;
    + $x^2 y$;
    + $6x y^2$;
    + $4x^2 y^3$;
    + $5x y z^4$;
    + $1/2 x y^3$;
    + $3/4 x^2 z^5$;
    + $3/7 x y^2 z^4$;
    + $1/3 x^9 y^4 z$;
    + $1/19 x y z^(100)$.
  ]
]

#bt()[
  Thu gọn các đơn thức sau đây. Chỉ ra hệ số và bậc của chúng.
  #listEX()[
    + $17x y^2 x$;
    + $-y(2z^2)y^3$;
    + $x^3 y^2 x$;
    + $6x^2 y^3 z^5 y$.
  ]
]

#bt()[
  #listEX()[
    + Cho biết phần hệ số, phần biến và bậc của mỗi đơn thức sau: $2","5x^2 y; 0","25x^2 y^2$;
    + Tính giá trị của mỗi đơn thức trên tại $x=1$ và $y=-1$.
  ]
]

#bt()[
  Thu gọn các đơn thức sau rồi tìm bậc và hệ số:
  #listEX()[
    + $(2x^2 y)(-2x^3 y)$;
    + $7x^2 y^5 dot 4x^2 y z^4$;
    + $x^3(-5/4 x^2 y)(2/5 x^3 y^4)$;
    + $-x y(2x^3 y^4)(-5/4 x^2 y^3)$;
    + $5x y z dot 4x^3 y^2(-2x^5 y)$;
    + $-2x y^5(-x^2 y^3)(7x^2 y)$;
    + $4x^3 y(-x^2 y^5)(2x y)$;
    + $-x y^2(-1/2 x^3 y^4)(-4/7 x^2 y^5)$;
    + $(-3/4 x^5 y^4)(x y^2)(-8/9 x^2 y^5)$.
  ]
]

#bt()[
  Cho các biểu thức đại số sau: $1+3x$; $-4x^3 y$; $x^2-2x$; $x^2 y^2$. Hãy tìm ra các đơn thức rồi cho biết hệ số, phần biến, bậc của mỗi đơn thức đó.
]

#bt()[
  Tính tích hai đơn thức sau: $-1/3 x^2 y^3$ và $3/2 x^3 y^2(6x^2 y^4)$.
]

#bt()[
  Cho đơn thức $A = (-1/2 x^3 y^3)(16/9 x^2)$.
  #listEX()[
    + Thu gọn $A$ rồi cho biết hệ số, phần biến và bậc của đơn thức;
    + Tính giá trị của đơn thức $A$ tại $x=1/2, y=-3$.
  ]
]

#bt()[
  Cho đơn thức $A = (4/5 x^2 y^2)(-25/8 x y^2 z)$.
  #listEX()[
    + Thu gọn $A$ rồi cho biết phần hệ số, phần biến và bậc của đơn thức;
    + Tính giá trị của đơn thức $A$ tại $x=-1/5, y=-1, z=2$.
  ]
]

#bt()[
  Điền các đơn thức thích hợp vào ô trống:
  #listEX()[
    + $3x^2 y + ... = 5x^2 y$;
    + $... - 2x^2 = -7x^2$;
    + $... + ... + ... = x^5$.
  ]
]

#bt()[
  Mỗi cặp đơn thức sau có đồng dạng không? Nếu có, hãy tìm tổng và hiệu của chúng.
  #listEX()[
    + $2x y$ và $-7x y$;
    + $-3x^2 y$ và $5x^2 y$;
    + $-10a b c^2$ và $10c^2 b a$.
  ]
]

#bt()[
  Đánh dấu “X” vào ô trống mà em chọn là hai đơn thức đồng dạng với nhau:
  #listEX()[
    + $x^2$ và $x^3$; $quad$ #box[#rect(width: 0.4cm, height: 0.4cm)]
    + $x y$ và $-5x y$; $quad$ #box[#rect(width: 0.4cm, height: 0.4cm)]
    + $(x y)^2$ và $x y^2$; $quad$ #box[#rect(width: 0.4cm, height: 0.4cm)]
    + $3/4 x^2 y^3$ và $4/3 x^3 y^2$; $quad$ #box[#rect(width: 0.4cm, height: 0.4cm)]
    + $5x^3$ và $5x^4$; $quad$ #box[#rect(width: 0.4cm, height: 0.4cm)]
    + $2/5 x^3 y^5$ và $-3y^5 x^3$. $quad$ #box[#rect(width: 0.4cm, height: 0.4cm)]
  ]
]

#bt()[
  Xếp các đơn thức sau thành từng nhóm các đơn thức đồng dạng:
  $ 5/3 x^2 y; quad x y^2; quad -1/2 x^2 y; quad -2x y^2; quad x^2 y; quad 1/4 x y^2; quad -2/5 x^2 y; quad x y. $
]
