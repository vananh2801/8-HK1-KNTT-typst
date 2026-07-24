#import "../style/lib.typ": *
#show: appearance

#section()[Phép nhân và phép chia các phân thức đại số]

#subsection()[Lý thuyết]

#subsubsection()[Nhân hai phân thức]

#quytac(tieude: "Quy tắc nhân hai phân thức")[
  Muốn nhân hai phân thức, ta nhân các tử thức với nhau, nhân các mẫu thức với nhau:
  $ A/B dot C/D = (A dot C)/(B dot D). $
]

#vd()[
  Thực hiện phép nhân: $(4y)/(3x^2) dot (5x^3)/(2y^3)$.
  #loigiai()[
    #dotlineEX(2)
  ]
]

#luuy()[
  - Phép nhân hai phân thức có thể mở rộng thành phép nhân nhiều hơn 2 phân thức.
  - Tương tự phép nhân các phân số, phép nhân các phân thức có các tính chất sau:
    - Tính chất giao hoán:
      $ A/B dot C/D = C/D dot A/B. $
    - Tính chất kết hợp:
      $ (A/B dot C/D) dot E/F = A/B dot (C/D dot E/F). $
    - Tính chất phân phối đối với phép cộng:
      $ A/B dot (C/D + E/F) = (A dot C)/(B dot D) + (A dot E)/(B dot F). $
]

#subsubsection()[Chia hai phân thức]

#quytac(tieude: "Quy tắc chia hai phân thức")[
  Muốn chia phân thức $A/B$ cho phân thức $C/D$ ($C$ khác đa thức không), ta nhân phân thức $A/B$ với phân thức $D/C$:
  $ A/B : C/D = A/B dot D/C. $
]

#luuy()[
  Phân thức $D/C$ được gọi là _phân thức nghịch đảo_ của phân thức $C/D$.
]

#vd()[
  Thực hiện phép nhân: $(4y)/(3x^2) : (5x^3)/(2y^3)$.
  #loigiai()[
    #dotlineEX(2)
  ]
]

#subsection()[Bài tập tự luận]

#bt()[
  Thực hiện các phép nhân phân thức sau:
  #listEX()[
    + $(x^2 - 2x + 1)/(x^2 - 1) dot (x^2 + x)/(x - 1)$;
    + $(2x + x^2)/(x^2 - x + 1) dot (3x^3 + 3)/(3x + 6)$.
  ]
]

#bt()[
  Thực hiện các phép chia phân thức sau:
  #listEX()[
    + $(5x)/(4y^3) : (-(x^4)/(20y))$;
    + $(x^2 - 16)/(x + 4) : (2x - 8)/x$;
    + $(2x + 6)/(x^3 - 8) : ((x + 3)^3)/(2x - 4)$.
  ]
]

#bt()[
  Tính:
  #listEX()[
    + $(4x^2 + 2)/(x - 2) dot (3x + 2)/(x - 4) dot (4 - 2x)/(2x^2 + 1)$;
    + $(x + 3)/x dot (x + 2)/(x^2 + 6x + 9) : (x^2 - 4)/(x^2 + 3x)$.
  ]
]

#bt()[
  Tính:
  #listEX()[
    + $((1 - x)/x + x^2 - 1) : (x - 1)/x$;
    + $(1/x^2 - 1/x) dot x^2/y + x/y$;
    + $3/x - 2/x : 1/x + 1/x dot x^2/3$.
  ]
]

#bt()[
  Tâm đạp xe từ nhà tới câu lạc bộ câu cá có quãng đường dài $15$ km với tốc độ $x$ (km/h). Lượt về thuận chiều gió nên tốc độ nhanh hơn lượt đi $4$ km/h.
  #listEX()[
    + Viết biểu thức biểu thị tổng thời gian $T$ hai lượt đi và về.
    + Viết biểu thức biểu thị hiệu thời gian $t$ lượt đi đối với lượt về.
    + Tính $T$ và $t$ với $x = 10$.
  ]
]

#bt()[
  Tính:
  #listEX()[
    + $(6a^3)/(21b^3) dot (7b)/(9a^5)$;
    + $(x + 3)/x^5 dot (6x^3)/(x^2 - 9)$;
    + $(a^2 - 8a + 16)/(a^2 + 4a) dot (3a + 12)/(a - 4)$.
  ]
]

#bt()[
  Tính:
  #listEX()[
    + $(15x)/(7y^3) dot (2y^2)/x^2$;
    + $(5x)/(42y^2) dot (7y)/x$;
    + $(30x^3)/(11y^2) dot (121y^5)/(25x)$;
    + $(3x^3)/(4a b y) dot (b y)/(3x^2)$;
    + $(5b y)/(12a x) dot (2x)/(5b)$;
    + $(4y^2)/(11x^4) dot (-(3x^2)/(8y))$;
    + $(24y^5)/(7x^2) dot (-(21x)/(12y^3));$
    + $(2x - a x)/(2a y + 4a) dot (y + 2)/x$;
    + $(4x + 8)/((x - 10)^3) dot (2x - 20)/((x + 2)^2)$.
  ]
]

