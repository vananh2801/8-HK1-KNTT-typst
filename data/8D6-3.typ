#import "../style/lib.typ": *
#show: appearance

#section()[Phép cộng và phép trừ phân thức đại số]

#subsection()[Lý thuyết]

#subsubsection()[Cộng trừ hai phân thức cùng mẫu]

#quytac(tieude: "Quy tắc cộng trừ hai phân thức cùng mẫu")[
  Muốn cộng hai phân thức có cùng mẫu thức, ta _cộng_ (hoặc _trừ_) các tử thức với nhau và _giữ nguyên mẫu thức_.
  $ A/B + C/B = (A + C)/B; quad A/B - C/B = (A - C)/B. $
]

#luuy()[
  - Kết quả của _phép cộng_ (hoặc _phép trừ_) hai phân thức được gọi là _tổng_ (hoặc _hiệu_) của hai phân thức đó.
  - Ta thường viết tổng và hiệu dưới dạng rút gọn.
]

#vd()[
  Thực hiện phép cộng $x/(x + 3) + (2 - x)/(x + 3)$.
  #loigiai()[
    $x/(x + 3) + (2 - x)/(x + 3) = (x + (2 - x))/(x + 3) = 2/(x + 3)$.
  ]
]

#vd()[
  Thực hiện phép trừ $(x^2 y)/(x - y) - (x y^2)/(x - y)$.
  #loigiai()[
    $(x^2 y)/(x - y) - (x y^2)/(x - y) = (x^2 y - x y^2)/(x - y) = (x y(x - y))/(x - y) = x y$.
  ]
]

#subsubsection()[Cộng trừ hai phân thức khác mẫu]

#quytac(tieude: "Quy tắc cộng trừ hai phân thức khác mẫu")[
  #cacbuoc()[
    + Quy đồng mẫu thức;
    + Cộng, trừ các phân thức có cùng mẫu thức vừa tìm được.
  ]
]

#luuy()[
  Các phép cộng trừ hai phân thức có thể mở rộng thành cộng trừ nhiều hơn 2 phân thức.
]

#vd()[
  Tính:
  #listEX()[
    + $1/(2x) + 2/x^2$;
    + $4/(x^2 - 1) - 2/(x^2 + x)$;
    + $x/(x + y) + (2x y)/(x^2 - y^2) - y/(x + y)$.
  ]
  #loigiai()[
    #listEX()[
      + $1/(2x) + 2/x^2 = (1 dot x)/(2x dot x) + (2 dot 2)/(x^2 dot 2) = x/(2x^2) + 4/(2x^2) = (x + 4)/(2x^2)$.
      + $4/(x^2 - 1) - 2/(x^2 + x) = 4/((x + 1)(x - 1)) - 2/(x(x + 1)) \
        = (4 dot x)/((x + 1)(x - 1) dot x) - (2 dot (x - 1))/(x(x + 1) dot (x - 1)) \
        = (4x)/(x(x + 1)(x - 1)) - (2x - 2)/(x(x + 1)(x - 1)) \
        = (4x - (2x - 2))/(x(x + 1)(x - 1)) = (2x + 2)/(x(x + 1)(x - 1))$.
      + $x/(x + y) + (2x y)/(x^2 - y^2) - y/(x + y) = x/(x + y) + (2x y)/((x + y)(x - y)) - y/(x + y) \
        = (x(x - y))/((x + y)(x - y)) + (2x y)/((x + y)(x - y)) - (y(x - y))/((x + y)(x - y)) \
        = (x(x - y) + 2x y - y(x - y))/((x + y)(x - y)) \
        = (x^2 - x y + 2x y - x y + y^2)/((x + y)(x - y)) = (x^2 - y^2)/((x + y)(x - y)) = 1$.
    ]
  ]
]

#quytac(tieude: "Rút gọn biểu thức có dấu ngoặc")[
  - Nếu trước dấu ngoặc có dấu "$+$" thì bỏ dấu ngoặc và giữ nguyên các số hạng.
  - Nếu trước dấu ngoặc có dấu "$-$" thì bỏ dấu ngoặc và đổi dấu các số hạng trong dấu ngoặc.
]

#vd()[
  Rút gọn biểu thức $P=frac(3, 2x+1)+[frac(5, 4x-1)-(frac(4, 4x-1)+frac(3, 2x+1))]$.
  #loigiai()[
    #dotlineEX(5)
  ]
]
#subsection()[Bài tập tự luận]

