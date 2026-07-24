#import "../style/lib.typ": *
#show: appearance

#section()[Hằng dẳng thức đáng nhớ]

#subsection()[Lý thuyết]

#subsubsection()[Hằng đẳng thức]

#dn(tieude: "Hằng đẳng thức")[
  Cho hai biểu thức (đại số) $A$ và $B$. Khi đó:
  - Đẳng thức $A=B$ có thể đúng hoặc sai.
  - Đẳng thức $A=B$ được xem là một _hằng đẳng thức_ (hay _đồng nhất thức_) khi $A$ và $B$ luôn cùng nhận giá trị bằng nhau với mọi giá trị của biến.
]

#vd()[
  Đẳng thức $A + B = B + A$ luôn đúng với $A$, $B$ tuỳ ý. Do đó, $A + B = B + A$ là một hằng đẳng thức.
]

#vd()[
  Đẳng thức $x - 1/2 = x/2$ có phải là hằng đẳng thức không?
  #loigiai()[
    Đẳng thức $x - 1/2 = x/2$ đúng với $x = 1$, nhưng lại sai với $x = 2$. Do đó, đẳng thức này không phải là hằng đẳng thức.
  ]
]

#subsubsection()[Hằng đẳng thức đáng nhớ]

Với hai biểu thức tuỳ ý $A$ và $B$, ta có các _hằng đẳng thức đáng nhớ_ sau:
#align(center)[
  #table(
    columns: (auto, auto),
    inset: 10pt,
    align: (center, center),
    [*Tên*], [*Hằng đẳng thức*],
    [Bình phương của một tổng], [$(A + B)^2 = A^2 + 2A B + B^2$],
    [Bình phương của một hiệu], [$(A - B)^2 = A^2 - 2A B + B^2$],
    [Hiệu của hai bình phương], [$A^2 - B^2 = (A + B)(A - B)$],
    [Lập phương của một tổng], [$(A + B)^3 = A^3 + 3A^2 B + 3A B^2 + B^3$],
    [Lập phương của một hiệu], [$(A - B)^3 = A^3 - 3A^2 B + 3A B^2 - B^3$],
    [Tổng của hai lập phương], [$A^3 + B^3 = (A + B)(A^2 - A B + B^2)$],
    [Hiệu của hai lập phương], [$A^3 - B^3 = (A - B)(A^2 + A B + B^2)$],
  )
]



#subsection()[Bài tập tự luận]

#bt()[
  Viết các biểu thức sau thành đa thức:
  #listEX()[
    + $(3x + 4)^2$;
    + $(5x - y)^2$;
    + $(x y - 1/2 y)^2$.
  ]
]

#bt()[
  Viết các biểu thức sau thành bình phương của một tổng hoặc một hiệu:
  #listEX()[
    + $x^2 + 2x + 1$;
    + $9 - 24x + 16x^2$;
    + $4x^2 + 1/4 + 2x$.
  ]
]

#bt()[
  Viết các biểu thức sau thành đa thức:
  #listEX()[
    + $(3x - 5)(3x + 5)$;
    + $(x - 2y)(x + 2y)$;
    + $(-x - 1/2 y)(-x + 1/2 y)$.
  ]
]

#bt()[
  #listEX()[
    + Viết biểu thức tính diện tích của hình vuông có cạnh bằng $2x + 3$ dưới dạng đa thức.
    + Viết biểu thức tính thể tích của khối lập phương có cạnh bằng $3x - 2$ dưới dạng đa thức.
  ]
]

#bt()[
  Tính nhanh:
  #listEX()[
    + $38 dot 42$;
    + $102^2$;
    + $198^2$;
    + $75^2 - 25^2$.
  ]
]

#bt()[
  Viết các biểu thức sau thành đa thức:
  #listEX()[
    + $(2x - 3)^3$;
    + $(a + 3b)^3$;
    + $(x y - 1)^3$.
  ]
]

#bt()[
  Viết các biểu thức sau thành đa thức:
  #listEX()[
    + $(a - 5)(a^2 + 5a + 25)$;
    + $(x + 2y)(x^2 - 2x y + 4y^2)$.
  ]
]

