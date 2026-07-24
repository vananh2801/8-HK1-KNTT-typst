#import "../style/lib.typ": *
#show: appearance

#section()[Phân tích đa thức thành nhân tử]

#subsection()[Lý thuyết]

_Phân tích đa thức thành nhân tử_ (hay thừa số) là biến đổi đa thức đó thành một tích của những đa thức. Mỗi đa thức này gọi là một _nhân tử_ của đa thức đã cho.

Ở chương trình học của lớp 8, ta có ba phương pháp như sau:
- Phương pháp đặt nhân tử chung;
- Phương pháp sử dụng hằng đẳng thức;
- Phương pháp nhóm hạng tử.

Đây là quá trình biến đổi khá phức tạp, ta cần thử nhiều giải pháp đến khi hoàn thành.

#subsubsection()[Phương pháp đặt nhân tử chung]

#phuongphap(tieude: "Phương pháp đặt nhân tử chung")[
  #cacbuoc()[
    + Tìm một đơn thức mà tất cả hạng tử của đa thức đều chia hết cho đơn thức này. Đơn thức này gọi là _nhân tử chung_.
    + Biến đổi từng hạng tử thành tích của _nhân tử chung_ và một đơn thức.
    + Áp dụng tính chất $A dot B + A dot C = A dot (B + C)$ để phân tích đa thức thành nhân tử.
  ]
]

#vd()[
  Phân tích đa thức $A = 5x^2 y + 2x - 3x y$.
  #loigiai()[
    Ta có $A = 5x^2 y + 2x - 3x y = x dot 5x y + x dot 2 - x dot 3y = x(5x^2 y + 2 - 3y)$ *(hoặc $x(5x y + 2 - 3y)$)*.
  ]
]

#subsubsection()[Phương pháp sử dụng hằng đẳng thức]

#phuongphap(tieude: "Phương pháp sử dụng hằng đẳng thức")[
  #cacbuoc()[
    + Xác định hằng đẳng thức có thể sử dụng _(cần chú ý các điểm chung giữa hằng đẳng thức với đa thức về số hạng tử, số mũ,...)_.
    + Sắp xếp thứ tự (nếu cần) và biến đổi các hạng tử của đa thức về giống với các hằng đẳng thức đáng nhớ.
    + Áp dụng hằng đẳng thức để phân tích đa thức thành nhân tử.
  ]
]

#luuy()[
  Khi dùng hằng đẳng thức để phân tích đa thức thành nhân tử, ta có thể thu được kết quả là $A^2$ hoặc $B^3$ với $A$, $B$ là một đa thức. Cần chú ý rằng $A^2 = A dot A$ và $B^3 = B dot B dot B$ đều là các tích.
]

#vd()[
  Phân tích các đa thức sau thành nhân tử:
  #listEX()[
    + $4x^2 + 4x + 1$;
    + $x^2 - 6x + 9$;
    + $4x^2 - y^2$;
    + $27x^3 - y^3$;
  ]
  #loigiai()[
    #listEX()[
      + Ta có:
        $   & 4x^2 + 4x + 1 \
        = & (2x)^2 + 2 dot 2x dot 1 \
        = & (2x + 1)^2 $.
      + Ta có:
        $   & x^2 - 6x + 9 \
        = & x^2 - 2 dot x dot 3 + 3^2 \
        = & (x - 3)^2 $.
      + Ta có:
        $   & 4x^2 - y^2 \
        = & (2x)^2 - y^2 \
        = & (2x + y)(2x - y) $.
      + Ta có:
        $   & 27x^3 - y^3 \
        = & (3x)^3 - y^3 \
        = & (3x - y)[(3x)^2 + 3x dot y + y^2] \
        = & (3x - y)(9x^2 + 3x y + y^2) $.
    ]
  ]
]

