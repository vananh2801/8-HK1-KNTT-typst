#import "../style/lib.typ": *
#show: appearance

#section()[Tính chất cơ bản của phân thức đại số]

#subsection()[Lý thuyết]

#subsubsection()[Tính chất cơ bản của phân thức]

Tương tự như đối với phân số, ta có các tính chất cơ bản của phân thức sau đây:

#tc()[
  Nếu nhân cả tử và mẫu của một phân thức với cùng một đa thức khác đa thức 0 thì được một phân thức bằng phân thức đã cho:
  #align(center)[
    $A/B = (A dot M)/(B dot M)$ ($M$ là một đa thức khác đa thức không).
  ]
]

#vd()[
  Tìm phân thức bằng phân thức $frac(x^2+x, x y)$, biết rằng mẫu thức bằng $x y^2$.
  #loigiai()[
    #dotlineEX(2)
  ]
]

#tc()[
  Nếu chia cả tử và mẫu của một phân thức cho một nhân tử chung của chúng thì được một phân thức bằng phân thức đã cho:
  #align(center)[
    $A/B = (A : N)/(B : N)$ ($N$ là một nhân tử chung).
  ]
]

#vd()[
  Tìm phân thức bằng phân thức $frac(x^2+x, x y)$, biết rằng mẫu thức bằng $x$.
  #loigiai()[
    #dotlineEX(2)
  ]
]

#quytac(tieude: "Đổi dấu tử và mẫu của phân thức")[
  Cho phân thức $A/B$, khi đó ta có
  $ A/B = (-A)/(-B) = -(-A)/B = -A/(-B). $
]

#vd()[
  Tìm phân thức bằng phân thức $frac(x^2+x, x y)$, biết rằng mẫu thức bằng $-x y$.
  #loigiai()[
    #dotlineEX(2)
  ]
]

#subsubsection()[Vận dụng]

#phuongphap(tieude: "Rút gọn phân thức")[
  #cacbuoc[
    + Phân tích tử và mẫu thành nhân tử (nếu cần) để tìm nhân tử chung.
    + Chia cả tử và mẫu cho nhân tử chung.
  ]
]

#vd()[
  Rút gọn phân thức $P = (3x^2 + 6x y)/(6x^2)$.
  #loigiai()[
    Ta có $P = (6x^2 + 3x y)/(12x^3 - 3x y^2) = (3x(2x + y))/(3x(4x^2 - y^2)) = (3x(2x + y))/(3x(2x + y)(2x - y)) = 1/(2x - y)$.
  ]
]

#phuongphap(tieude: "Cách xác định mẫu thức chung của nhiều phân thức")[
  #cacbuoc()[
    + Phân tích mẫu thức của các phân thức đã cho thành nhân tử.
    + Ta tìm nhân tử bằng số của mẫu thức chung như sau:
      - Nếu các nhân tử bằng số ở các mẫu thức cần quy đồng là những số _nguyên dương_ thì nhân tử bằng số cần tìm là BCNN của chúng.
      - Ngược lại, nhân tử bằng số cần tìm là tích các nhân tử bằng số ở các mẫu thức.
    + Chỉ ra các nhân tử chung và riêng của các mẫu thức. Mỗi nhân tử này là luỹ thừa của một biểu thức.
      - Đối với nhân tử riêng, ta chọn làm một nhân tử của mẫu thức chung.
      - Đối với nhân tử chung, ta chọn luỹ thừa với số mũ lớn nhất làm một nhân tử của mẫu thức chung.
  ]
]

#vd()[
  Tìm mẫu thức chung của hai phân thức $1/(4x^2 - 8x + 4)$ và $5/(6x^2 - 6x)$.
  #loigiai()[
    Ta có: $4x^2 - 8x + 4 = 4(x^2 - 2x + 1) = 4(x - 1)^2$;\
    $6x^2 - 6x = 6x(x - 1)$.\
    Vì $"BCNN"(4, 6) = 12$ nên nhân tử bằng số của mẫu thức chung là $12$.\
    Luỹ thừa với số mũ cao nhất của nhân tử $x$ là $x$.\
    Luỹ thừa với số mũ cao nhất của nhân tử $x - 1$ là $(x - 1)^2$.\
    Vậy mẫu thức chung cần tìm là $12x(x - 1)^2$.
  ]
]

#luuy()[
  - Trong nhiều tài liệu, mẫu thức chung còn được viết tắt là MTC.
  - Quá trình tìm mẫu thức chung thường được làm trong nháp, không cần trình bày trong bài làm.
]

