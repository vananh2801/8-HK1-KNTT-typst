#import "../style/lib.typ": *
#show: appearance

#section()[Phép cộng và phép trừ đa thức]

#subsection()[Lý thuyết]

#subsubsection()[Nhắc lại một số tính chất liên quan phép cộng]

Xét các số $A$, $B$ và $C$, ta có:
- Tính chất giao hoán của phép cộng: #box(stroke: 1pt, inset: 4pt)[$A+B=B+A$]
- Tính chất kết hợp của phép cộng: #box(stroke: 1pt, inset: 4pt)[$A+B+C=(A+B)+C=A+(B+C)$]

Các tính chất này áp dụng tương tự cho phép cộng đa thức.

#subsubsection()[Cộng, trừ hai đa thức]

#quytac(tieude: "Quy tắc cộng, trừ hai đa thức")[
  Muốn cộng (hay trừ) hai đa thức, ta nối hai đa thức đã cho bởi dấu "$+$"
  (hay dấu "$-$") rồi bỏ dấu ngoặc (nếu có) và thu gọn đa thức nhận được.
]

#vd()[
  Cho hai đa thức $P=3x^2 y+2x-y$ và $Q=4x-3y+2x y^2$. Tính:
  #listEX[
    + $P+Q$;
    + $P-Q$.
  ]
  #loigiai()[
    #listEX()[
      + Ta có
        $
          P+Q & = (3x^2 y+2x-y)+(4x-3y+2x y^2) \
              & = 3x^2 y+2x-y+4x-3y+2x y^2 \
              & = 3x^2 y+2x y^2+(2x+4x)+(-y-3y) \
              & = 3x^2 y+2x y^2+6x-4y.
        $
      + Ta có:
        $
          P-Q & = (3x^2 y+2x-y)-(4x-3y+2x y^2) \
              & = 3x^2 y+2x-y-4x+3y-2x y^2 \
              & = 3x^2 y-2x y^2+(2x-4x)+(-y+3y) \
              & = 3x^2 y-2x y^2-2x+2y.
        $
    ]
  ]
]

#subsection()[Bài tập tự luận]

#bt()[
  Tính:
  #listEX()[
    + $x + 2y + (x - y)$;
    + $2x - y - (3x - 5y)$;
    + $3x^2 - 4y^2 + 6x y + 7 + (-x^2 + y^2 - 8x y + 9x + 1)$;
    + $4x^2 y - 2x y^2 + 8 - (3x^2 y + 9x y^2 - 12x y + 6)$.
  ]
]

#bt()[
  #immini()[
    Tìm độ dài cạnh còn thiếu của tam giác ở hình bên, biết rằng tam giác có chu vi bằng $7x + 5y$.
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 1cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
      line((0, 0), (4, 0), (1, 2), close: true, fill: blue.lighten(70%))
      content((0.5, 1), [$3x-y$], anchor: "south", padding: 5pt, angle: 65deg)
      content((2.5, 1), [$x+2y$], anchor: "south", padding: 5pt, angle: -30deg)
    })
  ]
]

#bt()[
  Tính giá trị của biểu thức.
  #listEX()[
    + $3x^2 y - (3x y - 6x^2 y) + (5x y - 9x^2 y)$ tại $x = 2/3$, $y = -3/4$;
    + $x(x - 2y) - y(y^2 - 2x)$ tại $x = 5$, $y = 3$.
  ]
]

#bt()[
  Trên một dòng sông, để đi được 10 km, một chiếc xuồng tiêu tốn $a$ lít dầu khi xuôi dòng và tiêu tốn $(a + 2)$ lít dầu khi ngược dòng. Viết biểu thức biểu thị số lít dầu mà xuồng tiêu tốn để đi từ bến A ngược dòng đến bến B, rồi quay lại bến A. Biết khoảng cách giữa hai bến là $b$ km.
]

#bt()[
  Cho hai đa thức $A = 4 + 3x y - 2x^2 y^2$ và $B = 2x - 3x y + 4x^2 y^2$. Tính $A + B$ và $A - B$.
]

#bt()[
  Cho hai đa thức $M = 2x^2 - 2x y - y^2$; $N = x^2 + 2x y + y^2 - 1$.
  #listEX()[
    + Tính $M + N$;
    + Tính $M - N$;
    + Tính giá trị của biểu thức $M - N$ tại $x = 1$, $y = -2$.
  ]
]

#bt()[
  Cho hai đa thức $A = 3x^2 y - 1/5 x^2 y$; $B = x^2 y + 4/5 x^2 y$.
  #listEX[
    + Tính $A - B$;
    + Tìm đa thức $C$ sao cho $B = -A + C$.
  ]
]

#bt()[
  Cho hai đa thức sau: $C = x^2 y^2 + 3x y - 3 + y^2 - 5x y + 9$.
  $D = -x^2 y^2 + 5x y - 3y^2 + 6 - 2x^2 y^2 + 2y^2$.
  #listEX[
    + Thu gọn $C$ và $D$;
    + Tính $C + D$;
    + Tính $D - C$.
  ]
]