#bt()[
  Viết các biểu thức sau thành đa thức:
  #listEX()[
    + $(a - 1)(a + 1)(a^2 + 1)$;
    + $(x y + 1)^2 - (x y - 1)^2$.
  ]
]

#bt()[
  #listEX()[
    + Cho $x + y = 12$ và $x y = 35$. Tính $(x - y)^2$.
    + Cho $x - y = 8$ và $x y = 20$. Tính $(x + y)^2$.
    + Cho $x + y = 5$ và $x y = 6$. Tính $x^3 + y^3$.
    + Cho $x - y = 3$ và $x y = 40$. Tính $x^3 - y^3$.
  ]
]

#bt()[
  Cho hình hộp chữ nhật có chiều dài, chiều rộng, chiều cao đều bằng 5 cm. Thể tích của hình hộp chữ nhật sẽ tăng bao nhiêu nếu:
  #listEX()[
    + Chiều dài và chiều rộng tăng thêm $a$ cm?
    + Chiều dài, chiều rộng, chiều cao đều tăng thêm $a$ cm?
  ]
]

#bt()[
  Tính bằng cách sử dụng công thức $(A + B)^2 = A^2 + 2A B + B^2$.
  #listEX()[
    + $(2x + 3)^2$.
    + $(x + 2)^2$;
    + $(y + 3)^2$;
    + $(2x + 1)^2$;
    + $(3x + 2y)^2$;
    + $(x + 3y)^2$;
    + $(5x + 1)^2$;
    + $(4x + 2y)^2$;
    + $(2x + 3y)^2$;
    + $(5x + y)^2$;
    + $(2x^2 + 3y^3)^2$;
    + $(4x^2 + 5y^4)^2$.
  ]
]

#bt()[
  Tính bằng cách sử dụng công thức $(A - B)^2 = A^2 - 2A B + B^2$:
  #listEX()[
    + $(3a - 1)^2$;
    + $(a - 2)^2$;
    + $(x - 1)^2$;
    + $(y - 4)^2$;
    + $(5 - x)^2$;
    + $(1 - 5a)^2$;
    + $(3a - 2b)^2$;
    + $(4 - 3a)^2$;
    + $(3x - 1)^2$;
    + $(x - 3y)^2$;
    + $(2x^2 y - 5x y^2)^2$;
    + $-(1/3 x - 3y)^2$.
  ]
]

#bt()[
  Tính nhanh:
  #listEX()[
    + $52^2$;
    + $62^2$;
    + $81^2$;
    + $98^2$.
  ]
]

#bt()[
  #immini()[
    Một mảnh vườn hình vuông có cạnh $10$ m được mở rộng cả hai cạnh thêm $x$ (m) như hình bên. Viết biểu thức (dạng đa thức thu gọn) biểu thị diện tích mảnh vườn sau khi mở rộng.
  ][
    #import "@preview/cetz:0.5.2"
    #cetz.canvas(length: 0.8cm, {
      import cetz.draw: *
      set-style(stroke: (cap: "round"), mark: (fill: black))
      rect((0, 0), (5, 5), fill: orange.lighten(70%))
      rect((0, 0), (2, 2), fill: white)
      line((0, 0), (0, 2), mark: (start: ">", end: ">"), stroke: 1pt)
      line((0, 0), (2, 0), mark: (start: ">", end: ">"), stroke: 1pt)
      line((0, 2), (0, 5), mark: (start: ">", end: ">"), stroke: 1pt)
      line((2, 0), (5, 0), mark: (start: ">", end: ">"), stroke: 1pt)
      content((1, 0), [$10$], anchor: "north", padding: 5pt)
      content((3.5, 0), [$x$], anchor: "north", padding: 5pt)
      content((0, 1), [$10$], anchor: "east", padding: 5pt)
      content((0, 3.5), [$x$], anchor: "east", padding: 5pt)
    })
  ]
]