#vd()[
  Phân tích các đa thức sau thành nhân tử:
  #listEX()[
    + $9x y^2 + 27x^3 + y^3 + 27x^2 y$;
    + $-6x^2 y - 8y^3 + x^3 + 12x y^2$.
  ]
  #loigiai()[
    #listEX()[
      + $   & 9x y^2 + 27x^3 + y^3 + 27x^2 y \
        = & 27x^3 + 27x^2 y + 9x y^2 + y^3 \
        = & (3x)^3 + 3 dot (3x)^2 dot y + 3 dot 3x dot y^2 + y^3 \
        = & (3x + y)^3 $.
      + $   & -6x^2 y - 8y^3 + x^3 + 12x y^2 \
        = & x^3 - 6x^2 y + 12x y^2 - 8y^3 \
        = & x^3 - 3 dot x^2 dot 2y + 3 dot x dot (2y)^2 - (2y)^3 \
        = & (x - 2y)^3 $.
    ]
  ]
]

#pagebreak()

#subsubsection()[Phương pháp nhóm hạng tử]

#phuongphap(tieude: "Phương pháp nhóm hạng tử")[
  #cacbuoc()[
    + Sử dụng tính chất kết hợp của phép cộng để nhóm các hạng tử có nhân tử chung hoặc có thể tạo thành hằng đẳng thức _(cần chú ý dấu của hạng tử khi nhóm)_.
    + Áp dụng tính chất $A dot B + A dot C = A dot (B + C)$ để phân tích từng nhóm ở bước 1 thành nhân tử _(nếu các nhóm sau khi phân tích không có nhân tử chung thì phải thực hiện cách nhóm khác)_.
    + Áp dụng tính chất $A dot B + A dot C = A dot (B + C)$ để phân tích đa thức thành nhân tử.
  ]
]

#vd()[
  Phân tích các đa thức sau thành nhân tử:
  #listEX()[
    + $x^2 - 3x + x y - 3y$;
    + $x^3 + 2x^2 - 2x - 1$.
  ]
  #loigiai()[
    #listEX()[
      + $   & x^2 - 3x + x y - 3y \
        = & (x^2 - 3x) + (x y - 3y) \
        = & x(x - 3) + y(x - 3) \
        = & (x - 3)(x + y) $.
      + $   & x^3 + 2x^2 - 2x - 1 \
        = & (x^3 - 1) + (2x^2 - 2x) \
        = & (x - 1)(x^2 + x + 1) + 2x(x - 1) \
        = & (x - 1)(x^2 + 3x + 1) $.
    ]
  ]
]

#subsection()[Bài tập tự luận]

#bt()[
  Phân tích các đa thức sau thành nhân tử:
  #listEX()[
    + $x^3 + 4x$;
    + $6a b - 9a b^2$;
    + $2a(x - 1) + 3b(1 - x)$;
    + $(x - y)^2 - x(y - x)$.
  ]
]

#bt()[
  Phân tích các đa thức sau thành nhân tử:
  #listEX()[
    + $4x^2 - 1$;
    + $(x + 2)^2 - 9$;
    + $(a + b)^2 - (a - 2b)^2$.
  ]
]

#bt()[
  Phân tích các đa thức sau thành nhân tử:
  #listEX()[
    + $4a^2 + 4a + 1$;
    + $-3x^2 + 6x y - 3y^2$;
    + $(x + y)^2 - 2(x + y)z + 4z^2$.
  ]
]

#bt()[
  Phân tích các đa thức sau thành nhân tử:
  #listEX()[
    + $8x^3 - 1$;
    + $x^3 + 27y^3$;
    + $x^3 - y^6$.
  ]
]

#bt()[
  Phân tích các đa thức sau thành nhân tử:
  #listEX()[
    + $4x^3 - 16x$;
    + $x^4 - y^4$;
    + $x y^2 + x^2 y + 1/4 y^3$;
    + $x^2 + 2x - y^2 + 1$.
  ]
]

#bt()[
  Phân tích các đa thức sau thành nhân tử:
  #listEX()[
    + $x^2 - x y + x - y$;
    + $x^2 + 2x y - 4x - 8y$;
    + $x^3 - x^2 - x + 1$.
  ]
]

#bt()[
  Cho $y > 0$. Tìm độ dài cạnh của hình vuông có diện tích bằng $49y^2 + 28y + 4$.
]

