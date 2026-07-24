#import "../style/lib.typ": *
#show: appearance

#section()[Phép nhân đa thức]

#subsection()[Lý thuyết]

#subsubsection()[Nhắc lại một số tính chất liên quan phép nhân]

Xét các số $A$, $B$ và $C$, ta có:
- Tính chất giao hoán của phép nhân: #box(stroke: 1pt, inset: 4pt)[$A dot B=B dot A$]
- Tính chất Kết hợp của phép nhân: #box(stroke: 1pt, inset: 4pt)[$A dot B dot C=(A dot B) dot C=A dot (B dot C)$]
- Tính chất phân phối của phép nhân đối với phép cộng: #box(stroke: 1pt, inset: 4pt)[$A dot (B+C)=A dot B+A dot C$]

Các tính chất này áp dụng tương tự cho phép cộng đa thức.

#subsubsection()[Nhân đơn thức với đa thức]

#quytac(tieude: "Quy tắc nhân hai đơn thức")[
  Muốn nhân hai đơn thức, ta nối hai đơn thức với nhau bởi dấu nhân rồi bỏ dấu ngoặc (nếu có) và thu gọn đơn thức nhận được.
]

#vd()[
  Thực hiện phép nhân $(2x y^2) dot (3x^2 z)$.
  #loigiai()[
    Ta có $(2x y^2) dot (3x^2 z) = (2 dot 3) dot (x dot x^2) dot y^2 dot z = 6 dot x^(1+2) dot y^2 dot z = 6x^3 y^2 z$.
  ]
]

#luuy()[
  Khi nhân hai đơn thức, hai đơn thức này _không_ yêu cầu là đơn thức đồng dạng.
]

#quytac(tieude: "Quy tắc nhân đơn thức với đa thức")[
  Muốn nhân một đơn thức với một đa thức, ta nhân đơn thức
  với từng hạng tử của đa thức rồi cộng các tích với nhau.
]

#vd()[
  Thực hiện phép nhân $(-4x y) dot (2x^2+x y-y^2)$.
  #loigiai()[
    Ta có:
    $
      (-4x y) dot (2x^2 + x y - y^2) & = (-4x y)(2x^2) + (-4x y)(x y) + (-4x y)(-y^2) \
                                     & = (-4) dot 2 (x y)x^2 - 4(x y)(x y) + 4(x y)y^2 \
                                     & = -8x^3 y - 4x^2 y^2 + 4x y^3.
    $
  ]
]

#subsubsection()[Nhân hai đa thức]

#quytac(tieude: "Quy tắc nhân hai đa thức")[
  Muốn nhân một đa thức với một đa thức, ta nhân mỗi hạng tử của đa thức này với từng hạng tử của đa thức kia rồi cộng các kết quả với nhau.
]

#vd()[
  Thực hiện phép nhân $(2x y^2-z) dot (3x^2 z+x y)$.
  #loigiai()[
    Ta có:
    $
      (2x y^2-z) dot (3x^2 z+x y) & = 2x y^2(3x^2 z+x y)-z(3x^2 z+x y) \
                                  & = 2x y^2 dot 3x^2 z+2x y^2 dot x y-z dot 3x^2 z-z dot x y \
                                  & = 6x^3 y^2 z+2x^2 y^3-3x^2 z^2-x y z.
    $
  ]
]

#subsection()[Bài tập tự luận]

#bt()[
  Thực hiện phép nhân.
  #listEX[
    + $3x(2x y - 5x^2 y)$;
    + $2x^2 y(x y - 4x y^2 + 7y)$;
    + $(-2/3 x y^2 + 6y z^2) dot (-1/2 x y)$.
  ]
]

#bt()[
  Thực hiện phép nhân.
  #listEX[
    + $(x - y)(x - 5y)$;
    + $(2x + y)(4x^2 - 2x y + y^2)$.
  ]
]

#bt()[
  Thực hiện các phép nhân đơn thức sau:
  #listEX[
    + $(5a^3) dot (-9a^3 b)$;
    + $(-8m n) dot (-7m^2 n^3)$;
    + $(-2x)^3 dot (3x^2 y)^2$.
  ]
]

#bt()[
  Cho hai đơn thức $A = 1/5 x^2 y^3$ và $B = 1/6 x^3 y^2$.
  #listEX()[
    + Hãy xác định hệ số, phần biến và bậc của hai đơn thức $A$ và $B$;
    + Tính $A dot B$.
  ]
]

#bt()[
  Tính tích của các đơn thức sau rồi tìm bậc của đơn thức thu được:
  #listEX[
    + $-1/3 x^2 y$ và $2x y^3$;
    + $1/4 x^3 y$ và $-2x^3 y^5$;
    + $12/15 x^4 y^2$ và $5/9 x y$.
  ]
]

