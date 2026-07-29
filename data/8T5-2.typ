#import "../style/lib.typ": *
#show: appearance

#section()[Biểu diễn dữ liệu bằng bảng, biểu đồ]

#subsection()[Lý thuyết]

#subsubsection()[Lựa chọn biểu đồ tranh hay biểu đồ cột]

#nhanxet()[
  - Có thể dùng biểu đồ tranh, biểu đồ cột để biểu diễn số lượng các loại đối tượng khác nhau.
  - Tuy nhiên, khi dùng biểu đồ tranh mà phải vẽ rất nhiều biểu tượng thì ta nên dùng biểu đồ cột.
]

#subsubsection()[Lựa chọn biểu đồ cột hay biểu đồ đoạn thẳng]

#nhanxet()[
  - Nếu muốn biểu diễn sự thay đổi của một đại lượng theo thời gian ta dùng biểu đồ đoạn thẳng.
  - Khi số lượng thời điểm quan sát ít ta cũng có thể biểu diễn bằng biểu đồ cột.
]

#subsubsection()[Lựa chọn biểu đồ cột kép hay biểu đồ hình quạt tròn]

#nhanxet()[
  - Khi muốn so sánh hai tập dữ liệu với nhau ta dùng biểu đồ cột kép.
  - Khi muốn biểu diễn tỉ lệ các phần trong tổng thể ta dùng biểu đồ hình quạt tròn.
]


#subsection()[Bài tập tự luận]

#bt()[
  Lựa chọn dạng biểu đồ thích hợp để biểu diễn dữ liệu trong các bảng thống kê sau:
  #listEX()[
    + Bảng thống kê về cân nặng (đơn vị: kg) của nam, nữ tại một số nước trong khối Asean (nguồn: https://worlddata.info) như sau:
      #align(center)[
        #table(
          columns: 5,
          [*Quốc gia*], [*Indonesia*], [*Malaysia*], [*Thái Lan*], [*Việt Nam*],
          [Nam], [$61","4$], [$71","5$], [$69","8$], [$61","2$],
          [Nữ], [$56","2$], [$64","4$], [$63","3$], [54],
        )
      ]
    + Bảng thống kê tỉ lệ phần trăm số tiết học của các nội dung môn Toán lớp 8:
      #align(center)[
        #table(
          align: center + horizon,
          columns: (3.5cm, 2.6cm, 2.6cm, 4cm, 4.1cm),
          [*Phần*],
          [*Số và đại số*],
          [*Hình học và đo lường*],
          [*Một số yếu tố thống kê và xác suất*],
          [*Hoạt động thực hành và trải nghiệm*],

          [Tỉ lệ phần trăm số tiết học], [43%], [36%], [14%], [7%],
        )
      ]
  ]
]