#bt()[
  Cho hai đơn thức sau: $M = -3x^3 y + 5/7 x^3 y$; $N = -2/7 x^3 y + 2x^3 y$.
  #listEX[
    + Tính $M - N$;
    + Tìm đơn thức $A$ sao cho $M = -N + A$.
  ]
]

#bt()[
  Cho hai đa thức $C = 5x^3 y - 1/4 x^3 y$; $D = x^3 y + 3/8 x^3 y$.
  #listEX[
    + Tính $C - D$;
    + Tìm đơn thức $B$ sao cho $D = -C + B$.
  ]
]

#bt()[
  Tính:
  #listEX[
    + $(x + y) + (x - y)$;
    + $(x + y) - (x - y)$.
  ]
]

#bt()[
  Tính tổng của hai đa thức $P = x^2 y + x^3 - x y^2 + 3$ và $Q(x) = x^3 + x y^2 - x y - 6$.
]

#bt()[
  Cho hai đa thức $M = 3x y z - 3x^2 + 5x y - 1$ và $N = 5x^2 + x y z - 5x y + 3 - y$.
  Tính $M + N$; $M - N$; $N - M$.
]

#bt()[
  Tìm đa thức $P$ và đa thức $Q$, biết:
  #listEX[
    + $P + (x^2 - 2y^2) = x^2 - y^2 + 3y^2 - 1$;
    + $Q - (5x^2 - x y z) = x y + 2x^2 - 3x y z + 5$.
  ]
]

#bt()[
  Tìm đa thức $M$ biết $M + (3x^4 y^5 - 7z^6) = 9 - x^4 y^5 + 6z^6$.
]

#bt()[
  Tìm đa thức $B$ biết: $B - (7x^3 - 4x^2 y - 1/2) = (2x^3 - 1/2 x^2 y - 7/2)$.
]

#bt()[
  Cho hai đa thức $M = x^2 - 2x y + y^2$; $N = y^2 + 2x y + x^2 + 1$.
  #listEX[
    + Tính $M + N$;
    + Tính $M - N$.
  ]
]

#bt()[
  Tính giá trị của biểu thức: $A = -2x^2 y + x y^3 - 1/2 x^2 y + x y - 4x y^3 + 1$ với $x = -1$, $y = 1/3$.
]

#bt()[
  Rút gọn biểu thức rồi tính giá trị:
  $ A = (4x^2 - 2x - 1) - (x^2 - 4x + 2) " với " x = -1/2. $
]

#bt()[
  Tính:
  #listEX()[
    + $3x+2y+(2x-y)$;
    + $5x-2y-(3x-7y)$;
    + $3x^2-4y^2+5x y+6+(-x^2+y^2-8x y+9x+2)$;
    + $2x^2 y-2x y^2+9-(6x^2 y+8x y^2-12x y+5)$.
  ]
]

#bt()[
  Tính giá trị biểu thức sau:
  #listEX[
    + $A = x^2 y + x y^3$ tại $x=2$, $y=-4$;
    + $B = x^2 y + 2x^3 y^2$ tại $x = -1$, $y = 1/2$.
  ]
]

#bt()[
  Cho biểu thức $C = 8x y + 7x^2 + 3y^3 + 2x y - 4x^2 - 9y^3$.
  #listEX()[
    + Thu gọn biểu thức $C$;
    + Tính giá trị của biểu thức $C$ tại $x = -1$, $y = -2$.
  ]
]

#bt()[
  Rút gọn:
  #listEX[
    + $-3x^5 y^4 + 3x^2 y^3 - 7x^2 y^3 + 5x^5 y^4$;
    + $1/2 x^4 y - 3/2 x^3 y^4 + 5/3 x^4 y - x^3 y^4$;
    + $5x - 7x y^2 + 3x - 1/2 x y^2$;
    + $-1/5 x^4 y^3 + 3/4 x^2 y - 1/2 x^2 y + x^4 y^3$.
  ]
]

#bt()[
  Tính giá trị biểu thức sau: $P(x) = x^2 + 5x - 1$ lần lượt tại $x=2$; $x = -1/4$.
]

#bt()[
  Tính giá trị của biểu thức sau: $A = 1/2(3x^2 - 9x)$ tại $x = -3$.
]

#bt()[
  Tính giá trị của biểu thức sau: $5x^2 - 3x + 1$ tại $x=-2$.
]

#bt()[
  Tính giá trị của đa thức $B(x)$ tại $x=2$, biết $3B(x) + B(-1) = 6x - 22$.
]

#bt()[
  #immini()[
    Một mảnh vườn hình vuông có cạnh bằng $a$ m với lối đi xung quanh vườn rộng $1","2$ m.\
    Hãy viết biểu thức biểu thị diện tích toàn phần còn lại của mảnh vườn. Tính diện tích còn lại của mảnh vườn khi $a = 15$.
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 1cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black))
      rect((0, 0), (4, 4), fill: orange.lighten(70%))
      rect((1, 1), (3, 3), fill: white)
      line((2, 0), (2, 1), mark: (start: ">", end: ">"), stroke: 1pt)
      content((2, 0.5), [$1","2$ m], anchor: "south", padding: 5pt, angle: -90deg)
    })
  ]
]
