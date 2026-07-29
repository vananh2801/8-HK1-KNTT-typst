#import "../style/lib.typ": *
#show: appearance

#section()[Cách tính xác suất của biến cố bằng tỉ số]

#subsection()[Lý thuyết]

#dl(tieude: "Công thức tính xác suất")[
  Giả thiết rằng các kết quả có thể của một hành động hay thực nghiệm là _đồng khả năng_. Khi đó, _xác suất của biến cố_ $E$, kí hiệu là $P(E)$, bằng tỉ số giữa số kết quả thuận lợi cho biến cố $E$ và tổng số kết quả có thể:
  $ P(E) = ("Số kết quả thuận lợi cho "E)/("Tổng số kết quả có thể"). $
]

#phuongphap(tieude: [Các bước tính xác suất của biến cố])[
  Việc tính xác suất của một biến cố $E$ trong trường hợp các kết quả có thể của một hành động hay thực nghiệm là đồng khả năng sẽ gồm các bước sau:
  #cacbuoc()[
    + Đếm các kết quả có thể (thường bằng cách liệt kê);
    + Chỉ ra các kết quả có thể là đồng khả năng;
    + Đếm các kết quả thuận lợi cho biến cố $E$;
    + Lập tỉ số giữa số kết quả thuận lợi cho biến cố $E$ và tổng số kết quả có thể.
  ]
]

#vd()[
  Một túi đựng 20 viên kẹo vị trái cây giống hệt nhau nhưng khác loại, trong đó có 4 viên kẹo dâu tây, 6 viên kẹo chanh, 5 viên kẹo dừa và 5 viên kẹo nho. Bạn Lan lấy ngẫu nhiên một viên kẹo từ túi. Tính xác suất để Lan lấy được:
  #listEX()[
    + Viên kẹo chanh;
    + Viên kẹo dừa.
  ]
  #loigiai()[
    #dotlineEX(7)
  ]
]

#vd()[
  Trên giá sách của thư viện có 15 cuốn sách, trong đó có một số cuốn tiểu thuyết. Người thủ thư đặt thêm 5 cuốn tiểu thuyết thư viện mới mua vào giá sách. Bạn Nam đến mượn sách, chọn ngẫu nhiên một cuốn sách trên giá. Biết rằng xác suất để chọn được cuốn tiểu thuyết là $3/4$. Hỏi lúc đầu trên giá sách có bao nhiêu cuốn tiểu thuyết?
  #loigiai()[
    #dotlineEX(5)
  ]
]

#vd()[
  Một túi đựng 12 viên bi có hình dạng như nhau, chỉ khác màu, trong đó có 5 viên bi màu đỏ, 4 viên bi màu xanh và 3 viên bi màu vàng. Lấy ngẫu nhiên một viên bi trong túi. Hỏi có tất cả bao nhiêu kết quả có thể?
  #loigiai()[
    #dotlineEX(5)
  ]
]

#bt()[
  Một hộp có 1 quả bóng vàng và 5 quả bóng xanh có kích thước và khối lượng như nhau. Lâm lấy ra ngẫu nhiên 1 quả bóng từ hộp. Theo em, khả năng Lâm lấy được bóng xanh bằng mấy lần khả năng lấy được bóng vàng?
]

#bt()[
  #immini()[
    Gieo một con xúc xắc 6 mặt cân đối và đồng chất. Tính xác suất của các biến cố sau:
    - $A$: "Gieo được mặt có số chấm là số nguyên tố".
    - $B$: "Gieo được mặt có nhiều hơn 4 chấm".
  ][
    #image("../imgs/8X8-2-xuc-xac.jpeg", width: 2.5cm)
  ]
]

#bt()[
  Tỉ lệ thành viên nữ của một câu lạc bộ giao tiếp tiếng Anh là $60%$. Tổng số thành viên của câu lạc bộ là 35 người.
  #listEX()[
    + Gặp ngẫu nhiên 1 thành viên của câu lạc bộ, tính xác suất thành viên đó là nữ.
    + Em có nhận xét gì về tỉ lệ thành viên nữ và xác suất trên?
  ]
]