#bt()[
  Bảng thống kê sau đây cho biết việc sử dụng thời gian của bạn Nam trong ngày.
  #align(center)[
    #table(
      columns: 2,
      [*Công việc*], [*Thời gian (giờ)*],
      [Học trên lớp], [6],
      [Ngủ], [7],
      [Ăn uống, vệ sinh cá nhân], [2],
      [Làm bài ở nhà], [4],
      [Làm việc nhà], [2],
      [Chơi thể thao/ giải trí], [3],
    )
  ]
  Hãy biểu diễn dữ liệu trên vào các dạng biểu đồ sau:
  #listEX()[
    + Biểu đồ cột:
      #align(center)[
        #set text(size: 10pt)
        *Thời gian trong ngày của Nam*
        #import "@preview/cetz:0.5.2"
        #cetz.canvas(length: 1cm, {
          import cetz.draw: *
          import cetz.angle: *
          set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), content: (padding: 6pt))
          let O = (0, 0)
          let W = 13 // Chiều rộng Ox
          let H = 5 // Chiều cao Oy
          let y_step = 2 // Bước nhảy trục Oy
          let col-w = 0.8 // Độ rộng cột
          let x = (O.at(0) + W + 1, 0)
          let y = (0, O.at(0) + H + 1)
          line(O, x, mark: (end: ">"))
          line(O, y, mark: (end: ">"))
          content(x, anchor: "north-east", [*Công việc*]) // Tên trục Ox
          content(y, anchor: "north-east", [*Giờ*]) // Tên trục Oy
          let arr_color = (
            // Màu
            blue.lighten(40%),
            orange.lighten(40%),
            green.lighten(40%),
            yellow.lighten(40%),
            red.lighten(40%),
          )
          let arr_value = ((6,), (7,), (2,), (4,), (2,), (3,)) // Giá trị các cột
          let arr_value_max = 8 // Giá trị lớn nhất trên Oy
          let arr_wrong_value = none
          let arr_X_name = (
            [Học trên\ lớp],
            [Ngủ],
            [Ăn uống\ vệ sinh\ cá nhân],
            [Làm bài\ ở nhà],
            [Làm việc\ ở nhà],
            [Chơi thể thao\ giải trí],
          )
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
                [?],
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
    + Biểu đồ hình quạt tròn
      #align(center)[
        #set text(size: 10pt)
        *Thời gian trong ngày của Nam*
        #import "@preview/cetz:0.5.2"
        #cetz.canvas(length: 0.9cm, {
          import cetz.draw: *
          import cetz.angle: *
          set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), content: (padding: 3pt))
          let O = (0, 0)
          let R = 3 // Bán kính hình tròn
          let arr_value = (0, 25, 52, 60, 76, 84, 100) // Các giá trị
          let arr_wrong_value = none // Các giá trị sai nếu cần
          let arr_color = (
            // Màu
            blue.lighten(40%),
            orange.lighten(40%),
            green.lighten(40%),
            yellow.lighten(40%),
            red.lighten(40%),
            gray.lighten(40%),
          )
          let arr_name = (
            [Học trên lớp],
            [Ngủ],
            [Ăn uống, vệ sinh cá nhân],
            [Làm bài ở nhà],
            [Làm việc nhà],
            [Chơi thể thao/ giải trí],
          )
          // Tên các thành phần
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
                #box(fill: white, inset: 3pt)[
                  #if arr_wrong_value != none {
                    let value = arr_wrong_value.at(i + 1) - arr_wrong_value.at(i)
                    [#value%]
                  } else {
                    let value = arr_value.at(i + 1) - arr_value.at(i)
                    [?%]
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

// biểu đồ Đường
#bt()[
  Cho biểu đồ sau:
  #align(center)[
    #set text(size: 10pt)
    *Số lượng cơn bão trên toàn cầu*
    #import "@preview/cetz:0.5.2"
    #cetz.canvas(length: 1cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), content: (padding: 6pt))
      let O = (0, 0)
      let W = 10 // Chiều rộng Ox
      let H = 5 // Chiều cao Oy
      let y_step = 20 // Bước nhảy trục Oy
      let col-w = 0.5 // Độ rộng cột
      let x = (O.at(0) + W + 1, 0)
      let y = (0, O.at(0) + H + 1)
      line(O, x, mark: (end: ">"))
      line(O, y, mark: (end: ">"))
      content(x, anchor: "north-east", [*Năm*]) // Tên trục Ox
      content(y, anchor: "north-east", [*Số lượng*]) // Tên trục Oy
      let arr_color = (
        // Màu
        blue.lighten(40%),
        orange.lighten(40%),
        green.lighten(40%),
        yellow.lighten(40%),
        red.lighten(40%),
      )
      let arr_value = (
        (99, 121, 86, 130, 94),
      )
      // Giá trị các cột
      let arr_value_max = 140
      let arr_wrong_value = none
      let arr_name = ([Tồn lại],)
      let arr_X_name = ([2014], [2015], [2016], [2017], [2018])
      let cols-pos = (W - 2) / arr_X_name.len()
      for i in range(0, arr_value.len()) {
        for j in range(1, arr_value.at(i).len()) {
          line(
            (cols-pos * j, H / arr_value_max * arr_value.at(i).at(j - 1)),
            (cols-pos * (j + 1), H / arr_value_max * arr_value.at(i).at(j)),
            stroke: 1pt + arr_color.at(i),
          )
        }
      }
      for i in range(0, arr_value.len()) {
        for j in range(0, arr_value.at(i).len()) {
          circle(
            (cols-pos * (j + 1), H / arr_value_max * arr_value.at(i).at(j)),
            fill: black,
            radius: 1.2pt,
          )
          content(
            (cols-pos * (j + 1), H / arr_value_max * arr_value.at(i).at(j)),
            anchor: "south",
            [#arr_value.at(i).at(j)],
          )
        }
      }
      for i in range(0, arr_X_name.len()) {
        content((cols-pos * (i + 1), 0), [#arr_X_name.at(i)], anchor: "north")
      }
      for i in range(0, calc.ceil(arr_value_max / y_step) + 1) {
        line((-0.1, H / arr_value_max * i * y_step), (0.1, H / arr_value_max * i * y_step))
        let curr_value = i * y_step
        content((0, H / arr_value_max * i * y_step), [#curr_value], anchor: "east")
      }
      if arr_name.len() >= 2 {
        content((O.at(0) + W + 1, O.at(1) + H / 2), anchor: "west")[
          #for i in range(0, arr_name.len()) {
            box(fill: arr_color.at(i), width: 1cm, height: 0.6cm, stroke: 1pt + black)
            h(1em)
            arr_name.at(i)
            linebreak()
          }
        ]
      }
    })
  ]
  #listEX()[
    + Lập bảng thống kê cho dữ liệu trong biểu đồ.
    + Vẽ biểu đồ cột biểu diễn dữ liệu này. Nếu ta có dữ liệu về số cơn bão hằng năm trên toàn cầu từ năm 1970 đến nay thì có nên dùng biểu đồ cột để biểu diễn không?
  ]
]

