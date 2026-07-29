#import "../style/lib.typ": *
#show: appearance

#section()[Phương trình bậc nhất một ẩn]

#subsection()[Lý thuyết]

#subsubsection()[Phương trình một ẩn]

#dn(tieude: "Phương trình một ẩn")[
  Một _phương trình_ với _ẩn số_ $x$ (hay _ẩn_ $x$) có dạng $A(x) = B(x)$, trong đó vế trái $A(x)$ và vế phải $B(x)$ là hai biểu thức của cùng một biến $x$.
]

#vd()[
  Phương trình nào sau đây là phương trình một ẩn?
  #listEX()[
    + $2x^2=3x$;
    + $3x y=3y^2$;
    + $2t+t^2=sqrt(t)$;
    + $1/z=4$.
  ]
  #loigiai()[
    #dotlineEX(4)
  ]
]

#dn(tieude: "Nghiệm của phương trình")[
  Số $x_0$ gọi là _nghiệm_ của phương trình $A(x) = B(x)$ nếu giá trị của $A(x)$ và $B(x)$ tại $x_0$ bằng nhau.\
  _Giải một phương trình_ là tìm _tất cả_ các nghiệm của nó.
]

#vd()[
  Cho phương trình $3x-5=4+2x$.
  Kiểm tra xem $x=3$ và $x=9$ có là nghiệm của phương trình đã cho không.
  #loigiai()[
    #dotlineEX(4)
  ]
]

#luuy()[
  - Tập hợp tất cả các nghiệm của một phương trình được gọi là tập nghiệm của phương trình đó và thường được kí hiệu là $S$.
]

#vd()[
  Phương trình $2x^2-3x+1=0$ có đúng hai nghiệm là $x=-1$ và $x=-1/2$. Hãy viết tập hợp tất cả các nghiệm của phương trình này.
  #loigiai()[
    #dotlineEX(1)
  ]
]

#luuy()[
  - Ta gọi hai phương trình có cùng tập nghiệm là hai _phương trình tương đương_. Để chỉ hai phương trình tương đương với nhau, ta dùng kí hiệu tương đương "$<=>$". Chẳng hạn: $ x+1=0 <=> x=-1. $
  - Trong chương trình học lớp 8 hiện nay, chúng ta _không_ sử dụng kí hiệu này.
]

#subsubsection()[Phương trình bậc nhất một ẩn và cách giải]

#dn(tieude: "Phương trình bậc nhất một ẩn")[
  Phương trình dạng $a x + b = 0$, với $a$, $b$ là hai số đã cho và $a != 0$, được gọi là phương trình bậc nhất một ẩn $x$.
]

#vd()[
  Phương trình nào sau đây là phương trình bậc nhất một ẩn?
  #listEX(socot: 3)[
    + $-5t+1=0$;
    + $0x+2=0$;
    + $1+2y=0$;
    + $z=4$;
    + $z=0$.
  ]
  #loigiai()[
    #dotlineEX(6)
  ]
]

#pagebreak()

#phuongphap(tieude: "Cách giải phương trình bậc nhất một ẩn")[
  - Phương trình bậc nhất $a x + b = 0$ ($a != 0$) được giải như sau:
    $
      & a x+b=0 && \
      & a x=-b  && "(chuyển vế hạng tử "b" và đổi dấu thành "-b")" \
      & x=-b/a  && "(nhân hai vế với "1/a")"
    $
  - Phương trình bậc nhất $a x + b = 0$ ($a != 0$) luôn có _một nghiệm duy nhất_ $x=-b/a$.
]

#vd()[
  Giải các phương trình sau:
  #listEX()[
    + $2x-13=0$;
    + $3-1/2x=0$.
  ]
  #loigiai()[
    #dotlineEX(5)
  ]
]

#subsubsection()[Phương trình đưa được về dạng *$a x+b=0$*]

Bằng cách biến đổi, ta có thể đưa một số phương trình ẩn $x$ về dạng $a x + b = 0$.
- Nếu phương trình đưa được về dạng $a x+b=0$ với $a!=0$, ta nói phương trình này là _phương trình đưa được về dạng phương trình bậc nhất một ẩn_. Ta thực hiện giải phương trình bậc nhất.
- Nếu đưa về dạng $a x + b = 0$ mà $a=0$ thì:
  - Phương trình vô nghiệm với $b!=0$;
  - Phương trình có vô số nghiệm với $b=0$.

#vd()[
  Giải các phương trình sau:
  #listEX()[
    + $5x-(2-3x)/2=4(x+3)$;
    + $3x-(2+2x)=x+3$;
    + $2x+3=6-(3-2x)$
  ]
  #loigiai()[
    #dotlineEX(10)
  ]
]

#subsection()[Bài tập tự luận]

#bt()[
  Trong các phương trình sau, phương trình nào là phương trình bậc nhất một ẩn? Xác định các hệ số $a$ và $b$ của phương trình bậc nhất một ẩn đó.
  #listEX()[
    + $9x + 4/9 = 0$;
    + $3/2 y - 5 = 4$;
    + $0t + 8 = 0$;
    + $x^2 + 7 = 0$.
  ]
]

#bt()[
  Giải các phương trình sau:
  #listEX()[
    + $6x - 36 = 0$;
    + $5 - 3x = 9$;
    + $3x + 2x + 30 = 0$;
    + $2x - 5 + 4x - 7 = 16$;
    + $5x + 9 - 3x = 18 + 6x - 1$;
    + $1/3 x + 1/2 = x + 2$.
  ]
]

#bt()[
  Giải các phương trình sau:
  #listEX()[
    + $8 - (x - 15) = 2(3 - 2x)$;
    + $6x - 3(x + 2) = 5x - 4$;
    + $7x + 6 = 2(x - 9) - 2$;
    + $5(x + 2) - 8 = 7(2x - 3)$;
    + $5 - (x - 6) = 4(3 - 2x)$;
    + $5 - 3x = 2x + 4(1 - 2x)$;
    + $4(2x + 7) = 15(3x - 7)$;
    + $(y + 5)(y - 5) - (y - 2)^2 = -5$.
  ]
]

#bt()[
  Giải các phương trình sau:
  #listEX()[
    + $(5x - 3)/4 = (x + 2)/3$;
    + $(9x + 5)/6 = 1 - (6 + 3x)/8$;
    + $(2x - 1)/6 + x = (5 - x)/3 - 1$;
    + $4 - (x + 1)/3 = (5 - 2x)/5$;
    + $(x - 2)/4 - (2x - 3)/3 = (x - 18)/6$;
    + $(4x)/3 - (x + 4)/15 = x - 2/5$;
    + $(x - 1)/2 + (x + 1)/3 = (x - 1)/4$;
    + $(x - 2)/4 + (2x - 3)/3 = (x - 18)/6$.
  ]
]

#bt()[
  Tìm $x$, biết rằng nếu lấy $x$ trừ đi $1/2$, rồi nhân kết quả với $1/2$ thì được $1/8$.
]