#bt()[
  Phân tích các đa thức sau thành nhân tử:
  #listEX()[
    + $A = x y^2 + x^2 y$;
    + $B = 8x - 4x^3$;
    + $C = 15x^4 - 5x^2 y^3$;
    + $D = 6x^3 y^3 - 9x y^3 z + x^2 y$;
    + $E = 5x^2 - 10x y$;
    + $F = 12x^3 - 3x y^2$.
  ]
]

#bt()[
  Phân tích các đa thức sau thành nhân tử bằng phương pháp đặt nhân tử chung:
  #listEX()[
    + $2a + 2b$;
    + $2a - 2b$;
    + $-2a - 2b$;
    + $2a + 4b - 6c$;
    + $3a - 6b - 9c$;
    + $-4a - 8b - 12c$;
    + $-5x - 10x y - 15y$;
    + $-7a - 14a b - 21b$;
    + $6x y - 12x - 18y$;
    + $8x y - 24y + 16x$;
    + $9a b - 18a + 9$;
    + $4a x - 2a y - 2$;
    + $x y - x$;
    + $a x + a$;
    + $-2a x - 4a y$;
    + $2a x - 2a y + 2a$;
    + $m x + m y + m$;
    + $-a x - a y - a$.
  ]
]

#bt()[
  Phân tích các đa thức sau thành nhân tử bằng phương pháp đặt nhân tử chung:
  #listEX()[
    + $-a x^2 - a x - a$;
    + $a - 2a x - 4a y$;
    + $5a x - 15a y + 20a$;
    + $3a^2 x - 6a^2 y + 12a$;
    + $2a x y - 4a^2 x y^2 + 6a^3 x^2$;
    + $5a^2 x y - 10a^3 x - 15a y$;
    + $m(a - b) - m^2(a - b)$;
    + $12x^3 y - 6x y + 3x$;
    + $2(x - y) - a(x - y)$;
    + $m x(a + b) - m(a + b)$;
    + $x(a - b) - y(b - a)$;
    + $m x y - m^2 x + m y$;
    + $2m x - 4m^2 x y + 6m x$;
    + $a^2 b - 2a b^2 + a b$;
    + $5a^2 b - 2a b^2 + a b$;
    + $-3x^2 y^3 - 6x^3 y^2 - x^2 y^2$.
  ]
]

#bt()[
  Phân tích các đa thức sau thành nhân tử:
  #listEX()[
    + $a^3 - a^2 b + a - b$;
    + $x^3 + 3x^2 - x y^2 - 3y^2$.
  ]
]

#bt()[
  Phân tích các đa thức sau thành nhân tử (phương pháp nhóm hạng tử):
  #listEX()[
    + $x(a + b) - a - b$;
    + $x(a - b) + a - b$;
    + $x(a + b) + a + b$;
    + $m(x - y) + x - y$;
    + $x + y + a(x + y)$;
    + $x - y - a(x - y)$;
    + $a + b + x(a + b)$;
    + $a(x + y) - x - y$;
    + $x(a - b) - a + b$;
    + $-a - b + x(a + b)$;
    + $x z + y z - 5(x + y)$;
    + $a x + a y - b x - b y$;
    + $a x + a y - 2x - 2y$;
    + $-2x - 2y + a x + a y$;
    + $x^2 + x y - 2x - 2y$;
    + $x^2 - x y + 2x - 2y$;
    + $10a x - 5a y + 2x - y$;
    + $3x^2 - 3x y - 5x + 5y$;
    + $5x^2 y + 5x y^2 - a^2 x - a^2 y$;
    + $x^3 + 2x^2 - 2x - 1$.
  ]
]

#bt()[
  Phân tích các đa thức sau thành nhân tử:
  #listEX()[
    + $9x^2 - 25$;
    + $4x^2 - 4x y + y^2$;
    + $x^3 - 8$;
    + $3a x^3 y^3 + 6a$.
  ]
]

