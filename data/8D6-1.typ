#import "../style/lib.typ": *
#show: appearance

#section()[Phân thức đại số]

#subsection()[Lý thuyết]

#subsubsection()[Phân thức đại số]

#dn(tieude: "Phân thức đại số")[
  Một _phân thức đại số_ (hay nói gọn là _phân thức_) là một biểu thức có dạng $A/B$, trong đó $A$, $B$ là những đa thức và $B$ khác đa thức không.\
  $A$ được gọi là _tử thức_ (hay _tử_), $B$ được gọi là _mẫu thức_ (hay _mẫu_).
]

#nhanxet()[
  - Mỗi đa thức $A$ được coi là một phân thức với mẫu thức bằng 1. Ta có thể viết thành $A/1$.
  - Số 0 và số 1 cũng là những phân thức đại số.
]

#vd()[
  Chỉ ra các phân thức và mẫu thức tương ứng trong các biểu thức sau đây:\
  #align(
    center,
  )[$sqrt(x^2 + 2x)/x$; $quad$ $1/(3x + 1)$; $quad$ $(2x^2 + y)/(4y)$; $quad$ $sqrt(3)$; $quad$ $3x^3 + 2y$.]
  #loigiai()[
    Các biểu thức $1/(3x + 1)$; $(2x^2 + y)/(4y)$; $sqrt(3)$; $3x^3 + 2y$ là các phân thức.\
    Biểu thức $sqrt(x^2 + 2x)/x$ không phải là phân thức, vì $sqrt(x^2 + 2x)$ không phải là đa thức.
  ]
]

#subsubsection()[Điều kiện xác định và giá trị của phân thức]

#dn(tieude: "Điều kiện xác định của phân thức")[
  _Điều kiện xác định_ của phân thức $A/B$ là điều kiện của biến để mẫu thức $B$ khác $0$.
]

#dn(tieude: "Giá trị của phân thức tại các giá trị của biến")[
  Khi thay các biến của phân thức đại số bằng các giá trị nào đó (sao cho phân thức xác định), rồi thực hiện các phép tính thì ta nhận được _giá trị_ của phân thức đại số đó tại các giá trị của biến.
]

#pagebreak()

#vd()[
  Cho phân thức $P = (x^3 + 1)/(x - 1)$.
  #listEX()[
    + Viết điều kiện xác định phân thức $P$. Phân thức $P$ có xác định tại $x = 1$ không?
    + Tính giá trị của phân thức $P$ tại $x = 2$, $x = 3$.
  ]
  #loigiai()[
    #listEX()[
      + Phân thức $P$ xác định khi $x - 1 != 0$ hay $x != 1$.\
      Do đó, phân thức $P$ không xác định tại $x = 1$.
      + Tại $x = 2$, ta có $P = (2^3 + 1)/(2 - 1) = 9/1 = 9$.\
      Tại $x = 3$, ta có $P = (3^3 + 1)/(3 - 1) = 28/2 = 14$.
    ]
  ]
]

#subsubsection()[Hai phân thức bằng nhau]

#dn(tieude: "Hai phân thức bằng nhau")[
  Ta nói hai phân thức $A/B$ và $C/D$ _bằng nhau_ nếu $A dot D = B dot C$. Ta viết
  $ A/B = C/D " nếu " A D=B C. $
]

#vd()[
  Mỗi cặp phân thức sau đây có bằng nhau không? Tại sao?
  #listEX()[
    + $(x y^2)/(x y + y)$ và $(x y)/(x + 1)$;
    + $(x y - y)/x$ và $(x y - x)/y$.
  ]
  #loigiai()[
    #listEX()[
      + Ta có $x y^2 dot (x + 1) = x^2 y^2 + x y^2$;\
        $x y dot (x y + y) = x^2 y^2 + x y^2$.\
        Do đó, $x y^2 dot (x + 1) = x y dot (x y + y)$.\
        Vậy $(x y^2)/(x y + y) = (x y)/(x + 1)$.
      + Ta có $(x y - y) dot y = x y^2 - y^2$;\
        $(x y + x) dot x = x^2 y + x^2$.\
        Vì $x y^2 - y^2 != x^2 y + x^2$ nên $(x y - y) dot y != (x y + x) dot x$.\
        Vậy $(x y - y)/x != (x y - x)/y$.
    ]
  ]
]

#subsection()[Bài tập tự luận]

