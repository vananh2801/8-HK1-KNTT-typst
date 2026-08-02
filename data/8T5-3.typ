#import "../style/lib.typ": *
#show: appearance

#section()[Phân tích số liệu thống kê dựa vào biểu đồ]

#subsection()[Lý thuyết]

#subsubsection()[Các lưu ý khi đọc và diễn giải biểu đồ]

#nhanxet()[
  - Trong biểu đồ cột, khi gốc của trục đứng khác 0 thì tỉ lệ chiều cao của các cột không bằng tỉ lệ số liệu mà chúng biểu diễn.
  - Trong biểu đồ đoạn thẳng, khi các điểm quan sát trên trục ngang không đều nhau, ta không thể dựa vào độ dốc để kết luận về tốc độ tăng, giảm của đại lượng được biểu diễn.
]

#subsubsection()[Đọc và phân tích số liệu từ biểu đồ]

#luuy()[
  - Khi phân tích số liệu, ta có thể kết hợp thông tin từ hai hay nhiều biểu đồ.
  - Để so sánh sự thay đổi theo thời gian của hai hay nhiều đại lượng, người ta thường biểu diễn chúng trên cùng biểu đồ
]

#subsection()[Bài tập tự luận]

#bt()[
  Quan sát biểu đồ tỉ lệ phần trăm số xe đạp một cửa hàng đã bán được theo màu sơn trong tháng sau đây.
  #align(center)[
    #set text(size: 10pt)
    *Tỉ lệ phần trăm số xe đạp bán được theo màu sơn*
    #import "@preview/cetz:0.5.2"
    #cetz.canvas(length: 0.9cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), content: (padding: 3pt))
      let O = (0, 0)
      let R = 2.6 // Độ rộng
      let arr_value = (0, 60, 75, 85, 100) // Các giá trị
      let arr_wrong_value = none // Các giá trị giả
      let arr_color = (
        // Màu
        blue.lighten(20%),
        red.lighten(20%),
        green.lighten(20%),
        gray.lighten(20%),
      )
      let arr_name = ([Xanh dương], [Đỏ], [Xanh lá], [Xám bạc]) // Tên cột
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
  Theo em, chủ cửa hàng nên đặt thêm cho xe đạp màu gì?
]

#pagebreak()

#bt()[
  Đọc biểu đồ biểu diễn số máy cày có trong năm xã sau đây và trả lời các câu hỏi bên dưới.
  #align(center)[
    #set text(size: 10pt)
    *Số lượng máy cày của năm xã*
    #import "@preview/cetz:0.5.2"
    #cetz.canvas(length: 1cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), content: (padding: 6pt))
      let O = (0, 0)
      let W = 10 // Chiều rộng Ox
      let H = 5 // Chiều cao Oy
      let y_step = 8 // Bước nhảy trục Oy
      let col-w = 0.5 // Độ rộng cột
      let x = (O.at(0) + W + 1, 0)
      let y = (0, O.at(0) + H + 1)
      line(O, x, mark: (end: "stealth"))
      line(O, y, mark: (end: "stealth"))
      content(x, anchor: "north-east", [*Xã*]) // Tên trục Ox
      content(y, anchor: "north-east", [*Số máy cày*]) // Tên trục Oy
      let arr_color = (
        // Màu
        blue.lighten(40%),
        orange.lighten(40%),
        green.lighten(20%),
        yellow.lighten(40%),
        red.lighten(40%),
      )
      let arr_value = ((22,), (45,), (25,), (19,), (15,)) // Giá trị các cột
      let arr_value_max = 48
      let arr_wrong_value = none
      let arr_X_name = ([Xã A], [Xã B], [Xã C], [Xã D], [Xã E])
      let cols-pos = (W - 2) / arr_X_name.len()
      for i in range(0, arr_X_name.len()) {
        let value = arr_value.at(i)
        for j in range(0, value.len()) {
          rect(
            (cols-pos * (i + 1) + col-w * (j - value.len() / 2), 0),
            (cols-pos * (i + 1) + col-w * (j + 1 - value.len() / 2), H / arr_value_max * value.at(j)),
            fill: arr_color.at(j),
          )
          content(
            (cols-pos * (i + 1) + col-w * (j + 0.5 - value.len() / 2), H / arr_value_max * value.at(j)),
            [#value.at(j)],
            anchor: "south",
          )
        }
        content((cols-pos * (i + 1), 0), [#arr_X_name.at(i)], anchor: "north")
      }
      for i in range(0, calc.ceil(arr_value_max / y_step) + 1) {
        line((-0.1, H / arr_value_max * i * y_step), (0.1, H / arr_value_max * i * y_step))
        let curr_value = i * y_step
        content((0, H / arr_value_max * i * y_step), [#curr_value], anchor: "east")
      }
    })
  ]
  #listEX()[
    + Xã nào có nhiều máy cày nhất? Xã nào có ít máy cày nhất?
    + Trong tình huống xã có trên 20 máy cày cần đầu tư một trạm bảo trì và sửa chữa riêng, theo em đó là những xã nào?
  ]
]