#bt()[
  Phân tích thành nhân tử bằng phương pháp dùng hằng đẳng thức:
  #listEX()[
    + $a^2 - 4b^2$;
    + $4a^2 - b^2$;
    + $a^2 - 25$;
    + $25a^2 - 1$;
    + $a^2 - 9$;
    + $9a^2 - 1$;
    + $121 - a^2$;
    + $64a^2 - 9$;
    + $81a^2 - 25$;
    + $144a^2 - 81$;
    + $25a^2 - 49b^4$;
    + $100a^2 - 9b^4$;
    + $a^4 - 4b^2$;
    + $x^2 + 10x + 25$;
    + $1/4 a^2 - b^2$;
    + $1/4 a^2 - 1/9 b^2$;
    + $1/25 - 36x^2$;
    + $(a - b)^2 - c^2$;
    + $4a^2 - (a + b)^2$;
    + $49a^2 - (2a - b)^2$;
    + $81a^2 - (5a - 3b)^2$;
    + $(5a - b)^2 - (2a + 3b)^2$;
    + $(4a + 3b)^2 - (b - 2a)^2$.
  ]
]

#bt()[
  Phân tích thành nhân tử bằng phương pháp dùng hằng đẳng thức:
  #listEX()[
    + $x^2 + 8x + 16$;
    + $x^2 + 6x + 9$;
    + $x^2 + 14x + 49$;
    + $16x^2 + 8x + 1$;
    + $4x^4 + 20x^2 + 25$;
    + $9x^4 + 24x^2 + 16$;
    + $25x^2 - 20x y + 4y^2$;
    + $4x^2 - 12x y + 9y^2$;
    + $25x^2 - 10x y + y^2$;
    + $x^4 - 4x^2 y + 4y^2$;
    + $1/27 + a^3$;
    + $8x^6 - 27y^3$;
    + $8x^3 + 27y^3$;
    + $1/8 x^3 - 8$;
    + $1/64 x^6 - 125y^3$;
    + $(a + b)^3 - c^3$;
    + $x^3 - (y - 1)^3$;
    + $125 - (x + 2)^3$;
    + $(x + 3)^3 - 8$;
    + $(x - 5)^3 - 27$;
    + $(x + 1)^3 - 125$;
    + $(x + 4)^3 - 64$;
    + $x^6 + 1$;
    + $x^6 - 1$.
  ]
]

#bt()[
  Phân tích thành nhân tử bằng phương pháp dùng hằng đẳng thức:
  #listEX()[
    + $(a + b)^2 - 4$;
    + $(a - 2b)^2 - 4b^2$;
    + $(a + 3b)^2 - 9b^2$;
    + $(a - 5b)^2 - 16b^2$;
    + $9x^2 - 30x + 25$;
    + $9x^4 - 12x^2 y + 4y^2$;
    + $9x^6 - 12x^7 + 4x^8$;
    + $m^3 + 27$;
    + $x^3 + 8$;
    + $x^6 - y^6$;
    + $x^3 + 3x^2 + 3x + 1$;
    + $x^3 + 6x^2 + 12x + 8$;
    + $m^3 - 3m^2 + 3m - 1$;
    + $m^3 - 6m^2 + 12m - 8$.
  ]
]

#bt()[
  Tìm một hình hộp chữ nhật có thể tích $2x^3 - 18x$ (với $x > 3$) mà độ dài các cạnh đều là biểu thức chứa $x$.
]

#bt()[
  Phân tích các đa thức sau thành nhân tử:
  #listEX()[
    + $x^3 + 5x$;
    + $4a b - 16b^2$;
    + $6a b - 9a b^2$;
    + $2a(x - 1) + 3b(1 - x)$;
    + $2x(x - 3) - 3(3 - x)$;
    + $(x - y)^2 - x(y - x)$.
  ]
]

#bt()[
  Phân tích các đa thức sau thành nhân tử:
  #listEX()[
    + $4x^2 - 1$;
    + $(x + 2)^2 - 9$;
    + $x^2 - 9y^2$;
    + $(a + b)^2 - (a - 2b)^2$;
    + $x^2 + 2x y + y^2 - 16$;
    + $5x^3 - 20x$.
  ]
]

#bt()[
  Phân tích các đa thức sau thành nhân tử:
  #listEX()[
    + $4a^2 + 4a + 1$;
    + $-3x^2 + 6x y - 3y^2$;
    + $(x + y)^2 - 2(x + y)z + 4z^2$.
  ]
]