#bt()[
  Viết các biểu thức sau thành đa thức:
  #listEX()[
    + $(6 - m)(6 + m)$;
    + $(3a + 5b)(3a - 5b)$;
    + $(x + 2y^2)(x - 2y^2)$.
  ]
]

#bt()[
  Tính nhanh:
  #listEX()[
    + $82 dot 78$;
    + $87 dot 93$;
    + $123^2 - 23^2$.
  ]
]

#bt()[
  Tính bằng cách sử dụng công thức: $(A - B)(A + B) = A^2 - B^2$.
  #listEX()[
    + $(x - 1)(x + 1)$;
    + $(x - 2)(x + 2)$;
    + $(3x + 1)(3x - 1)$;
    + $(5x^2 - 2)(5x^2 + 2)$;
    + $(3x^2 - y)(3x^2 + y)$;
    + $(2x - 3)(2x + 3)$.
  ]
]

#bt()[
  Tính bằng cách sử dụng công thức: $(A + B)^3 = A^3 + 3A^2 B + 3A B^2 + B^3$.
  #listEX()[
    + $(a + 2)^3$;
    + $(x + 1)^3$;
    + $(x + 3)^3$;
    + $(2 + 3x)^3$;
    + $(x + 4)^3$;
    + $(2x + 1)^3$;
    + $(2x + 3y)^3$;
    + $(3x + 1)^3$;
    + $(x + 3y)^3$;
    + $(3x + 2)^3$;
    + $(5x + 1)^3$.
  ]
]

#bt()[
  Tính bằng cách sử dụng công thức: $(A - B)^3 = A^3 - 3A^2 B + 3A B^2 - B^3$.
  #listEX()[
    + $(a - 2)^3$;
    + $(x - 3)^3$;
    + $(x - 4)^3$;
    + $(x - 5)^3$;
    + $(2x - 5)^3$;
    + $(2a - b)^3$;
    + $(2x - 3y)^3$;
    + $(x^2 - 2y)^3$;
    + $(2x^2 - 3y)^3$;
    + $(4 - 4y^2)^3$;
    + $(x - 1/3 y)^3$;
    + $-(4 - 2y)^3$.
  ]
]

#bt()[
  Viết các đa thức sau dưới dạng tích:
  #listEX()[
    + $8y^3 + 1$;
    + $y^3 - 8$.
  ]
]

#bt()[
  Tính bằng cách sử dụng công thức: $(A + B)(A^2 - A B + B^2) = A^3 + B^3$.
  #listEX()[
    + $(x + 1)(x^2 - x + 1)$;
    + $(x + 2)(x^2 - 2x + 4)$;
    + $(x + 3)(x^2 - 3x + 9)$;
    + $(x + 4)(x^2 - 4x + 16)$;
    + $(x + 1/2)(x^2 - x/2 + 1/4)$;
    + $(x^2 + 2)(x^4 - 2x^2 + 4)$.
  ]
]

#bt()[
  Tính bằng cách sử dụng công thức: $(A - B)(A^2 + A B + B^2) = A^3 - B^3$.
  #listEX()[
    + $(x - 2)(x^2 + 2x + 4)$;
    + $(x - 3)(x^2 + 3x + 9)$;
    + $(x - 4)(x^2 + 4x + 16)$;
    + $(x^2 - 3)(x^4 + 3x^2 + 9)$;
    + $(x^3 - 2)(x^6 + 2x^3 + 4)$;
    + $(3x - 1)(9x^2 + 3x + 1)$.
  ]
]

#bt()[
  Điền các đơn thức thích hợp vào ô trống:
  #listEX()[
    + $(3x + y)(dots.h - dots.h + dots.h) = 27x^3 + y^3$;
    + $(2x - dots.h)(dots.h + 10x + dots.h) = 8x^3 - 125$.
  ]
]

#bt()[
  Viết các biểu thức sau thành đa thức:
  #listEX()[
    + $(3x + 4)^2$;
    + $(5x - y)^2$;
    + $(x y - 1/2 y)^2$.
  ]
]