#bt()[
  Biểu đồ hình bên dưới biểu diễn số lượng các bạn lớp 8A tham gia các câu lạc bộ.
  #align(center)[
    #set box(stroke: 1pt + black, inset: 3pt)
    #table(
      columns: (auto, 4cm),
      align: top + center,
      [Tiếng Anh], [#box[?]#h(1em)#box[?]],
      [Võ thuật], [#box[?] #box[?]#h(1em)#box[?]],
      [Nghệ thuật], [#box[?] #box[?]#h(1em)#box[?]],
    )
  ]
  #listEX()[
    + Cho biết đây là biểu đồ gì? Mỗi biểu tượng ứng với bao nhiêu học sinh?
    + Lập bảng thống kê và vẽ biểu đồ cột biểu diễn dữ liệu này.
  ]
]

#bt()[
  Bảng thống kê bên cho biết số lượng khách đánh giá chất lượng dịch vụ của một khách sạn.
  #align(center)[
    #table(
      columns: 5,
      align: center,
      [Đánh giá], [Rất tốt], [Tốt], [Trung bình], [Kém],
      [Số lượng], [10], [20], [15], [5],
    )
  ]
  #listEX()[
    + Vẽ biểu đồ tranh, biểu đồ cột biểu diễn bảng thống kê trên;
    + Nếu muốn biểu diễn tỉ lệ khách hàng đánh giá theo các mức đánh giá trên, ta cần dùng biểu đồ nào để biểu diễn?
  ]
]

#pagebreak()

#bt()[
  Cho biểu đồ hình dưới.\
  Hãy lập bảng thống kê biểu diễn số lượng huy chương các loại của đoàn thể thao TP Hà Nội và TP Hồ Chí Minh. Vẽ biểu đồ cột biểu diễn bảng thống kê này.
  #align(center)[
    #set text(size: 10pt)
    *Bảng tổng sắp huy chương Đại hội thể thao toàn quốc lần thứ VIII năm 2021*
    #import "@preview/cetz:0.5.2"
    #cetz.canvas(length: 1cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), content: (padding: 6pt))
      let O = (0, 0)
      let W = 8 // Chiều rộng Ox
      let H = 5 // Chiều cao Oy
      let y_step = 10 // Bước nhảy trục Oy
      let col-w = 0.5 // Độ rộng cột
      let x = (O.at(0) + W + 1, 0)
      let y = (0, O.at(0) + H + 1)
      line(O, x, mark: (end: ">"))
      line(O, y, mark: (end: ">"))
      content(x, anchor: "north-east", [*Huy chương*]) // Tên trục Ox
      content(y, anchor: "north-east", [*Số lượng*]) // Tên trục Oy
      let arr_color = (
        // Màu
        blue.lighten(40%),
        orange.lighten(40%),
        green.lighten(40%),
        yellow.lighten(40%),
        red.lighten(40%),
      )
      let arr_value = ((34, 22), (26, 24), (20, 14)) // Giá trị các cột
      let arr_value_max = 40
      let arr_wrong_value = none
      let arr_name = ([TP Hà Nội], [TP Hồ Chí Minh])
      let arr_X_name = ([Vàng], [Bạc], [Đồng])
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
]