#bt()[
  Một số công ty sản xuất đồng hồ đeo tay quảng cáo rằng đồng hồ của họ chống thấm nước. Sau khi cơ quan kiểm định chất lượng kiểm tra, kết quả được công bố như biểu đồ sau:
  #align(center)[
    #set text(size: 10pt)
    *Kết quả kiểm định chất lượng đồng hồ*
    #import "@preview/cetz:0.5.2"
    #cetz.canvas(length: 1cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), content: (padding: 6pt))
      let O = (0, 0)
      let W = 9 // Chiều rộng Ox
      let H = 5 // Chiều cao Oy
      let y_step = 50 // Bước nhảy trục Oy
      let col-w = 0.6 // Độ rộng cột
      let x = (O.at(0) + W + 1, 0)
      let y = (0, O.at(0) + H + 1)
      line(O, x, mark: (end: "stealth"))
      line(O, y, mark: (end: "stealth"))
      content(x, anchor: "north-east", [*Loại đồng hồ*]) // Tên trục Ox
      content(y, anchor: "north-east", [*Số lượng*]) // Tên trục Oy
      let arr_color = (
        // Màu
        blue.lighten(40%),
        orange.lighten(40%),
        green.lighten(20%),
        yellow.lighten(40%),
        red.lighten(40%),
      )
      let arr_value = ((200, 400), (150, 40), (200, 25), (100, 40), (300, 40)) // Giá trị các cột
      let arr_value_max = 350
      let arr_wrong_value = none
      let arr_name = ([Số đồng hồ được kiểm tra], [Số đồng hồ bị thấm nước])
      let arr_X_name = ([A], [B], [C], [D], [E])
      let cols-pos = (W - 2) / arr_X_name.len()
      for i in range(0, arr_X_name.len()) {
        let value = arr_value.at(i)
        for j in range(0, value.len()) {
          rect(
            (cols-pos * (i + 1) + col-w * (j - value.len() / 2), 0),
            (cols-pos * (i + 1) + col-w * (j + 1 - value.len() / 2), H / arr_value_max * value.at(j)),
            fill: arr_color.at(j),
          )
          content(
            (cols-pos * (i + 1) + col-w * (j + 0.5 - value.len() / 2), H / arr_value_max * value.at(j)),
            [#value.at(j)],
            anchor: "south",
          )
        }
        content((cols-pos * (i + 1), 0), [#arr_X_name.at(i)], anchor: "north")
      }
      for i in range(0, calc.ceil(arr_value_max / y_step) + 1) {
        line((-0.1, H / arr_value_max * i * y_step), (0.1, H / arr_value_max * i * y_step))
        let curr_value = i * y_step
        content((0, H / arr_value_max * i * y_step), [#curr_value], anchor: "east")
      }
      content((O.at(0) + W + 1, O.at(1) + H / 2), anchor: "west")[
        #for i in range(0, arr_name.len()) {
          box(fill: arr_color.at(i), width: 1cm, height: 0.6cm, stroke: 1pt + black)
          h(1em)
          arr_name.at(i)
          linebreak()
        }
      ]
    })
  ]
  Từ biểu đồ cột kép trên, hãy tính tỉ số giữa số đồng hồ bị thấm nước và số đồng hồ đem kiểm tra của mỗi loại đồng hồ và dự đoán loại đồng hồ nào chống thấm nước tốt nhất.
]