#bt()[
  Trong các biểu thức sau, biểu thức nào là phân thức?
  #listEX()[
    + $(3x + 1)/(2x - 1)$;
    + $2x^2 - 5x + 3$;
    + $(x + sqrt(x))/(3x + 2)$.
  ]
]

#bt()[
  Viết điều kiện xác định của các phân thức sau:
  #listEX()[
    + $(4x - 1)/(2x - 6)$;
    + $(x - 10)/(x + 3y)$;
    + $3x^2 - x + 7$.
  ]
]

#bt()[
  Tìm giá trị của phân thức:
  #listEX()[
    + $A = (3x^2 + 3x)/(x^2 + 2x + 1)$ tại $x = -4$;
    + $B = (a b - b^2)/(a^2 - b^2)$ tại $a = 4$, $b = -2$.
  ]
]

#bt()[
  Mỗi cặp phân thức sau có bằng nhau không? Tại sao?
  #listEX()[
    + $(3a c)/(a^3 b)$ và $(6c)/(2a^2 b)$;
    + $(3a b - 3b^2)/(6b^2)$ và $(a - b)/(2b)$.
  ]
]

#bt()[
  Tìm giá trị của phân thức:
  #listEX()[
    + $(x^2 - 3x + 2)/(x + 4)$ tại $x = -3$; $x = 2$;
    + $(2x^2 - 4x + 5)/(2x - 1)$ tại $x = -2$; $x = 4$;
    + $(2x^2 - x + 7)/(x + 4)$ tại $x = -1$; $x = 3$;
    + $(x^2 + 5x - 3)/(x - 2)$ tại $x = 2$; $x = -3$.
  ]
]

#bt()[
  Tìm giá trị của phân thức:
  #listEX()[
    + $(x y - 2y^2)/(x + 2y)$ tại $x = 3$, $y = -1$;
    + $(2x^2 - 3x y)/(x - 3y)$ tại $x = 1$, $y = -2$;
    + $(3y^2 - 2x y + 1)/(x^2 - x y)$ tại $x = 2$, $y = -1$;
    + $(x^2 + 3x y - y^2)/(2x - y + 3)$ tại $x = 3$, $y = 2$.
  ]
]

#bt()[
  Tìm giá trị của phân thức:
  #listEX()[
    + $(x - 2)/(x + 2)$ tại $x = 0$;
    + $(3(x - 2))/(x + 2)$ tại $x = 3$;
    + $(x - 3)/(5(x + 3))$ tại $x = -1/2$;
    + $((x - 1)^2)/(x y - 1)$ tại $x = 2$; $y = -2$.
  ]
]

#bt()[
  Cho phân thức $A = (x^2 - 2x + 5)/(2x + 6)$.
  #listEX()[
    + Tính giá trị của phân thức tại $x = -2$; $x = -1$; $x = 0$; $x = 2$; $x = 3$.
    + Tại $x = -3$ thì phân thức có xác định không? Tại sao?
  ]
]

#bt()[
  Cho phân thức $B = (x^2 - 3x y + 5)/(x + 2y)$.
  #listEX()[
    + Tính giá trị của phân thức tại $x = 1$, $y = -2$.
    + Tại $x = 2$, $y = 5$ thì phân thức có xác định không? Tại sao?
  ]
]

#bt()[
  Viết điều kiện xác định của mỗi phân thức:
  #listEX()[
    + $5/(3a - 6)$;
    + $(x^2 y - 3)/(x - 2y)$.
  ]
]

#bt()[
  Giá thành trung bình của một chiếc áo sơ mi được một xí nghiệp sản xuất cho bởi biểu thức $ C(x) = (0","0002x^2 + 120x + 1000)/x, $ trong đó $x$ là số áo được sản xuất và $C$ tính bằng nghìn đồng. Tính $C$ khi $x = 100$, $x = 1000$.
]

#bt()[
  Tìm điều kiện xác định của các phân thức sau:
  #listEX()[
    + $1/(x + 1)$;
    + $1/(x - 1)$;
    + $2/(x + 3)$;
    + $1/(x - 5)$;
    + $(2x + 3)/(3x - 4)$;
    + $(4x - 3)/(2x + 8)$;
    + $1/(x(x - 3))$;
    + $-57/(x^2 - 5x)$;
    + $1/(x^2 + 3x)$;
    + $(8x + 7)/(x^2 - 1)$;
    + $(2x - 3)/(x^2 - 4)$;
    + $(4x + 1)/(4x^2 - 1)$;
    + $(4x - 1)/(5x^2 + x)$;
    + $(5x)/(x^2 - x y)$;
    + $(4x + 6)/((x + 1)(x + 3))$;
    + $(2x + 7)/((x - 1)(x + 2))$;
    + $(2x + 7)/(x^2 + 2x - x - 2)$;
    + $(9x - 7)/(x^2 + 2x + 1)$;
    + $(1 - a x^2)/(x^2 - 2x + 1)$;
    + $(9 - x)/(x^2 - 4x + 4)$.
  ]
]

