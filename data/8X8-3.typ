#import "../style/lib.typ": *
#show: appearance

#section()[Mối liên hệ giữa xác suất thực nghiệm với xác suất#linebreak() và ứng dụng]

#subsection()[Lý thuyết]

#subsubsection()[Xác suất thực nghiệm của một biến cố]

#dn(tieude: "Xác suất thực nghiệm")[
  Giả sử trong $n$ lần thực nghiệm hoặc $n$ lần theo dõi (quan sát) một hiện tượng ta thấy biến cố $E$ xảy ra $k$ lần. Khi đó _xác suất thực nghiệm_ của biến cố $E$ bằng $k/n$, tức là bằng tỉ số giữa số lần xuất hiện biến cố $E$ và số lần thực hiện thực nghiệm hoặc theo dõi hiện tượng đó.
]

#vd()[
  Một cửa hàng thống kê số lượng các loại điện thoại bán được trong một năm vừa qua như sau:
  #align(center)[
    #table(
      columns: 4,
      align: center + horizon,
      [Loại điện thoại], [$A$], [$B$], [$C$],
      [Số lượng bán được (chiếc)], [712], [1 035], [1 085],
    )
  ]
  Tính xác suất thực nghiệm của biến cố $E$: "Chiếc điện thoại loại $A$ được bán ra trong năm đó của cửa hàng".
  #loigiai()[
    #dotlineEX(2)
  ]
]

#subsubsection()[Mối liên hệ giữa xác suất thực nghiệm với xác suất]

Ta đã biết khả năng xảy ra của một biến cố được đo lường bằng một số nhận giá trị từ 0 đến 1, gọi là xác suất của biến cố đó. Ta đã có công thức tính xác suất của một biến cố với giả thiết rằng các kết quả có thể của một hành động hay thực nghiệm là đồng khả năng.

Tuy nhiên trong nhiều tình huống, giả thiết trên không thoả mãn. Người ta thấy rằng có thể _ước lượng xác suất_ của một biến cố nhờ xác suất thực nghiệm.

#dl(tieude: "Ước lượng xác suất")[
  Xác suất của biến cố $E$ được ước lượng bằng xác suất thực nghiệm của $E$:
  $ P(E) approx k/n; $
  trong đó $n$ là số lần thực nghiệm hay theo dõi một hiện tượng, $k$ là số lần biến cố $E$ xảy ra.
]

#vd()[
  Kiểm tra ngẫu nhiên 500 chiếc ti vi do nhà máy $X$ sản xuất thì có 4 chiếc không đạt chất lượng. Hãy ước lượng xác suất của biến cố $E$: "Một ti vi do nhà máy $X$ sản xuất không đạt chất lượng".
  #loigiai()[
    #dotlineEX(3)
  ]
]

#vd()[
  Trong 240 000 trẻ sơ sinh chào đời người ta thấy có 123 120 bé trai. Hãy ước lượng xác suất của biến cố "Trẻ sơ sinh là bé gái”.
  #loigiai()[
    #dotlineEX(3)
  ]
]

#subsubsection()[Ứng dụng]

Xác suất thực nghiệm có thể sử dụng để đưa ra dự báo số lần xảy ra một sự kiện, hiện tượng trong tương lai. Số liệu này chỉ mang tính chất tham khảo chứ _không chính xác hoàn toàn_.

#vd()[
  Thống kê điểm kiểm tra cuối năm môn Toán của một nhóm 100 học sinh lớp 8 được chọn ngẫu nhiên tại ba lớp của trường Trung học cơ sở $X$, thu được kết quả như trên bảng sau:
  #align(center)[
    #table(
      columns: 11,
      align: center + horizon,
      [Điểm], [1], [2], [3], [4], [5], [6], [7], [8], [9], [10],
      [Số học sinh], [7], [9], [11], [11], [12], [12], [13], [9], [8], [8],
    )
  ]
  #listEX()[
    + Chọn ngẫu nhiên một học sinh lớp 8 của trường $X$. Hãy ước lượng xác suất của các biến cố sau:
      - $A$: "Học sinh đó có điểm nhỏ hơn hoặc bằng 5";
      - $B$: "Học sinh đó có điểm từ 4 đến 9".
    + Hãy dự đoán xem trong nhóm 80 học sinh lớp 8 chọn ngẫu nhiên từ ba lớp khác của trường $X$:
      - Có bao nhiêu học sinh có số điểm không vượt quá 5 điểm.
      - Có bao nhiêu học sinh có số điểm từ 4 đến 9 điểm.
  ]
  #loigiai()[
    #dotlineEX(20)
  ]
]

#subsection()[Bài tập tự luận]