#bt()[
  Tìm phân thức $P$, biết:
  #listEX()[
    + $P : (4x^2 - 16)/(2x + 1) = (4x^2 + 4x + 1)/(x - 2)$;
    + $(2x^2 + 4x + 8)/(x^3 - 3x^2 - x + 3) : P = (x^3 - 8)/((x + 1)(x - 3))$.
  ]
]

#bt()[
  Áp dụng tính chất phân phối của phép nhân với phép cộng để rút gọn biểu thức:
  #listEX()[
    + $x^3/(x + 1975) dot (2x + 1954)/(x + 1) + x^3/(x + 1975) dot (21 - x)/(x + 1)$;
    + $(19x + 8)/(x - 7) dot (5x - 9)/(x + 1945) - (19x + 8)/(x - 7) dot (4x - 2)/(x + 1945)$;
    + $(x^3 - 1)/(x + 2) dot (1/(x - 1) - (x + 1)/(x^2 + x + 1))$;
    + $(x^3 + 2x^2 - x - 2)/(2x + 10) dot (1/(x - 1) - 2/(x + 1) + 1/(x + 2))$.
  ]
]

#bt()[
  Thực hiện các phép tính sau:
  #listEX()[
    + $((-20x)/(3y^2)) : (-(4x^3)/(5y))$;
    + $(18a^2 b^2)/(15c d) : (9a^3 b^2)/(5c^2 d^2)$;
    + $(-25x^4 y^3)/(14a^2) : ((10x^3 y^2)/(-21a b))$;
    + $(-25a^3 b^5)/(3c d^2) : (15a b^2)$;
    + $(4(x + 3))/(3x^2 - x) : (x^2 + 3x)/(1 - 3x)$;
    + $(27 - x^3)/(5x + 5) : (2x - 6)/(3x + 3)$.
  ]
]

#bt()[
  Thực hiện các phép tính sau:
  #listEX()[
    + $(x^2 - 9)/(x - 2) : (x - 3)/x$;
    + $x/z^2 dot (x z)/y^3 : x^3/(y z)$;
    + $2/x - 2/x : 1/x + 4/x dot x^2/2$.
  ]
]

#bt()[
  Đường sắt và đường bộ từ thành phố A đến thành phố B có độ dài bằng nhau và bằng $s$ (km). Thời gian để đi từ A đến B của tàu hoả là $a$ (giờ), của ô tô khách là $b$ (giờ) ($a < b$). Tốc độ của tàu hoả gấp bao nhiêu lần tốc độ của ô tô? Tính giá trị này khi $s = 240$, $a = 6$, $b = 8$.
]

#bt()[
  Tìm biểu thức $Q$, biết rằng: $(x^2 + 2x)/(x - 1) dot Q = (x^2 - 4)/(x^2 - x)$.
]

#bt()[
  Tìm biểu thức $Q$, biết rằng:
  #listEX()[
    + $(x - y)/(x^3 + y^3) dot Q = (x^2 - 2x y + y^2)/(x^2 - x y + y^2)$;
    + $(x + y)/(x^3 - y^3) dot Q = (3x^2 + 3x y)/(x^2 + x y + y^2)$.
  ]
]

#bt()[
  Thực hiện các phép nhân phân thức sau:
  #listEX()[
    + $(8y)/(5x^2) dot (15x^3)/(2y^3)$;
    + $(x^2 - 2x + 1)/(x^2 - 1) dot (x^2 + x)/(x - 1)$;
    + $(2x + x^2)/(x^2 - x + 1) dot (3x^3 + 3)/(3x + 6)$;
    + $(5x + 5)/(x^2 - 4) dot (x^2 - 4x + 4)/(6x + 6)$.
  ]
]

#bt()[
  Thực hiện các phép chia phân thức sau:
  #listEX()[
    + $(5x)/(4y^3) : (-(x^4)/(20y))$;
    + $(x^2 - 16)/(x + 4) : (2x - 8)/x$;
    + $(2x + 6)/(x^3 - 8) : ((x + 3)^3)/(2x - 4)$.
  ]
]

#bt()[
  Tính:
  #listEX()[
    + $(4x^2 + 2)/(x - 2) dot (3x + 2)/(x - 4) dot (4 - 2x)/(2x^2 + 1)$;
    + $(x + 3)/x dot (x + 2)/(x^2 + 6x + 9) : (x^2 - 4)/(x^2 + 3x)$.
  ]
]

#bt()[
  Tính:
  #listEX()[
    + $((1 - x)/x + x^2 - 1) : (x - 1)/x$;
    + $(1/x^2 - 1/x) dot x^2/y + x/y$;
    + $3/x - 2/x : 1/x + 1/x dot x^2/3$.
  ]
]

#bt()[
  Thực hiện các phép tính sau:
  #listEX()[
    + $((2 - a)^2)/(2a b) dot b/(2 - a) + 1/2$;
    + $(5a)/(3a) - (5x - 1)/((x + 1)^2) dot (3x + 3)/9$;
    + $(2x^2)/(3y^2) dot y^2/x - (2a x + 3x)/(3a)$;
    + $(2 - a)/(2a) + 1/(2a - 2) dot (a - 1)/x$;
    + $(5a)/(3a + 9) dot (a + 3)/a - (5a - 6)/(3a)$;
    + $(2x - 3a)/(2a) + (3a - 3x)/(4a x) dot (2a x)/(a - x)$.
  ]
]