#bt()[
  Phân tích các đa thức sau thành nhân tử:
  #listEX()[
    + $8x^3 - 1$;
    + $x^3 + 27y^3$;
    + $64x^3 - 1$;
    + $x^3 + 1/27$;
    + $x^3 - y^6$;
    + $8x^3 + 27y^6$.
  ]
]

#bt()[
  Điền vào chỗ trống:
  #listEX()[
    + $(x - dots.h)^2 = x^2 - dots.h + 25$;
    + $27x^3 + dots.h = (3x + z)(dots.h - 3x z + z^2)$;
    + $(x - dots.h)^3 = x^3 - x^2 + dots.h - 1/27$;
    + $4x^2 - dots.h = (2x + dots.h)(2x - 5y)$.
  ]
]

#bt()[
  Phân tích các đa thức sau thành nhân tử:
  #listEX()[
    + $4x^3 - 16x$;
    + $x^4 - y^4$;
    + $3x^2 y - 6x y^2 + 3y^3$;
    + $x^2 + y^2 - 4 + 2x y$;
    + $x^2 + 2x - y^2 + 1$;
    + $36x^2 - y^2 - 6y - 9$;
    + $9x^2 - 6x + 1 - 16y^2$;
    + $4a^2 + 4a b + b^2 - 9$;
    + $x^2 - 36y^2 + 2x + 1$;
    + $a^2 - b^2 - 12a + 12b$;
    + $x y^2 + x^2 y + 1/4 y^3$;
    + $x^2 - 25y^2 - 6x + 9$;
    + $4x^2 - 25y^2 + 4x + 1$;
    + $x^2 - y^2 + 2024x - 2024y$;
    + $4x^2 - 4x + 1 - 25y^2$;
    + $3x^2 y - 12x y + 15y$.
  ]
]

#bt()[
  Phân tích các đa thức sau thành nhân tử:
  #listEX()[
    + $5x(2x - 1) - 3 + 6x$;
    + $x^2 - x y + x - y$;
    + $x^2 + 2x y - 8x - 16y$;
    + $2x^2 - 4x + x y - 2y$;
    + $x^2 + 2x y - 4x - 8y$;
    + $x^3 - x + 3x^2 - 3$;
    + $a x + 4y + 2x + 2a y$;
    + $2x y + 4y^2 + 5x + 10y$;
    + $3x^2 - 6x y + 8x - 16y$;
    + $x^3 - x^2 - x + 1$.
  ]
]

#bt()[
  Cho $y > 0$. Tìm độ dài cạnh của hình vuông có diện tích bằng $49y^2 + 28y + 4$.
]

#bt()[
  Phân tích các đa thức sau thành nhân tử:
  #listEX()[
    + $y(x - y) - (x - y)$;
    + $x y - y^2 - x + y$;
    + $5x^2 + 5x y - x - y$;
    + $5x^2 - 5x y - x + y$;
    + $10a x - 5a y + 2x - y$;
    + $2x^2 - 2x y - x + y$;
    + $5x^2 - 5x y - 7x + 7y$;
    + $x^2 + x y - 13x - 13y$;
    + $2x^2 + 2x + x y + y$;
    + $a b - a c - b^2 + b c$;
    + $5x^2 + 10x y + 5y^2$;
    + $6x^2 + 12x y + 6y^2$;
    + $2x^3 + 4x^2 y + 2x y^2$;
    + $-3x^4 y - 6x^3 y^2 - 3x^2 y^3$;
    + $4x^5 y^2 + 8x^4 y^3 + 4x^3 y^4$;
    + $-3x^2 - 12x - 12$;
    + $2x^3 + 8x^2 + 8x$;
    + $-3x^4 y - 12x^3 y - 12x^2 y$;
    + $4x^5 y^2 + 16x^4 y^2 + 16x^3 y^2$;
    + $5x^4 y^2 + 20x^3 y^2 + 20x^2 y^2$.
  ]
]

