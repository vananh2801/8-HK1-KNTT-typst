#import "../style/lib.typ": *
#show: appearance

#section()[Kết quả có thể và kết quả thuận lợi]

#subsection()[Lý thuyết]

#subsubsection()[Kết quả có thể của hành động, thực nghiệm]

Trong thực tế, ta thường gặp các hành động, thực nghiệm mà kết quả của chúng không thể biết trước khi thực hiện. Tuy nhiên, trong nhiều trường hợp ta có thể xác định được tất cả các _kết quả có thể xảy ra_ (gọi tắt là các _kết quả có thể_) của hành động, thực nghiệm đó.

#vd()[
  Chọn ngẫu nhiên một chữ cái trong cụm từ “TOÁN HỌC VÀ TUỔI TRẺ”. Liệt kê tất cả các kết quả có thể của hành động này.
  #loigiai()[
    #dotlineEX(2)
  ]
]

#vd()[
  Một túi đựng 12 viên bi có hình dạng như nhau, chỉ khác màu, trong đó có 5 viên bi màu đỏ, 4 viên bi màu xanh và 3 viên bi màu vàng. Lấy ngẫu nhiên một viên bi trong túi. Hỏi có tất cả bao nhiêu kết quả có thể?
  #loigiai()[
    #dotlineEX(5)
  ]
]

#subsubsection()[Kết quả thuận lợi cho một biến cố]

#dn(tieude: "Kết quả thuận lợi")[
  Xét một biến cố $E$, mà $E$ có xảy ra hay không xảy ra tuỳ thuộc vào kết quả của hành động, thực nghiệm $T$.

  Một kết quả có thể của $T$ để biến cố $E$ xảy ra được gọi là kết quả thuận lợi cho biến cố $E$.
]

#vd()[
  Đội văn nghệ khối 8 của một trường Trung học cơ sở có 14 bạn, trong đó có 4 bạn nam lớp 8A, 5 bạn nữ lớp 8B, 3 bạn nam lớp 8C và 2 bạn nữ lớp 8D. Chọn ngẫu nhiên một bạn trong đội văn nghệ khối 8 để tham gia tiết mục văn nghệ của trường.
  #listEX()[
    + Liệt kê tất cả các kết quả có thể của hành động trên. Có tất cả bao nhiêu kết quả có thể?
    + Liệt kê các kết quả thuận lợi cho các biến cố sau:
      - $E$: "Chọn được một bạn lớp 8A";
      - $F$: "Chọn được một bạn nữ".
  ]
  #loigiai()[
    #dotlineEX(12)
  ]
]

#subsection()[Bài tập tự luận]

#bt()[
  Bạn An thực nghiệm gieo một con xúc xắc.
  #listEX()[
    + Liệt kê các kết quả có thể của thực nghiệm trên.
    + Liệt kê các kết quả thuận lợi cho các biến cố sau:
      - $A$: "Số chấm xuất hiện trên con xúc xắc là hợp số";
      - $B$: "Số chấm xuất hiện trên con xúc xắc nhỏ hơn 5";
      - $C$: "Số chấm xuất hiện trên con xúc xắc là số lẻ".
  ]
]

#bt()[
  Một hộp đựng 12 tấm thẻ, được ghi số $1; 2;...; 12$. Bạn Nam rút ngẫu nhiên một tấm thẻ từ trong hộp.
  #listEX()[
    + Liệt kê các kết quả có thể của hành động trên.
    + Liệt kê các kết quả thuận lợi cho các biến cố sau:
      - $A$: "Rút được tấm thẻ ghi số chẵn";
      - $B$: "Rút được tấm thẻ ghi số nguyên tố";
      - $C$: "Rút được tấm thẻ ghi số chính phương".
  ]
]

