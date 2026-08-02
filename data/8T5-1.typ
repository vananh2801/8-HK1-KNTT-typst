#import "../style/lib.typ": *
#show: appearance

#section()[Thu nhập và phân loại dữ liệu]

#subsection()[Lý thuyết]

#subsubsection()[Thu thập dữ liệu]

#dn(tieude: "Thu thập dữ liệu")[
  Thu thập dữ liệu có thể là trực tiếp hoặc gián tiếp.
  - _Thu thập dữ liệu trực tiếp_ là việc thu thập dữ liệu thông qua quan sát, làm thí nghiệm, lập bảng hỏi, phỏng vấn....
  - _Thu thập dữ liệu gián tiếp_ là việc thu thập dữ liệu từ những nguồn có sẵn như sách, báo, mạng Internet,...
  Để có thể đưa ra các kết luận hợp lí, dữ liệu thu thập được phải đảm bảo tính đại diện cho toàn bộ đối tượng đang được quan tâm.
]

#vd()[
  Em hãy cho biết phương pháp thu thập dữ liệu trong mỗi trường hợp sau là trực tiếp hay gián tiếp.
  #listEX()[
    + Nam vào website của Cục Thống kê và ghi lại số xã/phường của các tỉnh/thành phố thuộc đồng bằng Bắc Bộ.
    + Thầy giáo dạy Giáo dục thể chất đã đo và ghi lại thời gian chạy cự li 1 000 mét của các bạn học sinh khối 8.
  ]
  #loigiai()[
    #dotlineEX(3)
  ]
]

#subsubsection()[Phân loại dữ liệu]

#dn(tieude: "Số liệu liên tục và số liệu rời rạc")[
  Số liệu có thể nhận giá trị tuỳ ý trong một khoảng nào đó được gọi là _số liệu liên tục_. Số liệu không phải là số liệu liên tục được gọi là _số liệu rời rạc_.
]

#luuy()[
  + Dạng hay gặp của số liệu liên tục là số liệu thu được từ các phép đo như chiều cao, cân nặng, nhiệt độ,...
  + Dạng hay gặp của số liệu rời rạc là số liệu đếm số phần tử của một tập nào đó, chẳng hạn số học sinh trong lớp học, số sản phẩm một công nhân làm được trong ngày,...
]

*Sơ đồ phân loại dữ liệu:*

#align(center)[
  #import "@preview/tdtr:0.6.1": *
  #tidy-tree-graph(
    compact: true,
    spacing: 12pt,
    text-size: 11pt,
    draw-node: (
      ((label,)) => (
        label: box(
          stroke: 0.7pt + black,
          radius: 6pt,
          inset: 6pt,
        )[#label],
      ),
      (shape: rect, stroke: none),
    ),
  )[
    - #text(size: 13pt)[Dữ liệu]
      - #text(size: 12pt)[Dữ liệu là số (Số liệu)]
        - Số liệu rời rạc
        - Số liệu liên tục
      - #text(size: 12pt)[Dữ liệu không là số]
        - Dữ liệu không là số,\
          không thể sắp thứ tự
        - Dữ liệu không là số,\
          có thể sắp thứ tự
  ]
]

#vd()[
  Với mỗi câu hỏi sau, An đã hỏi 5 bạn và ghi lại câu trả lời.
  #listEX()[
    + Bạn nặng bao nhiêu kilôgam? Kết quả: 48; 51; 46; 145; 48.
    + Tên bạn có bao nhiêu chữ cái? Kết quả: 4; 5; 6; 3; 5.
  ]
  Mỗi dãy dữ liệu trên thuộc loại nào? Chỉ ra giá trị không hợp lí nếu có.
  #loigiai()[
    #dotlineEX(2)
  ]
]

#subsection()[Bài tập tự luận]

#bt()[
  Em hãy đề xuất phương pháp thu thập dữ liệu cho các vấn đề sau:
  #listEX()[
    + Sản lượng thanh long và cà phê xuất khẩu của Việt Nam trong bốn năm gần nhất;
    + Ý kiến của học sinh khối 8 về chất lượng bữa ăn bán trú.
  ]
]

#bt()[
  Lớp trưởng lớp $8A$ muốn thu thập thông tin về các môn thể thao được yêu thích của các bạn trong lớp. Theo em, bạn lớp trưởng có thể thu thập những thông tin đó bằng cách nào?
]