#bt()[
  Phân tích các đa thức sau thành nhân tử:
  #listEX()[
    + $(a^2 + 4)^2 - 16a^2$;
    + $(a^2 + 9)^2 - 36a^2$;
    + $(a^2 + 4b^2)^2 - 16a^2 b^2$;
    + $36a^2 - (a^2 + 9)^2$;
    + $100a^2 - (a^2 + 25)^2$;
    + $4a^2 - x^2 - 2x - 1$;
    + $25a^2 b^2 - 4x^2 + 4x - 1$;
    + $36x^2 - a^2 + 10a - 25$;
    + $x^2 - 2x + 1 - a^2 - 2a b - b^2$;
    + $1 - 2m + m^2 - x^2 - 4x - 4$;
    + $m^2 - 6m + 9 - x^2 + 4x y - 4y^2$;
    + $4x^2 - 4x y + y^2 - 25a^2 + 10a - 1$.
  ]
]

#bt()[
  Phân tích thành nhân tử (phối hợp các phương pháp).
  #listEX()[
    + $5a^2 - 5$;
    + $10a^3 - 10a$;
    + $3x^3 - 12x$;
    + $-12x^3 y + 75x y^3$;
    + $9x y - 4a^2 x y$;
    + $a^2 - b^2 + 3a + 3b$;
    + $x^2 - y^2 + a x - a y$;
    + $x^2 - y^2 - 5x + 5y$;
    + $x^2 - 9 + (x - 3)^2$;
    + $x^2 - 4 + (x + 2)^2$;
    + $2x m^3 - 2x$;
    + $8a^3 x - 27b^3 x$;
    + $-4 + 32a^3 b^3$;
    + $5x y - 40a^3 b^3 x y$;
    + $2x^3 + 16$;
    + $-5 - 5x^3 y^3$;
    + $27x y + x y(a + b)^3$;
    + $8x y^3 + x(x - y)^3$;
    + $x^2 - (a + b)x y + a b y^2$;
    + $x^2 - (2a + b)x y + 2a b y^2$;
    + $a b(x^2 + y^2) + x y(a^2 + b^2)$;
    + $x y(a^2 + b^2) - a b(x^2 + y^2)$;
    + $(x y + a b)^2 + (a y - b x)^2$.
  ]
]

#bt()[
  Phân tích các đa thức sau thành nhân tử.
  #listEX()[
    + $x^2 + 9 - 16y^2 + 6x$;
    + $x^2 - 9 + y^2 + 2x y$;
    + $x^2 - 4x + 4 - 9y^2$;
    + $x^2 - 4x y + 4y^2 - 81$;
    + $25 - 10x - 9y^2 + x^2$;
    + $9y^2 - 4x^2 + 4x - 1$;
    + $x^2 - 2x - 4y^2 + 4y$;
    + $64 - 4x^2 + 12x y - 9y^2$;
    + $6x^2 + 6y^2 - 24 + 12x y$;
    + $9x^2 - 6x + 1 - 25$;
    + $x^2 + 4x + 4 - 49y^2$;
    + $a^3 + 9a - a b^2 - 6a^2$;
    + $9x^2 + 6x + 1 - 25$;
    + $a^2 + 6a - 4b^2 + 9$;
    + $5x^2 - 10x + 5 - 45t^2$;
    + $x^2 - 36y^2 t^2 - 10x + 25$;
    + $x^2 - 2x y + y^2 - 16z^2$;
    + $8x^2 - 16x + 8 - 32y^2$;
    + $4x^2 - 4x + 1 - 81a^2$;
    + $x^2 - 6x y + 9y^2 - 121$;
    + $12x^2 - 24x + 12 - 3y^2$;
    + $a^2 + 6a - b^2 + 9$;
    + $x^3 - 4x^2 - 25x y^2 + 4x$;
    + $x^2 - y^2 + 14x + 49$.
  ]
]

#bt()[
  Chứng minh các đẳng thức sau:
  #listEX()[
    + $(a + b)^2 - (a - b)^2 = 4a b$;
    + $(a + b)^2 + (a - b)^2 = 2(a^2 + b^2)$;
    + $(a + b)^2 - 4a b = (a - b)^2$;
    + $(a - b)^2 + 4a b = (a + b)^2$;
    + $a^3 + b^3 = (a + b)^3 - 3a b(a + b)$;
    + $a^3 - b^3 = (a - b)^3 + 3a b(a - b)$;
    + $a^3 + b^3 + c^3 - 3a b c = (a + b + c)(a^2 + b^2 + c^2 - a b - b c - c a)$.
  ]
]