#bt()[
  Bạn An có 16 cuốn sách khác nhau, trong đó có 4 cuốn sách tiểu thuyết, 5 cuốn sách Lịch sử, 3 cuốn sách Khoa học tự nhiên và 4 cuốn sách Toán. Các cuốn sách này được xếp tuỳ ý trong tủ sách. Bạn Bình đến chơi và lấy ngẫu nhiên một cuốn sách trong tủ sách của An.
  #listEX()[
    + Liệt kê các kết quả có thể của hành động trên.
    + Liệt kê các kết quả thuận lợi cho các biến cố sau:
      - $E$: "Bình lấy được một cuốn sách tiểu thuyết";
      - $F$: "Bình lấy được một cuốn sách Khoa học tự nhiên hoặc cuốn sách Toán";
      - $G$: "Bình lấy được một cuốn sách không phải là sách Lịch sử".
  ]
]

#bt()[
  Một hộp chứa 12 tấm thẻ cùng loại được đánh số lần lượt từ 11 đến 22. Chọn ra ngẫu nhiên 1 thẻ từ hộp. Xét các biến cố sau:
  - $A$: "Số ghi trên thẻ là số nguyên tố";\
  - $B$: "Số ghi trên thẻ là số chẵn".\
  Hãy nêu các kết quả thuận lợi cho mỗi biến cố $A$ và $B$.
]

#bt()[
  #immini()[
    Trên bàn có một tấm bìa hình tròn được chia thành 8 hình quạt bằng nhau và được đánh số từ 1 đến 8 như hình bên. Xoay tấm bìa quanh tâm hình tròn và xem khi tấm bìa dừng lại, mũi tên chỉ vào ô ghi số nào. Xét các biến cố sau:
    - $A$: "Mũi tên chỉ vào ô ghi số chẵn";
    - $B$: "Mũi tên chỉ vào ô ghi số chia hết cho 4";
    - $C$: "Mũi tên chỉ vào ô ghi số nhỏ hơn 3".
    Hãy nêu các kết quả thuận lợi cho mỗi biến cố trên.
  ][
    #set text(size: 13pt)
    #import "@preview/cetz:0.5.2"
    #cetz.canvas(length: 0.9cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), content: (padding: 3pt))
      let O = (0, 0)
      let R = 2.6 // Độ rộng
      let arr_value = (0, 12.5, 25, 37.5, 50, 62.5, 75, 87.5, 100) // Các giá trị
      let arr_color = (
        // Màu
        blue.lighten(40%),
        orange.lighten(40%),
        green.lighten(20%),
        yellow.lighten(40%),
        red.lighten(40%),
        purple.lighten(40%),
        gray.lighten(40%),
        white,
      )
      let arr_name = ([KH], [KT-CN], [VH-NT], [Sách khác]) // Tên cột
      for i in range(0, arr_value.len() - 1) {
        arc(
          (
            O.at(0) + calc.cos(90deg - 360deg / 100 * arr_value.at(i)) * R,
            O.at(0) + calc.sin(90deg - 360deg / 100 * arr_value.at(i)) * R,
          ),
          start: 90deg - 360deg / 100 * arr_value.at(i),
          stop: 90deg - 360deg / 100 * arr_value.at(i + 1),
          radius: R,
          mode: "PIE",
          fill: arr_color.at(i),
          stroke: 1pt,
        )
        content(
          (
            O.at(0) + calc.cos(90deg - 360deg / 100 * (arr_value.at(i) + arr_value.at(i + 1)) / 2) * R * 0.7,
            O.at(0) + calc.sin(90deg - 360deg / 100 * (arr_value.at(i) + arr_value.at(i + 1)) / 2) * R * 0.7,
          ),
          [
            #box(fill: white, inset: 3pt, radius: 5pt, stroke: 1pt + black)[
              #let value = i + 1
              *#value*
            ]
          ],
        )
      }
      line((O), (rel: (110deg, R / 2), to: O), mark: (end: "stealth"), stroke: 5pt + black)
    })
  ]
]