#bt()[
  Sử dụng phương pháp thích hợp để thu thập dữ liệu và lập bảng thống kê dân số 6 tỉnh thuộc Vùng đồng bằng sông Cửu Long: Long An, Tiền Giang, Bến Tre, Vĩnh Long, Trà Vinh, Hậu Giang.
]

#bt()[
  Em hãy đề xuất phương pháp thu thập dữ liệu và lí giải về việc lấy ý kiến học sinh lớp em đối với các tiết mục văn nghệ dự thi "Giai điệu tuổi hồng" của lớp.
]

#bt()[
  Em hãy cho biết phương pháp thu thập dữ liệu trong mỗi trường hợp sau là trực tiếp hay gián tiếp:
  #listEX()[
    + Nam vào website của Tổng cục Thống kê và ghi lại số quận/huyện của các tỉnh/ thành phố thuộc các tỉnh Tây Nguyên;
    + Thầy giáo dạy Giáo dục thể chất đã đo và ghi lại thời gian chạy cự li $100$ mét của các bạn học sinh khối $8$.
  ]
]

#bt()[
  Cho các loại dữ liệu sau đây:
  - Danh sách một số loại trái cây: cam, xoài, mít, ...
  - Khối lượng (tính theo g) của một số trái cây: $240$; $320$; $1200$; ...
  - Độ chín của trái cây: rất chín, vừa chín, hơi chín, còn xanh, ...
  - Hàm lượng vitamin C (tính theo mg) có trong một số trái cây: $95$; $52$; $28$; ...
  - Mức độ tươi ngon của trái cây: loại 1, loại 2, loại 3.
  #listEX()[
    + Tìm dữ liệu định tính và dữ liệu định lượng trong các dữ liệu trên.
    + Trong số các dữ liệu định tính tìm được, dữ liệu nào có thể so sánh hơn kém?
    + Trong số các dữ liệu định lượng tìm được, dữ liệu nào là liên tục?
  ]
]

#bt()[
  Thống kê về các loại lồng đèn mà các bạn học sinh lớp 8C làm được để trao tặng cho trẻ em khuyết tật nhân dịp Tết Trung thu được cho trong bảng dữ liệu sau:
  #align(center)[
    #table(
      columns: 5,
      align: left,
      [*STT*], [*Tên lồng đèn*], [*Loại*], [*Số lượng*], [*Màu sắc*],
      [1], [Con cá], [Lớn], [2], [Vàng],
      [2], [Thiên nga], [Vừa], [6], [Xanh],
      [3], [Con thỏ], [Nhỏ], [10], [Nâu],
      [4], [Ngôi sao], [Lớn], [2], [Đỏ],
      [5], [Đèn xếp], [Nhỏ], [15], [Cam],
    )
  ]
  #listEX()[
    + Tìm dữ liệu định tính và dữ liệu định lượng trong bảng dữ liệu trên.
    + Trong số các dữ liệu định tính tìm được, dữ liệu nào có thể so sánh hơn kém?
    + Trong số các dữ liệu định lượng tìm được, dữ liệu nào là rời rạc?
  ]
]

#bt()[
  Để nâng cao hiệu quả kinh doanh, một siêu thị tiến hành hỏi những mặt hàng mà $50$ khách hàng dự định mua khi vào siêu thị. Kết quả thu được như sau: gạo, mì ăn liền, thịt, cá, rau củ, trứng, hoa quả, sữa tươi, quần áo, nước khoáng, nước giải khát, nước sinh tố, xà phòng, kem đánh răng, bột giặt, xoong nồi, bát đĩa, bút viết, vở học sinh, cặp sách.
  #listEX()[
    + Có bao nhiêu mặt hàng khách hàng dự định mua?
    + Hãy sắp xếp các mặt hàng đó theo những nhóm sau: Nhóm 1: Mặt hàng thực phẩm; Nhóm 2: Mặt hàng đồ uống; Nhóm 3: Mặt hàng đồ dùng trong gia đình; Nhóm 4: Mặt hàng văn phòng phẩm.
  ]
]

#bt()[
  Bảng thống kê sau cho biết dữ liệu về hoạt động trong giờ ra chơi của học sinh lớp $8/1$ (mỗi học sinh chỉ thực hiện một hoạt động).
  #align(center)[
    #table(
      columns: 2,
      align: left,
      [*Hoạt động*], [*Số học sinh*],
      [Đọc sách], [90],
      [Ôn bài], [10],
      [Chơi bóng rổ], [18],
      [Đá cầu], [12],
      [Chơi cờ vua], [8],
      [Nhảy dây], [Tất cả các bạn nữ],
    )
  ]
  Nêu nhận xét của em về tính hợp lí của các dữ liệu trong bảng thống kê trên.
]

