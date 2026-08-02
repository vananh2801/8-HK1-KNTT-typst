#import "../style/lib.typ": *
#show: appearance

#section()[Đa thức]

#subsection()[Lý thuyết]

#subsubsection()[Khái niệm đa thức]

#dn(tieude: "Đa thức")[
  _Đa thức_ là tổng của những đơn thức; mỗi đơn thức trong tổng gọi là một _hạng tử_ của đa thức đó.
]

#luuy()[
  Mỗi đơn thức cũng được coi là một đa thức.
]

#vd()[
  Biểu thức nào dưới đây là đa thức? Hãy chỉ rõ các hạng tử của mỗi đa thức ấy.
  $ 3x y^2-1; quad x+1/x; quad sqrt(2)x+sqrt(3)y; quad x+sqrt(x y)+y. $
  #loigiai()[
    #dotlineEX(5)
  ]
]

#subsubsection()[Đa thức thu gọn]

#dn(tieude: "Đa thức thu gọn")[
  _Đa thức thu gọn_ là đa thức không có hai hạng tử nào đồng dạng.
]

#luuy()[
  Ta thường viết một đa thức dưới dạng thu gọn (nếu không có yêu cầu gì khác).
]

#phuongphap(tieude: "Cách thu gọn đa thức")[
  #cacbuoc()[
    + Ta thu gọn tất cả hạng tử (đơn thức).
    + Sử dụng tính chất giao hoán của phép cộng để sắp xếp các hạng tử động dạng vào một nhóm.
    + Thực hiện phép cộng các đơn thức đồng dạng trong các nhóm.
    + Viết kết quả cuối cùng.
  ]
]

#vd()[
  Cho đa thức $N=5y^2z^2-2x y^2z+1/3x^4-2y^2z^2+2/3x^4+x y^2z.$
  #listEX()[
    + Thu gọn đa thức $N$.
    + Xác định hệ số và bậc của từng hạng tử (tức là bậc của từng đơn thức) trong dạng thu gọn của $N$.
  ]
  #loigiai()[
    #dotlineEX(5)
  ]
]

#luuy()[
  - _Bậc của một đa thức_ là bậc của hạng tử có bậc cao nhất trong dạng thu gọn của đa thức đó.
  - Một số khác 0 tuỳ ý được coi là một đa thức bậc 0.
  - Số 0 cũng là một đa thức, gọi là _đa thức không_. Nó không có bậc.
]

#subsection()[Bài tập tự luận]

#bt()[
  Chỉ ra các đơn thức, đa thức trong các biểu thức sau:
  #align(center)[
    $-3$; $quad$ $2z$; $quad$ $1/3 x y + 1$; $quad$ $-10x^2 y z$; $quad$ $4/(x y)$; $quad$ $5x - z/2$; $quad$ $1 + 1/y$.
  ]
]

#bt()[
  Thu gọn và tìm bậc của mỗi đa thức sau:
  #listEX()[
    + $M = x - 3 - 4y + 2x - y$;
    + $N = -x^2 t + 13t^3 + x t^2 + 5t^3 - 4$.
  ]
]

#bt()[
  Tính giá trị của đa thức $P = 3x y^2 - 6x y + 8x z + x y^2 - 10x z$ tại $x = -3$; $y = -1/2$; $z = 3$.
]

#bt()[
  Cho các biểu thức sau:
  $ a b^2 - pi r^2; (4 pi r^3)/3; p/(2 pi); 2x - 1/y; 0; -1/sqrt(3); x^3 + 2x^2 - x + 4. $
  Trong các biểu thức trên, hãy chỉ ra:
  #listEX()[
    + Các đơn thức.
    + Các đa thức và số hạng tử của chúng.
  ]
]

#bt()[
  Viết một đa thức bậc 3 với hai biến $x$, $y$ và có ba hạng tử.
]

#bt()[
  #immini()[
    Nhà Hằng lắp một tấm chắn phòng hình thang với đáy lớn $4x$, đáy bé $2x$ và chiều cao $h$. Trên đó khoét một ô hình tròn có bán kính $r$ làm ô thoáng cửa sổ (đơn vị mét).
    #listEX()[
      + Viết biểu thức biểu thị diện tích của tấm chắn phòng (không tính phần ô thoáng cửa sổ).
      + Tính giá trị diện tích trên khi $x = 2","5$ m; $h = 3","5$ m; $r = 0","3$ m (lấy $pi = 3","14$; làm tròn kết quả đến hàng phần trăm).
    ]
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 1cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), content: (padding: 2pt))
      let A = (0, 0)
      let B = (3, 0)
      let C = (6, -2.5)
      let D = (0, -2.5)
      let O = (2, -1.25)
      line(A, B, C, D, A, fill: blue.lighten(50%))
      circle(O, radius: 0.75, fill: white)
      line(O, (rel: (45deg, 0.75), to: O))
      content((rel: (70deg, 0.35), to: O), [$r$])
      content((rel: (90deg, 0.3), to: (A, 50%, B)), [$2x$])
      content((rel: (-90deg, 0.3), to: (C, 50%, D)), [$4x$])
      content((rel: (180deg, 0.3), to: (A, 50%, D)), [$h$])
    })
  ]
]

#bt()[
  Yến đi mua vở và bút để chuẩn bị cho năm học mới. Biết mỗi quyển vở giá $x$ đồng, mỗi chiếc bút giá $y$ đồng. Viết biểu thức biểu thị số tiền Yến phải trả để mua:
  #listEX()[
    + 5 quyển vở và 3 cái bút.
    + 5 xấp vở và 3 hộp bút, biết rằng mỗi xấp vở có 10 quyển, mỗi hộp bút có 20 chiếc.
  ]
]

#bt()[
  #immini()[
    Bạn Thành dùng một miếng bìa hình chữ nhật để làm một chiếc hộp (không nắp) bằng cách cắt bốn hình vuông cạnh $x$ cm ở bốn góc rồi gấp lại. Biết rằng miếng bìa có chiều dài là $y$ cm, chiều rộng là $z$ cm. Tìm đa thức (ba biến $x$, $y$, $z$) biểu thị thể tích của chiếc hộp. Xác định bậc của đa thức đó.
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 1cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), content: (padding: 2pt))
      let A = (0, 0)
      let B = (5, 0)
      let C = (5, -4)
      let D = (0, -4)
      let Ap = (1, -1)
      let Bp = (4, -1)
      let Cp = (4, -3)
      let Dp = (1, -3)
      line(A, B, C, D, A)
      line(Ap, Bp, Cp, Dp, Ap, stroke: (dash: "dashed"))
      line(A, (1, 0), Ap, (0, -1), A)
      line(B, (5, -1), Bp, (4, 0), B)
      line(C, (4, -4), Cp, (5, -3), C)
      line(D, (1, -4), Dp, (0, -3), D)
      content((rel: (180deg, 0.5), to: (A, 50%, D)), [$z$ cm])
      content((rel: (-90deg, 0.3), to: (C, 50%, D)), [$y$ cm])
      content((rel: (0deg, 0.5), to: (1, -0.5)), [$x$ cm])
      content((rel: (0deg, 0.5), to: (1, -3.5)), [$x$ cm])
      content((rel: (180deg, 0.5), to: (4, -0.5)), [$x$ cm])
      content((rel: (180deg, 0.5), to: (4, -3.5)), [$x$ cm])
    })
  ]
]