#bt()[
  Bảng sau cho biết khối lượng giấy vụn các lớp khối 8 đã thu gom được.
  #align(center)[
    #table(
      columns: 5,
      align: center,
      [*Lớp*], [8/1], [8/2], [8/3], [8/4],
      [*Khối lượng (kg)*], [$14","5$], [$15","6$], [$13","2$], [$10","8$],
    )
  ]
  Lựa chọn biểu đồ phù hợp để biểu diễn bảng thống kê này. Vẽ biểu đồ đó.
]

#bt(tieude: "Thethaovanhoa.vn")[
  Bảng thống kê sau biểu diễn số huy chương vàng trong hai kì SEA Games 30 và 31 của đoàn thể thao Việt Nam, Thái Lan.
  #align(center)[
    #table(
      columns: 3,
      align: center,
      [], [*SEA Games 30*], [*SEA Games 31*],
      [*Việt Nam*], [98], [207],
      [*Thái Lan*], [92], [92],
    )
  ]
]

#bt()[
  Cho bảng thống kê số tiết học các nội dung trong môn Toán của hai khối lớp 6 và 8 như sau:
  #align(center)[
    #table(
      columns: 5,
      align: center,
      [*Khối*],
      [*Số và đại số*],
      [*Hình học và đo lường*],
      [*Một số yếu tố thống kê và xác suất*],
      [*Hoạt động thực hành và trải nghiệm*],

      [Khối 6], [68], [40], [23], [15],
      [Khối 8], [60], [50], [20], [10],
    )
  ]
  Hãy biểu diễn tập dữ liệu trên dưới dạng:
  #listEX()[
    + Hai biểu đồ cột;
    + Một biểu đồ cột kép.
  ]
]

#bt()[
  Thống kê số huy chương bốn quốc gia dẫn đầu SEA Games 31 được cho trong bảng số liệu sau:
  #align(center)[
    #table(
      columns: 3,
      align: center,
      [*Quốc Gia*], [*Huy Chương vàng*], [*Tổng số huy chương*],
      [Việt Nam], [207], [446],
      [Thái Lan], [92], [332],
      [Indonesia], [69], [241],
      [Philippines], [52], [227],
    )
  ]
  Hãy chuyển dữ liệu trên đã cho vào trong bảng thống kê theo mẫu dưới đây và vào biểu đồ cột kép tương ứng.
  #align(center)[
    #table(
      columns: 5,
      align: center,
      [*Quốc Gia*], [Việt Nam], [Thái Lan], [Indonesia], [Philippines],
      [*Huy Chương vàng*], [207], [?], [?], [52],
      [*Tổng số huy chương*], [?], [332], [?], [?],
    )
  ]
  #align(center)[
    #set text(size: 10pt)
    *Số huy chương của bốn quốc gia dẫn đầu SEA Games 31*
    #import "@preview/cetz:0.5.2"
    #cetz.canvas(length: 1cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), content: (padding: 6pt))
      let O = (0, 0)
      let W = 8.5 // Chiều rộng Ox
      let H = 5 // Chiều cao Oy
      let y_step = 50 // Bước nhảy trục Oy
      let col-w = 0.5 // Độ rộng cột
      let x = (O.at(0) + W + 1, 0)
      let y = (0, O.at(0) + H + 1)
      line(O, x, mark: (end: ">"))
      line(O, y, mark: (end: ">"))
      content(x, anchor: "north-east", [*Quốc gia*]) // Tên trục Ox
      content(y, anchor: "north-east", [*Số huy chương*]) // Tên trục Oy
      let arr_color = (
        // Màu
        blue.lighten(40%),
        orange.lighten(40%),
        green.lighten(40%),
        yellow.lighten(40%),
        red.lighten(40%),
      )
      let arr_value = ((207, 446), (92, 332), (69, 241), (52, 227)) // Giá trị các cột
      let arr_value_max = 500
      let arr_wrong_value = (("?", 446), (92, "?"), ("?", 241), ("?", "?"))
      let arr_name = ([Số huy chương vàng], [Tổng số huy chương])
      let arr_X_name = ([Việt Nam], [Thái Lan], [Indonesia], [Philippines])
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
            [#arr_wrong_value.at(i).at(j)],
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
]