#bt()[
  Thị phần của một sản phẩm là phần thị trường tiêu thụ mà sản phẩm đó chiếm lĩnh so với tổng số sản phẩm tiêu thụ của thị trường. Bảng thống kê sau cho biết tỉ số phần trăm thị phần của 4 loại bút trên thị trường.
  #align(center)[
    #table(
      columns: 2,
      align: left,
      [*Loại bút*], [*Tỉ số phần trăm*],
      [Bút bi], [25%],
      [Bút chì], [20%],
      [Bút mực], [45%],
      [Bút máy], [10%],
    )
  ]
  Xét tính hợp lí của các quảng cáo sau đây đối với nhãn hiệu bút mực:
  #listEX()[
    + Là loại bút được mọi người dùng lựa chọn.
    + Là loại bút chiếm thị phần cao nhất.
  ]
]

#bt()[
  Với mỗi câu hỏi sau, Lâm đã hỏi bốn bạn và ghi lại câu trả lời.
  #listEX()[
    + Nhà bạn có bao nhiêu chiếc ti vi? Kết quả: 2; 43; 3; 3.
    + Bạn mất bao nhiêu thời gian (đơn vị: giờ) để hoàn thành bài tập về nhà? Kết quả: $1","2$; $1","5$; $2","1$; $1","8$.
  ]
  Mỗi dãy dữ liệu trên thuộc loại nào? Chỉ ra giá trị không hợp lí nếu có.
]

#bt()[
  Em hãy đề xuất phương pháp thu thập dữ liệu cho các vấn đề sau:
  #listEX()[
    + Ý kiến của cha mẹ học sinh khối 8 về chất lượng đồng phục của trường em.
    + Tỉ số giữa số lần ra mặt sấp và số lần ra mặt ngửa khi tung đồng xu 100 lần.
    + So sánh số huy chương nhận được ở SEA Games 31 của Việt Nam và Thái Lan.
    + Tổng số sản phẩm quốc nội của mỗi nước thuộc khối ASEAN.
  ]
]

#bt()[
  Tìm điểm không hợp lí trong những dữ liệu cho dưới đây.
  #listEX()[
    + Danh sách email của các bạn trong đội văn nghệ lớp $8/1$ Trường THCS Ngô Quyền, quận Tân Bình như sau:
      #align(center)[
        #table(
          columns: 3,
          align: left,
          [*STT*], [*Tên*], [*Email*],
          [1], [Đỗ Bảo Duy], [Baoduy99\@gmail.com],
          [2], [Hoàng Minh Phúc], [Hminhphuc\@yahoo.com],
          [3], [Phan Nguyễn Thảo Vy], [Phannguyenthao_vy.vn],
          [4], [Nguyễn Phúc Anh], [phucanh\@gmail.com],
          [5], [Lâm Hoàng Tâm Giao], [Tamgiao_2009\@yahoo.com],
        )
      ]
    + Kết quả 6 bài kiểm tra môn Anh văn của bạn Tín lần lượt là: 9; $-5$; 8; 7; 9; 8.
  ]
]

#bt()[
  Em muốn ước lượng thời gian tự học ở nhà (đơn vị: giờ) của các bạn trong lớp. Hãy đưa ra cách thu thập dữ liệu và xác định xem dữ liệu thu được thuộc loại nào.
]

#bt()[
  Hãy sử dụng phương pháp thích hợp để thu thập dữ liệu và lập bảng thống kê dân số các tỉnh khu vực miền Đông Nam Bộ của Việt Nam.
]

#bt()[
  Nêu nhận xét về tính hợp lí của các dữ liệu trong bảng thống kê sau:
  #align(center)[
    #table(
      columns: (5cm, 5cm),
      align: left,
      table.cell(
        colspan: 2,
        [*Thống kê số học sinh lớp 8C tham gia các câu lạc bộ võ thuật (mỗi học sinh chỉ tham gia một câu lạc bộ)*],
      ),
      [Câu lạc bộ võ thuật], [Số học sinh],
      [Karate], [14],
      [Vovinam], [35],
      [Taekwondo], [Cả tổ 3],
      [Judo], [30],
    )
  ]
]