#bt()[
  Phân tích các đa thức sau thành nhân tử:
  #listEX()[
    + $x^2 - 2x - 3$;
    + $x^2 + 2x - 3$;
    + $x^2 - 4x - 5$;
    + $x^2 + 4x - 5$;
    + $x^2 - 6x - 7$;
    + $x^2 - 5x + 6$;
    + $x^2 + 5x + 6$;
    + $x^2 - 7x + 12$;
    + $3x^2 + x - 2$;
    + $x^2 - 9x + 20$;
    + $x^2 - x - 20$;
    + $4x^2 - 7x - 2$;
    + $4x^2 + 5x - 6$;
    + $9x^2 - 6x - 3$;
    + $2x^2 - 3x - 2$;
    + $3x^2 + x - 2$;
    + $3x^2 + 10x + 3$;
    + $6x^2 + 7x + 2$;
    + $x^2 - x y - 2y^2$;
    + $x^2 - 3x y + 2y^2$;
    + $x^2 - x y - 6y^2$;
    + $2x^2 - 3x y - 2y^2$;
    + $2x^2 + 5x y + 2y^2$;
    + $3x^2 + 8x y - 3y^2$;
    + $x^2 - x - x y - 2y^2 + 2y$;
    + $x^2 + 2y^2 - 3x y + x - 2y$.
  ]
]

#bt()[
  Phân tích các đa thức sau thành nhân tử:
  #listEX()[
    + $x^2 - x - 2$;
    + $x^2 + 2x - 3$;
    + $x^2 - 4x - 5$;
    + $x^2 - 6x - 7$;
    + $x^2 + 6x - 7$;
    + $x^2 - 8x - 9$;
    + $x^2 - 5x + 6$;
    + $x^2 + 5x + 6$;
    + $x^2 + 7x + 12$;
    + $x^2 - x - 2$;
    + $x^2 + x - 2$;
    + $x^2 - 9x + 20$;
    + $x^2 + x - 20$;
    + $4x^2 + 4x - 3$;
    + $4x^2 - 7x - 2$;
    + $4x^2 + 5x - 6$;
    + $4x^2 + 15x + 9$;
    + $9x^2 - 6x - 3$;
    + $2x^2 - 3x - 2$;
    + $6x^2 + 7x + 2$;
    + $x^2 - x - 12$;
    + $x^2 + x y - 2y^2$;
    + $x^2 - 3x y + 2y^2$;
    + $x^2 - x y - 6y^2$;
    + $2x^2 - 3x y - 2y^2$.
  ]
]

#bt()[
  Phân tích thành nhân tử.
  #listEX()[
    + $x^2 + 9 - 16y^2 + 6x$;
    + $x^2 - 9 + y^2 + 2x y$;
    + $x^2 - 4x + 4 - 9y^2$;
    + $x^2 - 4x y + 4y^2 - 81$;
    + $25 - 10x - 9y^2 + x^2$;
    + $9y^2 - 4x^2 + 4x - 1$;
    + $x^2 - 2x - 4y^2 + 4y$;
    + $x^2 - 4x + 4 - 9y^2$;
    + $169 - a^2 + 2a b - b^2$;
    + $a^2 + 6a - 4b^2 + 9$;
    + $4x - 4 + 9y^2 - x^2$;
    + $5x^2 - 10x + 5 - 45t^2$;
    + $x^2 - 36y^2 t^2 - 10x + 25$;
    + $9x^2 - 16y^2 + 6x + 1$;
    + $x^2 - 2x y + y^2 - 16z^2$;
    + $x^2 - y^2 + 14x + 49$;
    + $x^2 - 4x + 4 - 81a^2$;
    + $16 + 8x + x^2 - 25y^2$;
    + $x^2 + 1 - 4y^2 + 2x$;
    + $x^2 - 10x + 25 - 9y^2$;
    + $25 - x^2 + 10x y - 25y^2$;
    + $x^2 + 8x - 25y^2 + 16$;
    + $9x^2 - 6x + 1 - 36y^2$.
  ]
]