#bt()[
  Mỗi cặp phân thức sau đây có bằng nhau không? Tại sao?
  #listEX()[
    + $(x y^2)/(x y + y)$ và $(x y)/(x + 1)$;
    + $(x y - y)/x$ và $(x y - x)/y$.
  ]
]

#bt()[
  Dùng định nghĩa hai phân thức bằng nhau chứng tỏ rằng:
  #listEX()[
    + $(x - 1)/(x^2 - 1) = 1/(x + 1)$;
    + $(3x^2 y)/(6x^3) = x/(2y^2)$;
    + $(5y)/7 = (20x y)/(28x)$;
    + $(x^2 y^3)/5 = (7x^3 y^4)/(35x y)$;
    + $(3x + 3)/(3x) = (x + 1)/x$;
    + $(3x(x + 5))/(2(x + 5)) = (3x)/2$;
    + $(x^2(x + 2))/(x(x + 2)^2) = x/(x + 2)$;
    + $(2x(x - 1))/((x + 1)(x - 1)) = (2x)/(x + 1)$;
    + $(x + 2)/(x - 1) = ((x + 2)(x + 1))/(x^2 - 1)$.
  ]
]

#bt()[
  Ba phân thức $(x^2 - 2x - 3)/(x^2 + x)$; $(x - 3)/x$; $(x^2 - 4x + 3)/(x^2 - x)$ có bằng nhau không?
]

#bt()[
  Dùng định nghĩa hai phân thức bằng nhau, hãy tìm đa thức $A$ trong mỗi đẳng thức sau:
  #listEX()[
    + $A/(2x - 1) = (6x^2 + 3x)/(4x^2 - 1)$;
    + $(4x^2 - 3x - 7)/A = (4x - 7)/(2x + 3)$;
    + $(4x^2 - 7x + 3)/(x^2 - 1) = A/(x^2 + 2x + 1)$;
    + $(x^2 - 2x)/(2x^2 - 3x - 2) = (x^2 + 2x)/A$.
  ]
]

#bt()[
  Trong các biểu thức sau, biểu thức nào là phân thức?
  $ (5x + 1)/(2x - 1); quad 2x^2 - 7x + 1; quad (2x - sqrt(x))/(x + 3). $
]

#bt()[
  Viết điều kiện xác định của các phân thức sau:
  #listEX()[
    + $(3a + b - 1)/(a + 4)$;
    + $(3x - 8)/(x - 4y)$;
    + $3x^2 - x + 7$;
    + $(5x - 2)/(3x - 8)$;
    + $(3x^2 - x - 2)/(2x - 7)$;
    + $(2 - 4x)/(10 - 5x)$;
    + $(x^2 - 4x + 4)/((x - 3)(2x + 5))$;
    + $(7 - 3x + 4x^2)/((5 - x)(2x - 6))$.
  ]
]

#bt()[
  Tìm giá trị của phân thức:
  #listEX()[
    + $A = (5x - 7)/(x^2 - 6)$ tại $x = 3$;
    + $B = (x^2 + 5x - 4)/(x^2 + 2x - 3)$ tại $x = 2$;
    + $C = (3x^2 + 3x)/(x^2 + 2x + 1)$ tại $x = -4$;
    + $D = (a b - b^2)/(a^2 - b^2)$ tại $a = 4$, $b = -2$.
  ]
]

#bt()[
  Mỗi cặp phân thức sau có bằng nhau không? Tại sao?
  #listEX()[
    + $(3a c)/(a^3 b)$ và $(9c)/(3a^2 b)$;
    + $(3a b - 3b^2)/(6b^2)$ và $(a - b)/(2b)$;
    + $(3a b^3 + 3a b)/(2a^2 b^2 + 2a^2)$ và $(3a^2 b + 3b)/(2a^3 + 2a)$;
    + $(2x^2 y)/(4x y^3)$ và $(5x^2 y^2(x - 2y))/(10x y^5(x - 2y))$.
  ]
]