#bt()[
  Viết các biểu thức sau thành bình phương của một tổng hoặc một hiệu:
  #listEX()[
    + $x^2 + 2x + 1$;
    + $9 - 24x + 16x^2$;
    + $4x^2 + 1/4 + 2x$.
  ]
]

#bt()[
  Viết các biểu thức sau thành đa thức:
  #listEX()[
    + $(3x - 5)(3x + 5)$;
    + $(x - 2y)(x + 2y)$;
    + $(-x - 1/2 y)(-x + 1/2 y)$.
  ]
]

#bt()[
  #listEX()[
    + Viết biểu thức tính diện tích của hình vuông có cạnh bằng $2x + 3$ dưới dạng đa thức;
    + Viết biểu thức tính thể tích của khối lập phương có cạnh bằng $3x - 2$ dưới dạng đa thức.
  ]
]

#bt()[
  Tính nhanh:
  #listEX()[
    + $38 dot 42$;
    + $102^2$;
    + $198^2$;
    + $75^2 - 25^2$.
  ]
]

#bt()[
  Viết các biểu thức sau thành đa thức:
  #listEX()[
    + $(2x - 3)^3$;
    + $(a + 3b)^3$;
    + $(x y - 1)^3$;
    + $(2a b + 3)^3$.
  ]
]

#bt()[
  Viết các biểu thức sau thành đa thức:
  #listEX()[
    + $(a - 5)(a^2 + 5a + 25)$;
    + $(x + 2y)(x^2 - 2x y + 4y^2)$.
  ]
]

#bt()[
  Viết các biểu thức sau thành đa thức:
  #listEX()[
    + $(a - 1)(a + 1)(a^2 + 1)$;
    + $(x y + 1)^2 - (x y - 1)^2$.
  ]
]

#bt()[
  #listEX()[
    + Cho $x + y = 12$ và $x y = 35$. Tính $(x - y)^2$;
    + Cho $x - y = 8$ và $x y = 20$. Tính $(x + y)^2$;
    + Cho $x + y = 5$ và $x y = 6$. Tính $x^3 + y^3$;
    + Cho $x - y = 3$ và $x y = 40$. Tính $x^3 - y^3$.
  ]
]

#bt()[
  Cho hình hộp chữ nhật có chiều dài, chiều rộng, chiều cao đều bằng 5 cm. Thể tích của hình hộp chữ nhật sẽ tăng bao nhiêu nếu:
  #listEX()[
    + Chiều dài và chiều rộng tăng thêm $a$ cm?;
    + Chiều dài, chiều rộng, chiều cao đều tăng thêm $a$ cm?
  ]
]

#bt()[
  Thực hiện phép tính:
  #listEX()[
    + $(x + 2)^2 + 2(x + 1)$;
    + $(x - 4)^2 + (x + 1)(x + 2)$;
    + $(x - y)^2 + 2x(x + y)$;
    + $3(x + 1) + (x + 1)^2$;
    + $(x + 5)2x - (x - 3)^2$;
    + $x(4x + 3y) - (y - 2x)^2$;
    + $(7x - 1)(x + 2) - (x + 4)^2$;
    + $(x - 3)(x + 3) - (x - 1)(x^2 - 3)$;
    + $(2 - x)(2y - 5) - (2x - y)^2$;
    + $3x(x + 1)(x - 1) - (2x - 3)^2$;
    + $-5x(x + 4)^2 - (x - 1)^2$;
    + $(x - 2)(x + 2)(x + 1) - 4x(2x + 1)$;
    + $(x^2 - 3)(x^2 + 3) - 5x^2(x + 1)^2$;
    + $(x - 5)(x + 5) - (x - 2)^2 + 3(x - 2)^2$.
  ]
]