#bt()[
  Tung một chiếc kẹp giấy 145 lần xuống sàn nhà lát gạch đá hoa hình vuông. Quan sát thấy có 113 lần chiếc kẹp nằm hoàn toàn bên trong hình vuông và 32 lần chiếc kẹp nằm trên cạnh hình vuông. Tính xác suất thực nghiệm của các biến cố sau:
  #listEX()[
    + $E$: "Chiếc kẹp giấy nằm hoàn toàn trong hình vuông";
    + $F$: "Chiếc kẹp giấy nằm trên cạnh của hình vuông".
  ]
]

#bt()[
  Một nhân viên kiểm tra chất lượng sản phẩm tại một nhà máy trong 20 ngày đã ghi lại số phế phẩm của nhà máy mỗi ngày và thu được kết quả như sau:
  #align(center)[
    #table(
      columns: 6,
      align: center + horizon,
      [Số phế phẩm], [0], [1], [2], [3], [$>=4$],
      [Số ngày], [14], [3], [1], [1], [1],
    )
  ]
  Tính xác suất thực nghiệm của các biến cố sau:
  #listEX()[
    + $M$: "Trong một ngày nhà máy đó không có phế phẩm";
    + $N$: "Trong một ngày nhà máy đó chỉ có 1 phế phẩm";
    + $K$: "Trong một ngày nhà máy đó có ít nhất 2 phế phẩm".
  ]
]

#bt()[
  Thống kê thời gian của 78 chương trình quảng cáo trên Đài truyền hình tỉnh $X$ cho kết quả như sau:
  #align(center)[
    #table(
      columns: 2,
      align: center + horizon,
      [Thời gian quảng cáo trong khoảng], [Số chương trình quảng cáo],
      [Từ 0 đến 19 giây], [17],
      [Từ 20 đến 39 giây], [38],
      [Từ 40 đến 59 giây], [19],
      [Trên 60 giây], [4],
    )
  ]
  Tính xác suất thực nghiệm của các biến cố sau:
  #listEX()[
    + $E$: "Chương trình quảng cáo của Đài truyền hình tỉnh $X$ kéo dài từ 20 đến 39 giây";
    + $F$: "Chương trình quảng cáo của Đài truyền hình tỉnh $X$ kéo dài trên 1 phút";
    + $G$: "Chương trình quảng cáo của Đài truyền hình tỉnh $X$ kéo dài trong khoảng từ 20 đến 59 giây".
  ]
]

#bt()[
  Thống kê về số ca nhiễm bệnh và số ca tử vong của bệnh SARS và bệnh EBOLA được kết quả như sau:
  #align(center)[
    #table(
      columns: 3,
      align: center + horizon,
      [Bệnh], [Số người nhiễm], [Số người tử vong],
      [SARS (11 – 2002 đến 7 – 2003)], [8 437], [813],
      [EBOLA (2014 – 2016)], [34 453], [15 158],
    )
  ]
  Căn cứ vào bảng thống kê trên, hãy ước lượng xác suất một người tử vong khi nhiễm bệnh SARS, bệnh EBOLA.
]

#bt()[
  Một nhà máy sản xuất máy điều hoà tiến hành kiểm tra chất lượng của 600 chiếc điều hoà được sản xuất và thấy có 5 chiếc bị lỗi. Trong một lô hàng có 1 500 chiếc điều hoà, hãy dự đoán xem có khoảng bao nhiêu chiếc điều hoà không bị lỗi.
]

#bt()[
  Hai bạn Mai và Việt lần lượt thực hiện việc gieo đồng thời hai con xúc xắc và ở mỗi lần gieo sẽ nhận được số điểm bằng tổng số chấm xuất hiện trên hai con xúc xắc. Mai được gieo 100 lần và Việt được gieo 120 lần. Mai gieo trước và ghi lại kết quả của mình như sau:
  #align(center)[
    #table(
      columns: 12,
      align: center + horizon,
      [Số điểm], [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12],
      [Số lần], [3], [5], [9], [10], [14], [16], [13], [11], [8], [7], [4],
    )
  ]
  Trước khi Việt gieo, hãy dự đoán xem có bao nhiêu lần số điểm của Việt nhận được là:
  #listEX()[
    + Một số chẵn.
    + Một số nguyên tố.
    + Một số lớn hơn 7.
  ]
]

#bt()[
  Trước khi Linh tung một đồng xu cân đối và đồng chất 100 lần, Tâm dự đoán sẽ có trên 70 lần xuất hiện mặt sấp còn Thành lại dự đoán sẽ có ít hơn 70 lần xuất hiện mặt sấp. Theo em, bạn nào có khả năng đoán đúng cao hơn? Vì sao?
]

#bt()[
  Một hộp chứa một số quả bóng xanh và đỏ. Lan lấy ra ngẫu nhiên 1 quả bóng từ hộp, xem màu rồi trả bóng lại hộp. Lặp lại phép thử đó 200 lần, Lan thấy có 62 lần lấy được bóng xanh và 138 lần lấy được bóng màu đỏ.
  #listEX()[
    + Tính xác suất thực nghiệm của biến cố "Lấy được bóng xanh" sau 200 lần thử.
    + Biết số bóng xanh trong hộp là 20, hãy ước lượng số lượng bóng đỏ trong hộp.
  ]
]