#bt()[
  Dữ liệu thu được trong mỗi câu hỏi sau thuộc loại nào?
  #listEX()[
    + Bạn cao bao nhiêu?
    + Mạng điện thoại bạn đang dùng là gì?
    + Gia đình bạn có bao nhiêu người dưới 18 tuổi?
  ]
]

#bt()[
  Nên sử dụng phương pháp thu thập nào để thu được mỗi dữ liệu sau?
  #listEX()[
    + Tên của 10 quốc gia có diện tích lớn nhất.
    + Ý kiến của các bạn về địa điểm đi tham quan tuần tới.
    + Chiều cao của các cây chè giống sau 5 tháng trồng.
  ]
]

#bt()[
  Thông tin về 5 bạn học sinh của trường Trung học cơ sở Tân Bình tham gia Hội khỏe Phù Đổng được cho bởi bảng thống kê sau:
  #table(
    columns: 5,
    [*Họ và tên*], [*Cân nặng (kg)*], [*Môn bơi sở trường*], [*Kĩ thuật bơi*], [*Số nội dung thi đấu*],
    [Nguyễn Văn Hùng], [61], [Bơi ếch], [Tốt], [3],
    [Trần Văn Đức], [56], [Bơi sải], [Khá], [1],
    [Lê Hoàng Phi], [48], [Bơi bướm], [Tốt], [2],
    [Nguyễn Tiến Dũng], [50], [Bơi ếch], [Đạt], [2],
    [Đỗ Hải Hà], [48], [Bơi tự do], [Tốt], [3],
  )
  #listEX()[
    + Phân loại các dữ liệu trong bảng thống kê trên dựa trên hai tiêu chí định tính và định lượng.
    + Trong số các dữ liệu định tính tìm được, dữ liệu nào có thể so sánh hơn kém?
    + Trong số các dữ liệu định lượng tìm được, dữ liệu nào là liên tục?
  ]
]

#bt()[
  Để chuẩn bị cho năm học mới, một công ty may thiết kế mẫu đồng phục cho học sinh của một trường trung học cơ sở. Công ty đã hỏi ý kiến của $50$ học sinh lớp 6 về mẫu đồng phục đã thiết kế và nhận được kết quả là có $40$ học sinh thích mẫu đồng phục đó. Từ đó, công ty đưa ra kết luận rằng có $80%$ số học sinh của trường thích mẫu đồng phục đó. Theo em, công ty may đưa ra kết luận như thế thì có hợp lí không? Vì sao?
]

#bt()[
  Một trường trung học cơ sở cho học sinh khối lớp 8 đăng kí tham gia hoạt động ngoại khoá. Bảng thống kê số lượng học sinh đăng kí tham gia hoạt động ngoại khoá của từng lớp. Số liệu nào trong bảng thống kê là không hợp lí? Vì sao?
  #align(center)[
    #table(
      columns: 3,
      [*Lớp*], [*Sĩ số*], [*Số học sinh đăng kí tham gia hoạt động ngoại khoá*],
      [8/1], [38], [33],
      [8/2], [40], [35],
      [8/3], [39], [40],
      [8/4], [39], [32],
      [8/5], [40], [32],
    )
  ]
]

#bt()[
  Sau khi tìm hiểu về các châu lục trên Trái Đất từ trang web https://vi.wikipedia.org, bạn Long thu được những dữ liệu thống kê sau:
  - Sáu châu lục là: Châu Á; Châu Âu; Châu Đại Dương; Châu Mỹ; Châu Nam Cực; Châu Phi.
  - Diện tích (đơn vị: triệu $"km"^2$) của sáu châu lục đó lần lượt là: $43","82$; $10","18$; $9$; $42","33$; $13","72$; $30","37$.
  Tìm dữ liệu định tính và dữ liệu định lượng trong các dữ liệu trên.
]

#bt()[
  Sau khi tìm hiểu về các đại dương trên Trái Đất từ trang web https://vi.wikipedia.org, bạn Ẩn thu được những dữ liệu thống kê sau:
  - Năm đại dương là: Thái Bình Dương; Đại Tây Dương; Ấn Độ Dương; Bắc Băng Dương; Nam Đại Dương.
  - Diện tích (đơn vị: triệu $"km"^2$) của năm đại dương đó lần lượt là: $165","25$; $106","4$; $75$; $14","09$; $20","3$.
  Tìm dữ liệu định tính và dữ liệu định lượng trong các dữ liệu trên.
]