#bt()[
  Kết quả học tập học kì 1 của học sinh lớp 8A và 8B được ghi lại trong bảng sau:
  #align(center)[
    #table(
      columns: 5,
      align: center,
      [*Xếp loại học tập*], [*Tốt*], [*Khá*], [*Đạt*], [*Chưa đạt*],
      [Lớp 8A], [5%], [45%], [44%], [6%],
      [Lớp 8B], [10%], [50%], [37%], [3%],
    )
  ]
  Lựa chọn dạng biểu đồ thích hợp để biểu diễn bảng thống kê trên và trả lời các câu hỏi sau:
  #listEX()[
    + So sánh tỉ lệ học sinh xếp loại học tập Tốt và Chưa đạt của hai lớp 8A và 8B;
    + Tổng số học sinh xếp loại học tập Tốt và Khá của lớp 8B bằng bao nhiêu phần trăm tổng số học sinh xếp loại học tập Tốt và Khá của lớp 8A.
  ]
]

#bt()[
  Một giáo viên dạy Giáo dục thể chất đã thống kê thời gian chạy 100 m (tính theo giây) của 20 học sinh nam và ghi lại trong bảng số liệu ban đầu như sau:
  #align(center)[
    #table(
      columns: 10,
      align: center,
      [15], [14], [15], [16], [14], [16], [16], [15], [14], [15],
      [15], [15], [16], [15], [15], [15], [14], [16], [14], [15],
    )
  ]
  #listEX()[
    + Chuyển dữ liệu từ bảng số liệu ban đầu ở trên sang dạng bảng thống kê sau đây:
    #align(center)[
      #table(
        columns: 4,
        align: center,
        [*Thời gian chạy (giây)*], [14], [15], [16],
        [*Số học sinh*], [?], [?], [?],
        [*Tỉ lệ phần trăm*], [?], [?], [?],
      )
    ]
    + Hãy chuyển dữ liệu từ bảng thống kê ở câu 1 sang dạng biểu đồ cột và biểu đồ hình quạt tròn sau đây.
  ]
  #box[
    #align(center)[
      #set text(size: 10pt)
      *Thời gian chạy 100 m của 20 học sinh*
      #import "@preview/cetz:0.5.2"
      #cetz.canvas(length: 1cm, {
        import cetz.draw: *
        import cetz.angle: *
        set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), content: (padding: 6pt))
        let O = (0, 0)
        let W = 6 // Chiều rộng Ox
        let H = 3 // Chiều cao Oy
        let y_step = 2 // Bước nhảy trục Oy
        let col-w = 0.5 // Độ rộng cột
        let x = (O.at(0) + W + 1, 0)
        let y = (0, O.at(0) + H + 1)
        line(O, x, mark: (end: ">"))
        line(O, y, mark: (end: ">"))
        content(x, anchor: "north-east", [*Thời gian*]) // Tên trục Ox
        content(y, anchor: "north-east", [*Số học sinh*]) // Tên trục Oy
        let arr_color = (
          // Màu
          blue.lighten(40%),
          orange.lighten(40%),
          green.lighten(40%),
          yellow.lighten(40%),
          red.lighten(40%),
        )
        let arr_value = ((5,), (9,), (5,)) // Giá trị các cột
        let arr_value_max = 12
        let arr_wrong_value = (("?",), ("?",), ("?",))
        let arr_X_name = ([14 giây], [15 giây], [16 giây])
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
              [#arr_wrong_value.at(i).at(j)],
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
  ]
  #box()[
    #align(center)[
      #set text(size: 10pt)
      *Tỉ lệ phần trăm thời gian chạy 100 m của 20 học sinh*
      #import "@preview/cetz:0.5.2"
      #cetz.canvas(length: 0.9cm, {
        import cetz.draw: *
        import cetz.angle: *
        set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), content: (padding: 3pt))
        let O = (0, 0)
        let R = 2 // Độ rộng
        let arr_value = (0, 26.3, 73.7, 100) // Các giá trị
        let arr_color = (
          // Màu
          blue.lighten(40%),
          orange.lighten(40%),
          green.lighten(40%),
          yellow.lighten(40%),
          red.lighten(40%),
        )
        let arr_name = ([14 giây], [15 giây], [16 giây]) // Tên cột
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
              O.at(0) + calc.cos(90deg - 360deg / 100 * (arr_value.at(i) + arr_value.at(i + 1)) / 2) * R / 2,
              O.at(0) + calc.sin(90deg - 360deg / 100 * (arr_value.at(i) + arr_value.at(i + 1)) / 2) * R / 2,
            ),
            [
              #box(fill: white, inset: 3pt)[?%]
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