#bt()[
  Một khu phố có 200 người lao động, mỗi người làm việc ở một trong năm lĩnh vực là Kinh doanh, Sản xuất, Giáo dục, Y tế và Dịch vụ. Biểu đồ trong hình bên thống kê tỉ lệ người lao động thuộc mỗi lĩnh vực nghề nghiệp. Gặp ngẫu nhiên một người lao động của khu phố.
  #align(center)[
    #set text(size: 10pt)
    *Tỉ lệ ngành nghề thuộc một số lĩnh vực*
    #import "@preview/cetz:0.5.2"
    #cetz.canvas(length: 0.9cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), content: (padding: 3pt))
      let O = (0, 0)
      let R = 2.6 // Độ rộng
      let arr_value = (0, 24, 54, 64, 76, 100) // Các giá trị
      let arr_wrong_value = none // Các giá trị giả
      let arr_color = (
        // Màu
        blue.lighten(40%),
        orange.lighten(40%),
        green.lighten(20%),
        yellow.lighten(40%),
        red.lighten(40%),
      )
      let arr_name = ([Kinh doanh], [Sản xuất], [Giáo dục], [Y tế], [Dịch vụ]) // Tên cột
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
            #box(fill: white, inset: 2pt)[
              #if arr_wrong_value != none {
                let value = arr_wrong_value.at(i + 1) - arr_wrong_value.at(i)
                [#value%]
              } else {
                let value = arr_value.at(i + 1) - arr_value.at(i)
                [#value%]
              }
            ]
          ],
        )
      }
      content((O.at(0) + R + 1, O.at(1)), anchor: "west")[
        #for i in range(0, arr_name.len()) {
          box(fill: arr_color.at(i), width: 1cm, height: 0.6cm, stroke: 1pt + black)
          h(1em)
          arr_name.at(i)
          linebreak()
        }
      ]
    })
  ]
  #listEX()[
    + Tính xác suất người đó có công việc thuộc lĩnh vực Giáo dục.
    + Tính xác suất người đó có công việc không thuộc lĩnh vực Y tế hay Dịch vụ.
  ]
]

#bt()[
  Trong hộp có 5 quả bóng có kích thước và khối lượng giống nhau và được đánh số lần lượt là $5; 8; 10; 13; 16$. Lấy ra ngẫu nhiên 1 quả bóng từ hộp. Tính xác suất của các biến cố:

  $A$: "Số ghi trên quả bóng là số lẻ".

  $B$: "Số ghi trên quả bóng chia hết cho 3".

  $C$: "Số ghi trên quả bóng lớn hơn 4".
]

#bt()[
  Một hộp chứa 3 viên bi xanh, 4 viên bi đỏ và 5 viên bi vàng có kích thước và khối lượng giống nhau. Lấy ra ngẫu nhiên 1 viên bi từ hộp. Tính xác suất của các biến cố:

  $A$: "Viên bi lấy ra có màu xanh".

  $B$: "Viên bi lấy ra không có màu đỏ".
]

#bt()[
  Trong hộp có 10 tấm thẻ cùng loại, trên mỗi thẻ có ghi một số tự nhiên. Lấy ra ngẫu nhiên 1 thẻ từ hộp. Biết rằng xác suất lấy được thẻ ghi số chẵn gấp 4 lần xác suất lấy được thẻ ghi số lẻ. Hỏi trong hộp có bao nhiêu thẻ ghi số lẻ?
]

#bt()[
  #immini()[
    Một trường trung học cơ sở có 600 học sinh. Tỉ lệ phần trăm học sinh mỗi khối lớp được cho ở biểu đồ trong hình bên. Chọn ngẫu nhiên một học sinh trong trường để đi dự phỏng vấn. Biết rằng mọi học sinh của trường đều có khả năng được lựa chọn như nhau.
    #listEX()[
      + Tính xác suất của biến cố "Học sinh được chọn thuộc khối 9".
      + Tính xác suất của biến cố "Học sinh được chọn không thuộc khối 6".
    ]
  ][
    #align(center)[
      #set text(size: 10pt)
      *Tỉ lệ học sinh mỗi khối của trường*
      #import "@preview/cetz:0.5.2"
      #cetz.canvas(length: 0.9cm, {
        import cetz.draw: *
        import cetz.angle: *
        set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), content: (padding: 3pt))
        let O = (0, 0)
        let R = 2 // Độ rộng
        let arr_value = (0, 28, 50, 76, 100) // Các giá trị
        let arr_wrong_value = none // Các giá trị giả
        let arr_color = (
          // Màu
          blue.lighten(40%),
          orange.lighten(40%),
          green.lighten(20%),
          yellow.lighten(40%),
          red.lighten(40%),
        )
        let arr_name = ([Khối 6], [Khối 7], [Khối 8], [Khối 9]) // Tên cột
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
              O.at(0) + calc.cos(90deg - 360deg / 100 * (arr_value.at(i) + arr_value.at(i + 1)) / 2) * R * 0.6,
              O.at(0) + calc.sin(90deg - 360deg / 100 * (arr_value.at(i) + arr_value.at(i + 1)) / 2) * R * 0.6,
            ),
            [
              #box(fill: white, inset: 2pt)[
                #if arr_wrong_value != none {
                  let value = arr_wrong_value.at(i + 1) - arr_wrong_value.at(i)
                  [#value%]
                } else {
                  let value = arr_value.at(i + 1) - arr_value.at(i)
                  [#value%]
                }
              ]
            ],
          )
        }
        content((O.at(0) + R + 1, O.at(1)), anchor: "west")[
          #for i in range(0, arr_name.len()) {
            box(fill: arr_color.at(i), width: 1cm, height: 0.6cm, stroke: 1pt + black)
            h(1em)
            arr_name.at(i)
            linebreak()
          }
        ]
      })
    ]
  ]
]