#bt()[
  Thực hiện các phép cộng, trừ phân thức sau:
  #listEX()[
    + $(a - 1)/(a + 1) + (3 - a)/(a + 1)$;
    + $b/(a - b) + a/(b - a)$;
    + $((a + b)^2)/(a b) - ((a - b)^2)/(a b)$.
  ]
]

#bt()[
  Thực hiện các phép cộng, trừ phân thức sau:
  #listEX()[
    + $1/(2a) + 2/(3b)$;
    + $(x - 1)/(x + 1) - (x + 1)/(x - 1)$;
    + $(x + y)/(x y) - (y + z)/(y z)$;
    + $2/(x - 3) - 12/(x^2 - 9)$;
    + $1/(x - 2) + 2/(x^2 - 4x + 4)$.
  ]
]

#bt()[
  Thực hiện các phép tính sau:
  #listEX()[
    + $(x + 2)/(x - 1) - (x - 3)/(x - 1) + (x - 4)/(1 - x)$;
    + $1/(x + 5) - 1/(x - 5) + (2x)/(x^2 - 25)$;
    + $x + (2y^2)/(x + y) - y$.
  ]
]

#bt()[
  Cùng đi từ thành phố A đến thành phố B cách nhau 450 km, xe khách chạy với tốc độ $x$ (km/h); xe tải chạy với tốc độ $y$ (km/h) ($x > y$). Nếu xuất phát cùng lúc thì xe khách đến thành phố B sớm hơn xe tải bao nhiêu giờ?
]

#bt()[
  #immini()[
    Có ba hình hộp chữ nhật A, B, C có chiều dài, chiều rộng và thể tích được cho như hình bên. Hình B và C có các kích thước giống nhau, hình A có cùng chiều rộng với B và C.
    #listEX()[
      + Tính chiều cao của các hình hộp chữ nhật. Biểu thị chúng bằng các phân thức cùng mẫu số.
      + Tính tổng chiều cao của hình A và C, chênh lệch chiều cao của hình A và B.
    ]
  ][
    #import "@preview/cetz:0.5.2"
    #set text(size: 10pt)
    #cetz.canvas(length: 0.6cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), content: (padding: 5pt))
      rect((0, 0), (5, 3), fill: orange.lighten(60%))
      line((4, 3), (5, 3), (7, 4), (6, 4), close: true, fill: orange.lighten(70%))
      line((5, 2), (7, 3), (7, 4), (5, 3), close: true, fill: orange.lighten(70%))
      rect((0, 3), (4, 5), fill: blue.lighten(60%))
      rect((5, 0), (9, 2), fill: blue.lighten(60%))
      line((0, 5), (2, 6), (6, 6), (4, 5), close: true, fill: blue.lighten(70%))
      line((4, 3), (6, 4), (6, 6), (4, 5), close: true, fill: blue.lighten(70%))
      line((9, 0), (11, 1), (11, 3), (9, 2), close: true, fill: blue.lighten(70%))
      line((5, 2), (9, 2), (11, 3), (7, 3), close: true, fill: blue.lighten(70%))
      content((2.5, 1.5), [$a$ $"cm"^3$])
      content((7, 1), [$b$ $"cm"^3$])
      content((2.5, 0), [$x$ cm], anchor: "north")
      content((7, 0), [$y$ cm], anchor: "north")
      content((10, 0.5), [$z$ cm], anchor: "north", angle: 30deg)
      content((0, 3), [$A$], anchor: "north-west")
      content((0, 5), [$C$], anchor: "north-west")
      content((5, 2), [$B$], anchor: "north-west")
    })
  ]
]

#bt()[
  Thực hiện các phép cộng, trừ phân thức sau:
  #listEX()[
    + $(x + y)/(x y) + (x - y)/(x y)$;
    + $x/(x + 3) + (2 - x)/(x + 3)$;
    + $(x^2 y)/(x - y) - (x y^2)/(x - y)$;
    + $(2x)/(2x - y) + y/(y - 2x)$.
  ]
]

