
#import "../style/lib.typ": *
#show: appearance

#section()[Phép chia đa thức cho đơn thức]

#subsection()[Lý thuyết]

#subsubsection()[Chia đa thức cho đơn thức]

#quytac(tieude: "Quy tắc chia đơn thức cho đơn thức")[
  + Đơn thức $A$ chia hết cho đơn thức $B$ ($B!=0$) khi mỗi biến của $B$ đều là biến của $A$ với số mũ không lớn hơn số mũ của nó trong $A$.
  + Muốn chia đơn thức $A$ cho đơn thức $B$ (trường hợp chia hết), ta làm như sau:
    #cacbuoc()[
      + Chia hệ số của đơn thức $A$ cho hệ số của đơn thức $B$;
      + Chia luỹ thừa của từng biến trong $A$ cho luỹ thừa của cùng biến đó trong $B$;
      + Nhân các kết quả tìm được với nhau.
    ]
]

#vd()[
  Thực hiện phép chia $(-12x^4 y^2 z) : (5x^2 y^2)$.
  #loigiai()[
    Ta có $(-12x^4 y^2 z) : (5x^2 y^2) = (-12:5) dot (x^4:x^2) dot (y^2:y^2) dot z = -12/5 x^(4-2) y^(2-2) z = -12/5 x^2 z$.
  ]
]

#quytac(tieude: "Quy tắc chia đa thức cho đơn thức")[
  Muốn chia đa thức $A$ cho đơn thức $B$ ta chia từng hạng tử của $A$ cho $B$ rồi cộng các kết quả với nhau.
]

#vd()[
  Thực hiện phép chia $(-12x^4 y^2 z+x^2 y^3) : (5x^2 y^2)$.
  #loigiai()[
    Ta có:
    $
      (-12x^4 y^2 z+x^2 y^3) : (5x^2 y^2) & = (-12x^4 y^2 z) : (5x^2 y^2)+(x^2 y^3) : (5x^2 y^2) \
                                          & = (-12:5) dot (x^4:x^2) dot (y^2:y^2) dot z+(1:5) dot (x^2:x^2) dot (y^3:y^2) \
                                          & = -12/5 x^2 z+1/5 y.
    $
  ]
]

#subsection()[Bài tập tự luận]

#bt()[
  Thực hiện phép chia.
  #listEX[
    + $20x^3 y^5 : (5x^2 y^2)$;
    + $18x^3 y^5 : [3(-x)^3 y^2]$.
  ]
]

#bt()[
  Thực hiện phép chia.
  #listEX[
    + $(4x^3 y^2 - 8x^2 y + 10x y) : (2x y)$;
    + $(7x^4 y^2 - 2x^2 y^2 - 5x^3 y^4) : (3x^2 y)$.
  ]
]

#bt()[
  #listEX()[
    + Tính chiều dài của hình chữ nhật có diện tích bằng $6x y + 10y^2$ và chiều rộng bằng $2y$.
    + Tính diện tích đáy của hình hộp chữ nhật có thể tích bằng $12x^3 - 3x y^2 + 9x^2 y$ và chiều cao bằng $3x$.
  ]
]

#bt()[
  Thực hiện phép chia $8x^6 y^5 z^3$ cho $4x^3 y^4 z^2$.
]

#bt()[
  Thực hiện phép tính.
  #listEX[
    + $x^5 : x^3$;
    + $18x^7 : 6x^4$;
    + $8x^6 y^7 z^2 : 4x^4 y^7$;
    + $15x^2 y^2 : 5x y^2$;
    + $10x^3 y : 2x y$;
    + $6x^2 y^2 z^2 : 3x y$;
    + $(-x y)^(10) : (-x y)^5$;
    + $65x^9 y^5 : (-13x^4 y^4)$;
    + $27/15 x^3 y z^5 : 9/5 x z^2$;
    + $5x^2 y^2 + 9x^3 y^4 : (-3x y^2)$;
    + $(4x^3 y^3 : 2x^2 y) + (5x^2 y : 2x^2 y)$.
  ]
]

#bt()[
  Tính giá trị biểu thức:
  #listEX()[
    + $A = 15x^5 y^3 : 10x y^2$ tại $x = -3$ và $y = 2/3$;
    + $B = -(x^3 y^5 z^2) : (-x^2 y^3 z)^3$ tại $x=1$, $y=-1$ và $z=100$;
    + $C = (-x^3 y)^5 : (-x^(12) y^2)$ tại $x=2$ và $y = -1/2$.
  ]
]

#bt()[
  Tính giá trị của biểu thức $15x^4 y^3 z^2 : 5x y^2 z^2$ với $x=2$, $y=-10$, $z=2024$.
]

#bt()[
  Tính chiều cao của hình hộp chữ nhật có thể tích $V = 24x y^2$ và diện tích đáy bằng $6x y$.
]

#bt()[
  Tính diện tích đáy của hình hộp chữ nhật có thể tích $V = 12x^2 y$ và chiều cao bằng $3y$.
]