#bt()[
  Tìm $x$, biết:
  #listEX()[
    + $(x + 7)^2 - x(x - 3) = 12$;
    + $(2x + 3)^2 - 4x^2 = 10$;
    + $(x + 2)^2 - (x - 2)(x + 1) = 3$;
    + $27x^2(x + 1) - (3x + 1)^3 = -8$;
    + $(2x + 3)^2 - 4(x - 1)^2 = 0$;
    + $(x + 1)(x^2 - x + 1) - x(x^2 - 2) = 4$;
    + $(x - 2)^2 - (x + 1)(x + 3) = -7$;
    + $(x + 1)^2 - (x + 2)(x - 2) = 0$;
    + $(2x + 3)^2 - 4(x - 1)^2 = 16$;
    + $(x - 2)^2 - x(x - 5) - 3 = 0$;
    + $(3x - 2)(x + 9) - (3x - 2)^2 = 0$;
    + $x(4x + 1) - (2x - 3)^2 = -9$.
  ]
]

#bt()[
  Hãy cho biết giá trị của các biểu thức sau có phụ thuộc vào giá trị biến x hay không?
  #listEX()[
    + $A = 3(x + 1)^2 - (x + 3)^2$;
    + $B = (x - 2)^2 - (x - 4)x$;
    + $C = 3(x + 2)^2 - 3(x^2 - 4)$;
    + $D = x^2 - (x + 1)(x - 1) + 5$;
    + $E = 3x(x - 2)(x + 2) - x(3x + 3)$;
    + $F = (3x + 2)^2 - (3x + 2)(3x - 2) - 6x$;
    + $G = (3x + 5)^2 - (2x - 3)^2 + 3(6x - 7)$;
    + $H = (2 - 3x)(4 + 6x + 9x^2) + 27x^3$;
    + $I = (x - 2)^2 - (x - 3)(x + 3) + 2(2x - 3)$;
    + $K = 6(x + 2)(x - 2) - (2x - 1)(3x + 2)$.
  ]
]

#bt()[
  Tính giá trị của các biểu thức sau:
  #listEX()[
    + $x^2 - y^2$ tại $x = 87$ và $y = 13$;
    + $x^3 - 3x^2 + 3x - 1$ tại $x = 101$;
    + $x^3 + 9x^2 + 27x + 27$ tại $x = 97$;
    + $8x^3 - 12x^2 + 6x - 1$ tại $x = 1","5$.
  ]
]

#bt()[
  Rút gọn và tính giá trị của các biểu thức sau:
  #listEX()[
    + $A = x(x + 1) - (x + 2)^2$ tại $x = 1$;
    + $B = (5x + 2)(2x - 7) - (2x + 5)(2x - 5)$ tại $x = -3$;
    + $C = (x - 2)^2 - (x - 3)(x + 3)$ tại $x = 2$;
    + $D = (2x - 3)^3 + (4x + 1)(16x^2 - 4x + 1)$ tại $x = -2$;
    + $E = (3x + y)^3 - (x + 2y)(x^2 - 2x y + 4y^2)$ tại $x = 1$, $y = 2$.
  ]
]

#bt()[
  Tính:
  #listEX()[
    + $(a + b + c)^2$;
    + $(x + y + z)^2$;
    + $[(a + b) - c]^2$;
    + $(a - b + c)^2$;
    + $(x - 2y + z)^2$;
    + $(2x + y + z)^2$.
  ]
]

#bt()[
  Tính nhanh:
  #listEX()[
    + $101^2$;
    + $199^2$;
    + $47 dot 53$;
    + $34^2 + 66^2 + 68 dot 66$;
    + $74^2 + 24^2 - 48 dot 74$.
  ]
]

#bt()[
  Chứng minh rằng:
  #listEX()[
    + $(a + b)^2 = (a - b)^2 + 4a b$;
    + $(a - b)^2 = (a + b)^2 - 4a b$.
  ]
  Áp dụng:
  #listEX()[
    + Tính $(a - b)^2$, biết $a + b = 7$ và $a dot b = 12$;
    + Tính $(a + b)^2$, biết $a - b = 20$ và $a dot b = 3$.
  ]
]

#bt()[
  Chứng minh rằng:
  #listEX()[
    + $a^3 + b^3 = (a + b)^3 - 3a b(a + b)$;
    + $a^3 - b^3 = (a - b)^3 + 3a b(a - b)$.
  ]
  Áp dụng: Tính $a^3 + b^3$, biết $a dot b = 6$ và $a + b = -5$.
]