#phuongphap(tieude: "Quy đồng mẫu thức nhiều phân thức")[
  #cacbuoc()[
    + Phân tích các mẫu thức thành nhân tử rồi tìm mẫu thức chung;
    + Tìm nhân tử phụ của mỗi mẫu thức bằng cách chia mẫu thức chung cho mẫu thức đó;
    + Nhân cả tử và mẫu của mỗi phân thức với nhân tử phụ tương ứng.
  ]
]

#vd()[
  Quy đồng mẫu thức hai phân thức $1/(4x^2 - 8x + 4)$ và $5/(6x^2 - 6x)$.
  #loigiai()[
    Ta có $4x^2 - 8x + 4 = 4(x^2 - 2x + 1) = 4(x - 1)^2$ và $6x^2 - 6x = 6x(x - 1)$ nên mẫu thức chung là $12x(x - 1)^2$.\
    Nhân tử phụ của các mẫu thức lần lượt là $(12x(x - 1)^2)/(4(x - 1)^2) = 3x$ và $(12x(x - 1)^2)/(6x(x - 1)) = 2(x - 1)$.\
    Ta có:
    $ 1/(4x^2 - 8x + 4) = 1/(4(x - 1)^2) = (1 dot 3x)/(4(x - 1)^2 dot 3x) = (3x)/(12x(x - 1)^2); $
    $ 5/(6x^2 - 6x) = 5/(6x(x - 1)) = (5 dot 2(x - 1))/(6x(x - 1) dot 2(x - 1)) = (10(x - 1))/(12x(x - 1)^2). $
  ]
]

#subsection()[Bài tập tự luận]

#bt()[
  Tìm đa thức thích hợp thay vào #box(stroke: 0.5pt, inset: 2pt)[?] trong các đẳng thức sau:
  #listEX()[
    + $(2x + 1)/(x - 1) = (#box(stroke: 0.5pt, inset: 2pt)[?])/(x^2 - 1)$;
    + $(x^2 + 2x)/(x^3 + 8) = (#box(stroke: 0.5pt, inset: 2pt)[?])/(x^2 - 2x + 4)$.
  ]
]

#bt()[
  Rút gọn các phân thức sau:
  #listEX()[
    + $(3x^2 y)/(2x y^5)$;
    + $(3x^2 - 3x)/(x - 1)$;
    + $(a b^2 - a^2 b)/(2a^2 + a)$;
    + $(12(x^4 - 1))/(18(x^2 - 1))$.
  ]
]

#bt()[
  Cho ba đa thức $x^2 - 4x$; $x^2 + 4$; $x^2 + 4x$. Hãy chọn đa thức thích hợp trong ba đa thức đó rồi điền vào chỗ trống trong đẳng thức:  $(dots.h)/(x^2 - 16) = x/(x - 4).$
]

#bt()[
  Chứng tỏ hai phân thức $(a^2 - b^2)/(a^2 b + a b^2)$ và $(a - b)/(a b)$ bằng nhau theo hai cách khác nhau.
]

#bt()[
  Rút gọn các phân thức sau:
  #listEX()[
    + $(3x^2 + 12x y)/(9x^2)$;
    + $(4x^3 - x^4)/(x^2 - 16)$;
    + $(2a - 2)/(a^3 - 1)$.
  ]
]

#bt()[
  Rút gọn các phân thức sau:
  #listEX()[
    + $x/(2x)$;
    + $(2x)/(4y)$;
    + $(-3y)/(6x)$;
    + $(6x^2 y^2)/(8x y^5)$;
    + $(20x^2 y^2)/(15x y^7)$;
    + $(12x^3 y^2)/(18x y^5)$;
    + $(25x^4 y^7)/(40x^5 y^4)$;
    + $(-45x^7 y^4)/(18x^5 y^6)$;
    + $(4x^3 y^5 m^7)/(12x^5 y^2 m^3)$;
    + $(2(x + 1))/(3(x + 1));$
    + $(2y(2m - n))/(y^3(2m - n))$;
    + $((x + 2)^2)/(3(x + 2))$;
    + $(10x y^2(x + y))/(15x y(x + y)^3)$;
    + $(15x(x + 5)^3)/(20x^2(x + 5))$.
  ]
]