#bt()[
  Để chuẩn bị đưa ra thị trường mẫu xe ô tô mới, một hãng sản xuất xe ô tô tiến hành thăm dò màu sơn mà người mua yêu thích. Hãng sản xuất xe đó đã hỏi ý kiến của $100$ người mua xe ở độ tuổi từ 20 đến 32 và nhận được kết quả là: $32$ người thích màu đen, $48$ người thích màu trắng, $20$ người thích màu xanh. Từ đó, hãng sản xuất xe đưa ra quảng cáo sau: $48%$ số người mua chọn xe màu trắng, $20%$ số người mua chọn xe màu xanh. Theo em, hãng sản xuất xe đưa ra kết luận như trong quảng cáo trên thì có hợp lí không? Vì sao?
]

// biểu đồ quạt tròn
#bt()[
  Bạn Khoa vẽ biểu đồ hình quạt tròn như ở hình bên để biểu diễn tỉ lệ các loại sách trong thư viện: Khoa học (KH); Kĩ thuật và Công nghệ (KT-CN); Văn học và Nghệ thuật (VH-NT); Sách khác. Hỏi những số liệu mà bạn Khoa nêu ra trong biểu đồ hình quạt tròn ở hình bên đã chính xác chưa? Vì sao?
  #align(center)[
    #set text(size: 10pt)
    *Tỉ lệ các loại sách trong thư viện*
    #import "@preview/cetz:0.5.2"
    #cetz.canvas(length: 0.9cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), content: (padding: 3pt))
      let O = (0, 0)
      let R = 2.6 // Độ rộng
      let arr_value = (0, 25, 50, 80, 100) // Các giá trị
      let arr_wrong_value = (0, 25, 50, 80, 95) // Các giá trị giả
      let arr_color = (
        // Màu
        blue.lighten(40%),
        orange.lighten(40%),
        green.lighten(20%),
        yellow.lighten(40%),
        red.lighten(40%),
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
            O.at(0) + calc.cos(90deg - 360deg / 100 * (arr_value.at(i) + arr_value.at(i + 1)) / 2) * R / 2,
            O.at(0) + calc.sin(90deg - 360deg / 100 * (arr_value.at(i) + arr_value.at(i + 1)) / 2) * R / 2,
          ),
          [
            #box(fill: white, inset: 3pt)[
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

// biểu đồ cột
#bt()[
  Một công ty kinh doanh vật liệu xây dựng có bốn kho hàng, mỗi kho hàng có 50 tấn hàng. Kế toán của công ty lập biểu đồ cột kép ở hình bên dưới biểu diễn số lượng vật liệu đã xuất bán và số lượng vật liệu còn tồn lại trong mỗi kho sau tuần lễ kinh doanh đầu tiên.
  #align(center)[
    #set text(size: 10pt)
    *Số lượng vật liệu đã xuất bán và số lượng vật liệu còn tồn lại trong mỗi kho*
    #import "@preview/cetz:0.5.2"
    #cetz.canvas(length: 1cm, {
      import cetz.draw: *
      import cetz.angle: *
      set-style(stroke: (thickness: 0.7pt, cap: "round"), mark: (fill: black), content: (padding: 6pt))
      let O = (0, 0)
      let W = 10 // Chiều rộng Ox
      let H = 5 // Chiều cao Oy
      let y_step = 10 // Bước nhảy trục Oy
      let col-w = 0.5 // Độ rộng cột
      let x = (O.at(0) + W + 1, 0)
      let y = (0, O.at(0) + H + 1)
      line(O, x, mark: (end: "stealth"))
      line(O, y, mark: (end: "stealth"))
      content(x, anchor: "north-east", [*Kho*]) // Tên trục Ox
      content(y, anchor: "north-east", [*Tấn*]) // Tên trục Oy
      let arr_color = (
        // Màu
        blue.lighten(40%),
        orange.lighten(40%),
        green.lighten(20%),
        yellow.lighten(40%),
        red.lighten(40%),
      )
      let arr_value = ((30, 20), (35, 15), (30, 20), (30, 15)) // Giá trị các cột
      let arr_value_max = 40
      let arr_wrong_value = none
      let arr_name = ([Tồn lại], [Xuất bán])
      let arr_X_name = ([Kho 1], [Kho 2], [Kho 3], [Kho 4])
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