#bt()[
  Một ca-nô xuôi dòng từ bến $A$ đến bến $B$ mất 5 giờ và ngược dòng từ bến $B$ về bến $A$ mất 7 giờ. Tính quãng đường từ bến $A$ đến bến $B$.
  #listEX()[
    + Gọi $x$ (km) là chiều dài quãng đường từ bến $A$ đến bến $B$ $(x > 0)$. Hãy viết phân thức biểu thị vận tốc xuôi dòng và ngược dòng của ca nô.
    + Tính vận tốc xuôi dòng của ca nô khi biết quãng đường $A B$ dài 70 km.
  ]
]

#bt()[
  Một đoàn xe vận tải nhận chuyên chở 15 tấn hàng. Khi sắp khởi hành thì 1 xe phải điều đi làm công việc khác. Gọi số xe thực tế chở hàng là $x$ (xe), $(x in NN^*)$.
  #listEX()[
    + Hãy viết phân thức biểu thị số tấn hàng mỗi xe phải chở theo kế hoạch.
    + Hãy viết phân thức biểu thị số tấn hàng thực tế mỗi xe phải chở.
    + Tính số tấn hàng mỗi xe phải chở theo kế hoạch, biết rằng thực tế đoàn xe có tất cả 5 xe chở hàng.
  ]
]

#bt()[
  Một ô tô chạy với vận tốc trung bình là $x$ (km/h).
  #listEX()[
    + Viết biểu thức biểu thị thời gian (tính bằng giờ) ô tô chạy hết quãng đường 160 km.
    + Tính thời gian ô tô đi được 160 km trong trường hợp vận tốc trung bình của ô tô là 80 (km/h).
  ]
]

#bt()[
  Mai đạp xe từ nhà tới câu lạc bộ nấu ăn có quãng đường dài 10 km với vận tốc $x$ (km/h). Lượt về thuận chiều gió nên tốc độ nhanh hơn lượt đi là 2 km/h.
  #listEX()[
    + Viết biểu thức $T$ biểu thị thời gian Mai đi từ câu lạc bộ nấu ăn về đến nhà.
    + Tính thời gian Mai đi từ câu lạc bộ nấu ăn về đến nhà biết $x = 10$.
  ]
]

#bt()[
  Hai bến sông A và B cách nhau 40 km. Cùng một lúc với ca nô xuôi dòng từ bến A, có một chiếc bè trôi từ bến A với vận tốc 3 km/h. Sau khi đến B, ca nô trở về bến A ngay và gặp bè khi bè đã trôi được 8 km.
  #listEX()[
    + Gọi vận tốc của ca nô là $x$ (đơn vị: km/h; điều kiện: $x > 3$). Viết phân thức biểu thị thời gian xuôi dòng của ca nô.
    + Viết phân thức biểu thị thời gian ngược dòng của ca nô.
  ]
]

#bt()[
  Một đội thợ mỏ lập kế hoạch khai thác than, theo kế hoạch đội thợ phải khai thác được 900 tấn than. Khi thực hiện, mỗi ngày đội khai thác nhiều hơn kế hoạch 20 tấn than. Do đó, đội không những đã hoàn thành kế hoạch trước một ngày mà còn vượt mức 60 tấn than.
  #listEX()[
    + Gọi số tấn than đội thợ phải khai thác mỗi ngày theo kế hoạch là $x$ (tấn) $(x in NN^*)$. Viết phân thức biểu thị thời gian đội khai thác than theo kế hoạch.
    + Viết biểu thức biểu thị thời gian thực tế đội khai thác than.
  ]
]

#bt()[
  Một chiếc khăn trải bàn hình chữ nhật có diện tích khăn trải bàn là 675 dm$""^2$.
  #listEX()[
    + Gọi chiều rộng của chiếc khăn trải bàn là $x$ (dm) $(x > 0)$. Hãy viết phân thức biểu thị chiều dài của chiếc khăn trải bàn.
    + Tính chiều dài của chiếc khăn trải bàn biết rằng chiều rộng của chiếc khăn trải bàn là 15 dm.
  ]
]

#bt()[
  Một hàng rào được dựng bao quanh một mảnh đất hình chữ nhật có diện tích 90 m$""^2$. Gọi $y$ (m) là độ dài một cạnh của hàng rào.
  #listEX()[
    + Viết một biểu thức theo $y$ biểu diễn độ dài cạnh còn lại của hàng rào hình chữ nhật đó.
    + Tính chu vi của mảnh đất hình chữ nhật đó khi $y = 5$ m.
  ]
]