#bt()[
  Lan đạp xe từ nhà tới câu lạc bộ bóng đá có quãng đường dài 12km với tốc độ $x$ (km/h). Lượt về thuận chiều gió nên tốc độ nhanh hơn lượt đi 3 km/h.
  #listEX()[
    + Viết biểu thức biểu thị tổng thời gian $T$ hai lượt đi và về;
    + Viết biểu thức biểu thị hiệu thời gian $t$ lượt đi đối với lượt về;
    + Tính $T$ và $t$ với $x = 10$.
  ]
]

#bt()[
  Nghỉ hè, ba của Long chở Long bằng xe máy từ nhà về quê có quãng đường dài 60km với tốc độ $x$ (km/h). Lượt về ngược chiều gió nên tốc độ chậm hơn lượt đi 4 km/h.
  #listEX()[
    + Viết biểu thức biểu thị tổng thời gian $T$ hai lượt đi và về;
    + Viết biểu thức biểu thị hiệu thời gian $t$ lượt đi đối với lượt về;
    + Tính $T$ và $t$ với $x = 30$.
  ]
]

#bt()[
  Thực hiện các phép tính sau:
  #listEX()[
    + $((1 - x)/x + x^2 - 1) : (x - 1)/x$;
    + $(1 + 1/x)(6x)/(x^2 - 1)$;
    + $(3 + 1/x)9/(9x^2 - 1)$;
    + $(2 - 3/x)x^2/(4x^2 - 9)$;
    + $(6 + 30/x)x/(x^2 - 25)$;
    + $(x - 28/(x - 3))(x - 21/(x + 4))$.
  ]
]

#bt()[
  Thực hiện các phép tính sau:
  #listEX()[
    + $(a - (a^2 + b^2)/(a + b))(1/b + 2/(a - b))$;
    + $2/(a b) : (1/a - 1/b)^2 - (a^2 + b^2)/((a - b)^2)$;
    + $((a - b)^2 + 4a b)/(a + b) dot (a^2 b + a b^2)/(a b)$;
    + $(a - b)/(a b + b^2) + (3a + b)/(a^2 - a b) dot (a - b)/(a + b)$;
    + $(m - (m^2 + n^2)/(m + n))(1/n + 2/(m - n))$;
    + $(x/(x y - y^2) - y/(x^2 - x y)) dot (x^2 y + x y^2)/(x^2 - y^2)$;
    + $(1 + x/y + x^2/y^2)(x/y - 1) dot y^2/(x^3 - y^3)$;
    + $((a - b)/(a + b) - (a + b)/(a - b))((a^2 + b^2)/(2a b) + 1)$;
    + $(a^2/b - b^2/a)((a + b)/(a^2 + a b + b^2) + 1/(a - b))$;
    + $(a/(a b - b^2) - (2a - b)/(a^2 - a b)) : (a^2 - 2a b + b^2)/(a^2 b - a b^2)$.
  ]
]

#bt()[
  Thực hiện các phép tính sau:
  #listEX()[
    + $((5x + y)/(x^2 - 5x y) + (5x - y)/(x^2 + 5x y)) dot (x^2 - 25y^2)/(x^2 + y^2)$;
    + $(4x y)/(y^2 - x^2) : (1/(x^2 + 2x y + y^2) - 1/(x^2 - y^2))$.
  ]
]

#bt()[
  Thực hiện các phép tính sau:
  #listEX()[
    + $(9/(x^3 - 9x) + 1/(x + 3)) : ((x - 3)/(x^2 + 3x) - x/(3x + 3))$;
    + $(2/(x - 2) - 2/(x + 2)) dot (x^2 + 4x + 4)/8$;
    + $((3x)/(1 - 3x) + (2x)/(3x + 1)) : (6x^2 + 10x)/(1 - 6x + 9x^2)$;
    + $(x/(x^2 - 25) - (x - 5)/(x^2 + 5x)) : (2x - 5)/(x^2 + 5x) + x/(5 - x)$.
  ]
]

#bt()[
  Thực hiện các phép tính sau:
  #listEX()[
    + $(x + 1)/(x + 2) : (x + 2)/(x + 3) : (x + 3)/(x + 1)$;
    + $(x + 1)/(x + 2) : ((x + 2)/(x + 3) : (x + 3)/(x + 1))$;
    + $(x + 1)/(x + 2) dot (x + 2)/(x + 3) : (x + 3)/(x + 1)$;
    + $(x + 1)/(x + 2) dot ((x + 2)/(x + 3) : (x + 3)/(x + 1));$
    + $(x + 1)/(x + 2) : (x + 2)/(x + 3) dot (x + 3)/(x + 1)$;
    + $(x + 1)/(x + 2) : ((x + 2)/(x + 3) dot (x + 3)/(x + 1))$.
  ]
]