#bt()[
  Phân tích tử và mẫu thành nhân tử rồi rút gọn phân thức:
  #listEX()[
    + $(2x + 2)/(x + 1)$;
    + $x^2/(x^2 + 3x)$;
    + $(2x^2 + 2x)/(x + 1)$;
    + $(x^2 + x)/(x + 1)$;
    + $(x^2 - 1)/(x + 1)$;
    + $(x - y)/(x^2 - y^2)$;
    + $(2y(x + 2))/(x^2 - 4)$;
    + $(2x + 4)/(x^2 - 4)$;
    + $(x^2 - x y)/(5y^2 - 5x y)$;
    + $(20x^2 - 45)/((2x + 3)^2)$;
    + $(5x^2 - 10x y)/(2(2y - x)^3)$;
    + $(36(x - 2)^3)/(32 - 16x)$;
    + $(a^2 + 2a b + b^2)/(a + b)$;
    + $(x^2 + 4x + 4)/(3x + 6)$;
    + $(m^2 - 4m + 4)/(2m - 4)$;
    + $(x^2 - 4x + 4)/(2x^2 - 4x)$;
    + $((x + 1)(x - 3))/(x^2 - 6x + 9)$;
    + $(x^2 - 6x + 9)/(5x^2 - 45)$;
    + $(x^2 - y^2)/(a x - a y)$;
    + $(3x^2 - 12x + 12)/(x^4 - 8x)$;
    + $(3x^2 - 6x y + 3y^2)/(9x^2 - 9y^2)$.
  ]
]


#bt()[
  Rút gọn các phân thức sau:
  #listEX()[
    + $(3x^2 y)/(5x y^4)$;
    + $(4x^2 - 4x)/(x - 1)$;
    + $(5x^2 + 5x)/(3x + 3)$;
    + $(a b^2 - a^2 b)/(2a^2 + a)$;
    + $(12(x^4 - 1))/(18(x^2 - 1));$
    + $(12x^2 y(x + y))/(18x y(x + y)^3)$;
    + $(x^3 - 36x)/(x^2 + 6x)$;
    + $(x^2 - 10x + 25)/(x^2 - 5x)$;
    + $(3x - 18)/(x^2 - 12x + 36)$;
    + $(2x^2 - 50)/(x^2 + 10x + 25)$;
    + $(2x^3 - 4x^2 + 2x)/(3x^2 - 3x)$;
    + $(5x y^2 - 10y^2)/(2x^2 y - 8x y + 8y)$.
  ]
]

#bt()[
  Thu gọn rồi tính giá trị biểu thức:
  #listEX()[
    + $A = (x^2 - 4x + 4)/(2x^2 - 4x)$ tại $x = -1/2$;
    + $B = (x^2 - 10x + 25)/(2x^2 - 50)$ tại $x = -3/2$;
    + $C = (3x^2 - 12x + 12)/(x^2 - 4)$ tại $x = -1/2$;
    + $D = (3x^2 - 12x + 12)/(x^2 - 4)$ tại $x = 1/2$.
  ]
]

#bt()[
  Quy đồng mẫu thức các phân thức sau:
  #listEX()[
    + $1/(x + 2)$, $8/(2x - x^2)$;
    + $x^2 + 1$, $x^4/(x^2 - 1)$;
    + $x^3/(x^3 - 3x^2 y + 3x y^2 - y^3)$, $x/(y^2 - x y)$.
  ]
]

#bt()[
  Cho đa thức $B = 2x^3 + 3x^2 - 29x + 30$ và hai phân thức: $x/(2x^2 + 7x - 15)$, $(x + 2)/(x^2 + 3x - 10)$.
  #listEX()[
    + Chia đa thức $B$ lần lượt cho các mẫu thức của hai phân thức đã cho;
    + Quy đồng mẫu thức của hai phân thức đã cho.
  ]
]

#bt()[
  Cho hai phân thức $1/(x^2 - 4x - 5)$ và $2/(x^2 - 2x - 3)$. Chứng tỏ rằng có thể chọn đa thức $x^3 - 7x^2 + 7x + 15$ làm mẫu thức chung để quy đồng mẫu thức hai phân thức đã cho. Hãy quy đồng mẫu thức.
]

#bt()[
  Quy đồng mẫu thức các phân thức sau: $1/(x^2 + 3x - 10)$, $x/(x^2 + 7x + 10)$.
]

#bt()[
  Quy đồng mẫu các phân thức sau:
  #listEX()[
    + $(2 - a)/(2a)$, $1/2$;
    + $5/3$, $(5a - 6)/(3a)$;
    + $(2x)/3$, $(2a x + 3x)/(3a)$;
    + $5/(3b)$, $(9b - 25)/(15b)$;
    + $4/(15x^3 y^5)$, $11/(12x^4 y^2)$;
    + $(2 - a)/(2a)$, $1/2$;
    + $5/3$, $(5a - 6)/(3a)$;
    + $(2x)/3$, $(2a x + 3x)/(3a)$;
    + $5/(x^5 y^3)$, $7/(12x^3 y^4)$;
    + $25/(14x^2 y)$, $14/(21x^5)$;
    + $4/(15x^3 y^5)$, $11/(12x^4 y^2)$;
    + $b/(6a)$, $(4a + 3b^2)/(18a b)$, $x/(9b)$.
  ]
]