#bt()[
  Xác suất nảy mầm của một loại hạt giống là $0","8$. Người ta đem gieo 1000 hạt giống đó. Hãy ước lượng xem có khoảng bao nhiêu hạt trong số đó sẽ nảy mầm.
]

#bt()[
  Phong gieo một con xúc xắc 120 lần và thống kê lại kết quả các lần gieo ở bảng sau:
  #align(center)[
    #table(
      columns: 7,
      align: center + horizon,
      [Mặt], [1 chấm], [2 chấm], [3 chấm], [4 chấm], [5 chấm], [6 chấm],
      [Số lần xuất hiện], [20], [24], [10], [6], [18], [42],
    )
  ]
  Hãy tính xác suất thực nghiệm của biến cố "Gieo được mặt có số chấm là số chẵn" sau 120 lần thử trên.
]

#bt()[
  Ở một sân bay người ta nhận thấy với mỗi chuyến bay, xác suất tất cả mọi người mua vé đều có mặt để lên máy bay là $0","9$. Trong một ngày sân bay đó có 120 lượt máy bay cất cánh. Hãy ước lượng số chuyến bay trong ngày hôm đó có người mua vé nhưng không lên máy bay.
]

#bt()[
  Ở một trang trại nuôi gà, người ta nhận thấy xác suất một quả trứng gà có cân nặng trên 42 g là $0","4$. Hãy ước lượng xem trong một lô 2000 quả trứng gà của trang trại có khoảng bao nhiêu quả trứng có cân nặng trên 42 g.
]

#bt()[
  Ở một trang trại nuôi chim cút, người ta nhận thấy xác suất một quả trứng cút có cân nặng dưới 9 g là $0","45$. Hãy ước lượng xem trong một lô 3000 quả trứng cút của trang trại có khoảng bao nhiêu quả trứng có cân nặng dưới 9 g.
]

#bt()[
  Mỗi bạn Trọng, Nhân và Thắng tung một đồng xu cân đối và đồng chất 40 lần và ghi lại kết quả ở bảng sau:
  #align(center)[
    #table(
      columns: 3,
      align: center + horizon,
      [Người tung], [Số lần xuất hiện mặt sấp], [Số lần xuất hiện mặt ngửa],
      [Trọng], [13], [27],
      [Nhân], [25], [15],
      [Thắng], [28], [12],
    )
  ]
  Gọi $E$ là biến cố "xuất hiện mặt ngửa".
  #listEX()[
    + Tính các xác suất thực nghiệm của biến cố $E$ sau 40 lần tung của từng bạn.
    + Tính xác suất thực nghiệm của biến cố $E$ sau 120 lần tung của cả 3 bạn.
    + Tính xác suất lí thuyết của biến cố $E$ khi tung đồng xu. So sánh xác suất này với các xác suất thực nghiệm vừa tính, em có nhận xét gì?
  ]
]

#bt()[
  Mỗi bạn Hoa, Thanh và Liễu tung một đồng xu cân đối và đồng chất 100 lần và ghi lại kết quả ở bảng sau:
  #align(center)[
    #table(
      columns: 3,
      align: center + horizon,
      [Người tung], [Số lần xuất hiện mặt sấp], [Số lần xuất hiện mặt ngửa],
      [Hoa], [55], [45],
      [Thanh], [38], [62],
      [Liễu], [52], [48],
    )
  ]
  Gọi $F$ là biến cố "xuất hiện mặt ngửa".
  #listEX()[
    + Tính các xác suất thực nghiệm của biến cố $F$ sau 100 lần tung của từng bạn.
    + Tính xác suất thực nghiệm của biến cố $F$ sau 300 lần tung của cả 3 bạn.
    + Tính xác suất lí thuyết của biến cố $F$ khi tung đồng xu. So sánh xác suất này với các xác suất thực nghiệm vừa tính, em có nhận xét gì?
  ]
]

#bt()[
  Một hộp chứa các viên bi màu trắng và đen có kích thước và khối lượng như nhau. Mai lấy ra ngẫu nhiên 1 viên bi từ hộp, xem màu rồi trả lại hộp. Lặp lại thử nghiệm đó 80 lần, Mai thấy có 24 lần lấy được viên bi màu trắng.
  #listEX()[
    + Hãy tính xác suất thực nghiệm của biến cố "Lấy được viên bi màu đen" sau 80 lần thử.
    + Biết tổng số bi trong hộp là 10, hãy ước lượng trong hộp có khoảng bao nhiêu viên bi màu trắng.
  ]
]