#bt()[
  Rút gọn:
  #listEX[
    + $(-1/2 x^2 y^5)(-2/5 x^4 y z)$;
    + $(3/5 x^3 y^3)(-5/4 x^2 y z^4)$;
    + $(-5x y^2)(3/10 x y)(7/6 y z^2)$;
    + $(-4/3 x y^3 z)(-x^2 y)(3/2 x z^3)$.
  ]
]

#bt()[
  Cho hai đơn thức $A = -4/3 x y^2 z^3$ và $B = 6/7 x^2 y z$.
  #listEX()[
    + Tính tích của hai đơn thức trên;
    + Tìm hệ số, phần biến và bậc của đơn thức vừa thu được.
  ]
]

#bt()[
  Tính tích các đơn thức sau rồi tìm hệ số và bậc của tích tìm được:
  #listEX[
    + $1/4 x y^3$ và $-2x^2 y z^2$;
    + $-2x^2 y z$ và $-3x y^3 z$.
  ]
]

#bt()[
  Rút gọn:
  #listEX[
    + $(-11x^5 y^7 z^4)^2$;
    + $(-1/3 x^4 y^2 z)^3$;
    + $(2x^4 y^3 z^7)^5$;
    + $(3x^2 y^5 z)^3$.
  ]
]

#bt()[
  Thu gọn các đơn thức rồi cho biết hệ số, phần biến và bậc của các đơn thức sau:
  #listEX[
    + $-1 1/2 x^3 y^2(-4/3 x^2 y)^2(1/2 x^3 y)^3$;
    + $2/3 x^2 dot 1/4 x y dot 3y^2(2/5 x^3 y^4)$.
  ]
]

#bt()[
  Viết các biểu thức sau thành đa thức:
  #listEX[
    + $(-4a^4)(a^2 b - a^3)$;
    + $(x + 2y)(x^2 y - 3y^3)$.
  ]
]

#bt()[
  Một mảnh vườn có dạng hình chữ nhật với độ dài hai cạnh là $3x + y$ (m) và $3x - y$ (m).
  #listEX()[
    + Viết đa thức biểu thị diện tích của mảnh vườn trên theo $x$ và $y$;
    + Tính diện tích của mảnh vườn khi $x=5$, $y=3$.
  ]
]

#bt()[
  #immini()[
    Tính diện tích phần tô màu trong hình bên.
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 0.8cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
      rect((0, 0), (5, 3), fill: orange.lighten(70%))
      rect((2, 1), (4, 2), fill: white)
      content((0, 1.5), [$5y$], anchor: "east", padding: 5pt)
      content((2.5, 0), [$2x+3y$], anchor: "north", padding: 5pt)
      content((2, 1.5), [$x$], anchor: "east", padding: 5pt)
      content((3, 2), [$x+y$], anchor: "south", padding: 5pt)
    })
  ]
]


#bt()[
  Thực hiện phép nhân:
  #listEX[
    + $3x(2x y - 5x^2 y)$;
    + $2x^2 y(x y - 4x y^2 + 7y)$;
    + $2x(1 - 3x^2 + 1/2 x y)$;
    + $6x^2 y(3x y - 1/3 x + 1/2 y - x^2)$;
    + $(-2/3 x y^2 + 6y z^2) dot (-1/2 x y)$.
  ]
]

#bt()[
  Thực hiện phép nhân:
  #listEX[
    + $(x + y)(x - 3y)$;
    + $(2x - y)(3x + 2y)$;
    + $(x + 5)(5 - x)$;
    + $(5x - 2)(7x - 3)$;
    + $(3 + x)(x^2 - 3x + 9)$;
    + $(2x + y)(4x^2 - 2x y + y^2)$.
  ]
]

#bt()[
  Tính giá trị các biểu thức:
  #listEX()[
    + $A = 3x^2 - 15x^2 + 8x^2$ với $x = 1/4$;
    + $B = 2x^3 y^4 - 5x(x y^2)^2 + x y^2(x y)^2$ với $x = -1$, $y = 1/2$.
  ]
]

#bt()[
  Thu gọn:
  #listEX[
    + $-3x^4 y z(-1/6 x^3 y z^2)(-5/2 x^4 y^3 z)$;
    + $-4(2x)^2 y^3 + 1/2 x y(-2x y^2) + 1/4 x^2 y^3$;
    + $3/5 x^4 y^3 z^5(-3/10 x y^5 z)(-2/7 x^5 y z)$;
    + $1/3 x^4 y - 5/3 x^3(5/2 x y) + 3/4 x^4 y$.
  ]
]