#bt()[
  Thực hiện các phép chia đa thức cho đơn thức sau:
  #listEX[
    + $(5x y - 8x^2) : x$;
    + $(x^3 + 12x^2 - 5x) : x$;
    + $(9x^3 y^2 - 2x y^2 + 6x^2 y) : (-3x y)$;
    + $(8x^3 - 6x^2) : (2x^2)$;
    + $(3x^2 y^2 + 6x^2 y^3 - 12x y) : (3x y)$;
    + $(3x^4 y^3 - 9x^2 y^2 + 25x y^3) : (x y^2)$;
    + $(5x^5 y^4 z + 1/2 x^4 y^2 z^3 - 2x y^3 z^2) : (1/4 x y^2 z)$;
    + $(9x^3 y^2 + 5x^2 y - 4x y) : (2x y^2)$;
    + $(12x y^2 + 8x^2 y^2 - 16x y) : (-4x y)$;
    + $(6x y^2 - 9x^2 y + 3x^2 y^2) : (3x y)$.
  ]
]

#bt()[
  Tính chiều cao của hình hộp chữ nhật có thể tích $V = 8x^2 y - 6x y^2$ và diện tích đáy $S = 2x y$.
]

#bt()[
  Tính giá trị biểu thức:
  #listEX()[
    + $A = (15x^5 y^3 - 10x^3 y^2 + 20x^4 y^4) : (5x^2 y^2)$ tại $x = -1$, $y = 2$;
    + $B = [(2x^2 y)^2 + 3x^4 y^3 - 6x^3 y^2] : (x y)^2$ tại $x = y = -2$.
  ]
]

#bt()[
  Thực hiện phép chia:
  #listEX[
    + $20x^3 y^5 : (5x^2 y^2)$;
    + $18x^3 y^5 : [3(-x)^3 y^2]$.
  ]
]

#bt()[
  Thực hiện phép chia:
  #listEX[
    + $(15x^3 y^4 - 9x^2 y^3) : (3x^2 y^2)$;
    + $(4x^3 y^2 - 8x^2 y + 10x y) : (2x y)$;
    + $(7x^4 y^2 - 2x^2 y^2 - 5x^3 y^4) : (3x^2 y)$;
    + $(20x^3 y^2 z + 28x y^3 z^2 - 4x^2 y z^3) : (4x y z)$.
  ]
]

#bt()[
  #immini()[
    Một chiếc xe khách chạy từ Vũng Tàu về TP. Hồ Chí Minh trên quãng đường $(150 x + 2)$ km với vận tốc $(x + 5)$ km/h. Viết biểu thức đại số tính thời gian xe chạy từ Vũng Tàu về TP. Hồ Chí Minh.
  ][
    #image("../imgs/8D1-5-xe-buyt.png", width: 7cm)
  ]
]

#bt()[
  #immini()[
    Tuyến buýt đường sông Sài Gòn (Saigon Waterbus) đã khai trương tuyến số 1, bắt đầu từ bến Bạch Đằng (Quận 1, TP. HCM) đi qua 4 bến và kết thúc ở bến Linh Đông (Quận Thủ Đức). Từ bến Linh Đông đi bến Bạch Đằng, buýt qua sông chạy quãng đường $(5 x + 1)$ km. Thời gian chạy suốt tuyến là $1/10 x$ giờ. Viết biểu thức đại số tính vận tốc từ bến Linh Đông đến bến Bạch Đằng theo $x$.
  ][
    #image("../imgs/8D1-5-xe-buyt-duong-song-sai-gon.png", width: 7cm)
  ]
]

#bt()[
  Một người làm vườn có khu đất hình chữ nhật có chiều dài $(x + 2)$ mét, biết chu vi vườn là $(150 x + 8)$ mét. Viết biểu thức đại số tính chiều rộng của khu vườn trên.
]

#bt()[
  Ao Bà Om, hay Ao Vuông, là một thắng cảnh độc đáo và nổi tiếng ở tỉnh Trà Vinh, Việt Nam. Mặt nước ao trong xanh và phẳng lặng được phủ bởi hoa sen, hoa súng. Ao được bao bọc xung quanh bởi các gò cát mấp mô với các hàng cây sao, cây dầu cổ thụ hàng trăm năm tuổi có rễ nổi lên khỏi mặt đất tạo nên những hình thù kỳ lạ. Ao được đào ở trung tâm miếng đất hình vuông có cạnh là $(x + 400)$ mét. Ao hình chữ nhật có chiều dài $(x + 200)$ mét. Biết diện tích của ao ít hơn diện tích miếng đất là $200(3 x + 8)$ m$""^2$. Viết biểu thức đại số tính chiều rộng của ao.
  #align(center)[
    #box()[
      #image("../imgs/8D1-5-ao-ba-om-2.png", height: 5cm)
    ]
    #h(2em)
    #box()[
      #image("../imgs/8D1-5-ao-ba-om.png", height: 5cm)
    ]
  ]
]