#bt()[
  Thực hiện các phép cộng, trừ phân thức sau:
  #listEX()[
    + $(x - 5)/3 + (3 + 2x)/3$;
    + $(5x - 6)/3 + (x - 3)/3$;
    + $(1 - a)/5 + (a + 4)/5$;
    + $(x - 3)/5 + (x + 2)/5$;
    + $(a - 1)/(a + 1) + (3 - a)/(a + 1)$;
    + $(2x^2 + 9)/(x + 4) + (9 - 8x)/(x + 4)$;
    + $((a + b)^2)/(a b) - ((a - b)^2)/(a b)$;
    + $(2x - 5)/x - (7x - 5)/x$;
    + $(x + 5)/(x - 1) + (x - 7)/(x - 1)$;
    + $(3x + 5)/(x - 1) - (2x + 6)/(x - 1)$;
    + $(x - 2)/(x + 1) - (2x - 1)/(x + 1)$;
    + $(a - b)/(a + b) - (2a)/(a + b)$;
    + $(4x + 4)/(x + 2) + x^2/(x + 2)$;
    + $x^2/(x - 2) - (4x - 4)/(x - 2)$;
    + $-x/(3x - 2) + (7x - 4)/(3x - 2)$;
    + $x^2/(3x + 6) + (4x + 4)/(3x + 6)$;
    + $x^2/(2x - 10) + (25 - 10x)/(2x - 10)$;
    + $(x - 2)/(2x) + (x + 5)/(2x) + (x - 3)/(2x)$.
  ]
]

#bt()[
  Thực hiện các phép cộng, trừ phân thức sau:
  #listEX()[
    + $x/(x - 1) + 1/(1 - x)$;
    + $b/(a - b) + a/(b - a)$;
    + $x/(2 - 3x) + (7x - 4)/(3x - 2)$;
    + $(x - 2)/(x + 1) + (2x - 1)/(-x - 1)$;
    + $(3x + 5)/(x - 1) + (2x + 6)/(1 - x)$;
    + $(3x + 4)/(3x - 4) + (3x - 4)/(4 - 3x)$;
    + $x^2/(x - 2) + (4x - 4)/(2 - x)$;
    + $x^2/(3x + 6) - (4x + 4)/(-3x - 6)$;
    + $x^2/(2x^2 - 2) - (2x + 1)/(2 - 2x^2)$.
  ]
]

#bt()[
  Thực hiện các phép cộng, trừ phân thức sau:
  #listEX()[
    + $(2 - a)/(2a) + 1/2$;
    + $(2x - 3a)/(2a) + 3/2$;
    + $x/(x - 3) - 3/(x + 3)$;
    + $(2x)/3 - (2a x + 3x)/(3a)$;
    + $5/(3b) + (9b - 25)/(15b)$;
    + $7/5 - (7a - 31)/(5a - 15)$;
    + $2/5 - (4a + 13)/(10a - 5)$;
    + $2/7 - (2a + 15)/(7a - 21)$.
  ]
]

#bt()[
  Thực hiện các phép cộng, trừ phân thức sau:
  #listEX()[
    + $a/(a - 3) - 3/(a + 3)$;
    + $1/(2x) + 3/x^2$;
    + $5/(x^2 - 1) - 2/(x^2 + x)$;
    + $(x - 2)/(x(x + 2)) + 1/x$;
    + $(-x)/(x - 5) + (2x + 5)/(3x - 15)$;
    + $5/(x + 3) - (x - 12)/(x^2 + 3x)$;
    + $4/(x + 3) + (x + 27)/(x^2 - 9)$;
    + $(x^2 + 9)/(x^2 + 3x) + 6/(x + 3)$;
    + $(x + 6)/(x^2 - 4) - 2/(x^2 + 2x)$;
    + $(2x)/(x + 5) + (10x)/(x^2 + 5x)$;
    + $(x - 2)/(x(x + 2)) + 1/x$;
    + $x^3/(x^2 - 3x) - (9x + 27)/(x^2 - 9)$.
  ]
]

#bt()[
  Thực hiện các phép cộng, trừ phân thức sau:
  #listEX()[
    + $2/(x + 5) + 3/(x + 4) + (5x + 27)/((x + 5)(x + 4))$;
    + $6/(x - 2) - 12/(x(x - 2)) - 7/x$;
    + $3/x + (-6)/(x(x + 2)) + 2/(x + 2)$;
    + $(x + 3)/x + x/(x - 3) + 9/(x^2 - 3x)$;
    + $(x - 3)/(x - 2) + 1/x + (6 - x^2)/(x^2 - 2x)$;
    + $1/(x - 2) + (6 - 4x)/(x^2 - 2x) + 1/x$;
    + $(x - 3)/x + x/(x - 3) + (-9)/(x^2 - 3x)$;
    + $(x - 1)/x + (-5x)/(x - 2) + (11x - 2)/(x^2 - 2x)$.
  ]
]

