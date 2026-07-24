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
  $ 3x y^2-1; quad x+frac(1, x); quad sqrt(2)x+sqrt(3)y; quad x+sqrt(x y)+y. $
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
  Cho đa thức $N=5y^2z^2-2x y^2z+frac(1, 3)x^4-2y^2z^2+frac(2, 3)x^4+x y^2z.$
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