#bt()[
  Tại một cuộc đua thuyền diễn ra trên một khúc sông từ A đến B dài 4 km. Mỗi đội thực hiện một vòng đua, xuất phát từ A đến B, rồi quay về A là đích. Một đội đua đạt tốc độ $(x + 1)$ km/h khi xuôi dòng từ A đến B và đạt tốc độ $(x - 1)$ km/h khi ngược dòng từ B về A. Viết biểu thức tính tổng thời gian đi và về, chênh lệch thời gian giữa đi và về của đội đua thuyền. Tính giá trị của các đại lượng này khi $v = 7$ km/h.
]

#bt()[
  Thực hiện các phép cộng, trừ phân thức sau:
  #listEX()[
    + $1/(2a) + 2/(3b)$;
    + $(x - 1)/(x + 1) - (x + 1)/(x - 1)$;
    + $(x + 2)/(x - 1) - (x - 3)/(x - 1) + (x - 4)/(1 - x)$;
    + $(x + y)/(x y) - (y + z)/(y z)$;
    + $x + (2y^2)/(x + y) - y$;
    + $x/(x + y) + (2x y)/(x^2 - y^2) - y/(x + y)$.
  ]
]

#bt()[
  Thực hiện các phép cộng, trừ phân thức sau:
  #listEX()[
    + $2/(x - 3) - 12/(x^2 - 9)$;
    + $1/(x - 2) + 2/(x^2 - 4x + 4)$;
    + $1/(x + 5) - 1/(x - 5) + (2x)/(x^2 - 25)$;
    + $x/(x - 1) - x/(x + 1) + 2/(x^2 - 1)$;
    + $(4x)/(x + 2) + (-3x)/(x - 2) + (12x)/(x^2 - 4)$;
    + $8/(x - 5) + 3/(x + 5) + (x + 35)/(x^2 - 25)$.
  ]
]

#bt()[
  Cùng đi từ thành phố A đến thành phố B cách nhau 450 km, xe khách chạy với tốc độ $x$ (km/h); xe tải chạy với tốc độ $y$ (km/h) ($x > y$). Nếu xuất phát cùng lúc thì xe khách đến thành phố B sớm hơn xe tải bao nhiêu giờ?
]

#bt()[
  Thực hiện các phép cộng, trừ phân thức sau:
  #listEX()[
    + $1/(5 - 2b) + (2b - 2)/(6b - 15)$;
    + $2/(2 - b) + (2b + 2)/(3b - 6)$;
    + $(14b + 19)/(10b - 15) + 8/(3 - 2b)$;
    + $(5b + 1)/(2b - 6) + 8/(3 - b)$;
    + $(b x - x + a)/(b a - a) + 1/(1 - b)$;
    + $(x + 9)/(x^2 - 9) - 3/(x^2 + 3x)$;
    + $(2x - 4)/(x - 1) + (2x + 2)/(x^2 - 1)$;
    + $(3a - 1)/(a^2 - 1) + 1/(1 - a)$;
    + $4/(x^2 - 1) - 2/(x^2 + x)$.
  ]
]

#bt()[
  Thực hiện các phép cộng, trừ phân thức sau:
  #listEX()[
    + $b/(6a) - (4a + 3b^2)/(18a b) + x/(9b)$;
    + $x/(4a) + (6a - 5b x)/(20a b) - (a - 1)/(10b)$;
    + $3/(4x) - (10x + 7y)/(12x y) + 5/(6y)$;
    + $(b c - a^2)/(a b) + (a c - b^2)/(b c) + (a b - c^2)/(c a)$;
    + $1/(2a) - (x^2 - 2a x)/(2a x^2) - 2/x$;
    + $1/x + 1/(x + 7) + (x - 1)/(x(x + 7))$;
    + $-1/3 + x/(a - 2) + (a + 3x - 2)/(3a - 6)$;
    + $2/(3b - 2) - 1/2 + (6b - 12)/(4(3b - 2))$;
    + $1/(a + 1) + 2/(1 - a) + (5a - 1)/(a^2 - 1)$;
    + $(2x^2)/(x^2 - 1) + 1/(x + 1) - 1/(x - 1)$;
    + $4/(x^2 - 9) + 1/(x - 3) + -1/(x + 3)$;
    + $(x - 3)/(x + 3) - 3/(x - 3) + (6x)/(x^2 - 9)$;
    + $x/(2a - b) - (4a x)/(4a^2 - b^2) + b/(2a + b)$.
  ]
]
