#import "../style/lib.typ": *
#show: appearance

#section()[Giải bài toán bằng cách lập phương trình]

#subsection()[Lý thuyết]

#phuongphap(tieude: "Các bước giải một bài toán bằng cách lập phương trình")[
  #cacbuoc()[
    + Lập phương trình:
      - Chọn ẩn số và đặt điều kiện thích hợp cho ẩn số;
      - Biểu diễn các đại lượng chưa biết theo ẩn và các đại lượng đã biết;
      - Lập phương trình biểu thị mối quan hệ giữa các đại lượng.
    + Giải phương trình.
    + Trả lời: Kiểm tra xem trong các nghiệm của phương trình, nghiệm nào thoả mãn điều kiện của ẩn, nghiệm nào không, rồi kết luận.
  ]
]

#vd()[
  Cô Hương đầu tư 500 triệu đồng vào hai khoản: mua trái phiếu doanh nghiệp với lãi suất 8% một năm và mua trái phiếu chính phủ với lãi suất 5% một năm. Cuối năm cô Hương nhận được 35,5 triệu đồng tiền lãi. Hỏi cô Hương đã đầu tư vào mỗi khoản bao nhiêu tiền?
  #loigiai()[
    #dotlineEX(18)
  ]
]

#vd()[
  Bác Mai đi siêu thị mua một mặt hàng đang có chương trình khuyến mại giảm giá 20%. Vì có thẻ khách hàng thân thiết của siêu thị nên bác được giảm thêm 5% trên giá đã giảm, do đó bác Mai chỉ phải trả 380 nghìn đồng cho mặt hàng đó. Hỏi giá ban đầu của mặt hàng đó nếu không khuyến mại là bao nhiêu?
  #loigiai()[
    #dotlineEX(18)
  ]
]

#subsection()[Bài tập tự luận]

#bt()[
  Chị Linh làm việc trong một ngân hàng và được thưởng Tết bằng 2,5 tháng lương. Tổng thu nhập một năm của chị Linh bao gồm lương 12 tháng và thưởng Tết là 290 triệu đồng. Hỏi lương hằng tháng của chị Linh là bao nhiêu?
]

#bt()[
  Bác Hưng đầu tư 300 triệu đồng vào hai khoản: mua trái phiếu doanh nghiệp với lãi suất 8% một năm và gửi tiết kiệm ngân hàng với lãi suất 6% một năm. Cuối năm bác Hưng nhận được 22 triệu đồng tiền lãi. Hỏi bác Hưng đã đầu tư vào mỗi khoản bao nhiêu tiền?
]

#bt()[
  Nhân dịp khai trương, một siêu thị điện máy đã giảm giá nhiều mặt hàng để thu hút khách hàng. Tổng giá niêm yết của một chiếc ti vi loại A và một chiếc tủ lạnh loại B là 36,8 triệu đồng. Trong dịp này, ti vi loại A được giảm giá 30% và tủ lạnh loại B được giảm giá 25% nên bác Cường đã mua một chiếc ti vi và một chiếc tủ lạnh nói trên với tổng số tiền là 26,805 triệu đồng. Hỏi giá niêm yết của mỗi chiếc ti vi loại A và mỗi chiếc tủ lạnh loại B là bao nhiêu?
]

#bt()[
  Bạn Nam đi xe đạp rời nhà lúc 14 giờ với vận tốc 12 km/h. Khi Hùng đến nhà Nam vào lúc 14 giờ 10 phút thì mẹ Nam chỉ hướng đường đi của Nam cho Hùng và Hùng đi xe đạp đuổi theo với vận tốc 18 km/h. Hỏi đến lúc mấy giờ thì Hùng đuổi kịp Nam?
]

#bt()[
  Hai công ty viễn thông đưa ra hai gói cước cho điện thoại cố định như sau:
  #align(center)[
    #table(
      columns: 3,
      align: center,
      [], [Cước thuê bao hằng tháng (đồng)], [Giá cước mỗi phút gọi (đồng)],
      [Công ty A], [32 000], [900],
      [Công ty B], [38 000], [700],
    )
  ]
  #listEX()[
    + Gọi $x$ là số phút gọi trong tháng. Hãy biểu thị theo $x$, số tiền phải trả trong tháng (tính theo nghìn đồng) khi sử dụng mỗi gói cước nói trên;
    + Hỏi với bao nhiêu phút gọi thì số tiền phải trả trong tháng khi sử dụng dịch vụ của hai công ty viễn thông này là như nhau?
  ]
]

#bt()[
  Một nhân viên giao hàng trong hai ngày đã giao được 95 đơn hàng. Biết số đơn hàng ngày thứ hai giao được nhiều hơn ngày thứ nhất 15 đơn. Tính số đơn hàng nhân viên đó giao được trong ngày thứ nhất.
]

#bt()[
  Anh Bình tiêu hao 14 calo cho mỗi phút bơi và 10 calo cho mỗi phút chạy bộ. Trong 40 phút với hai hoạt động trên, anh Bình đã tiêu hao 500 calo. Tính thời gian chạy bộ của anh Bình.
]

#bt()[
  Một cửa hàng ngày thứ nhất bán được nhiều hơn ngày thứ hai 560kg gạo. Tính số gạo cửa hàng bán được trong ngày thứ nhất, biết rằng nếu ngày thứ nhất bán được thêm 60kg gạo thì sẽ gấp 1,5 lần ngày thứ hai.
]

#bt()[
  Một xe tải đi từ $A$ đến $B$ với tốc độ 50 km/h. Khi từ $B$ quay về $A$ xe chạy với tốc độ 40 km/h. Thời gian cả đi lẫn về mất 5 giờ 24 phút không kể thời gian nghỉ. Tính chiều dài quãng đường $A B$.
]

#bt()[
  Bác Năm gửi tiết kiệm một số tiền tại một ngân hàng theo thể thức kì hạn một năm với lãi suất 6,2%/năm, tiền lãi sau mỗi năm gửi tiết kiệm sẽ được nhập vào tiền vốn để tính lãi cho năm tiếp theo. Sau hai năm gửi bác Nam rút hết tiền về và nhận được cả vốn lẫn lãi là 225 568 800 đồng. Hỏi số tiền ban đầu bác Năm gửi tiết kiệm là bao nhiêu?
]

#bt()[
  Tổng số học sinh khối 8 và khối 9 của một trường là 580 em, trong đó 256 em là học sinh giỏi. Tính số học sinh giỏi mỗi khối, biết rằng số học sinh giỏi khối 8 chiếm tỉ lệ 40% số học sinh khối 8, số học sinh giỏi khối 9 chiếm tỉ lệ 48% số học sinh khối 9.
]

#bt()[
  Một lọ dung dịch chứa 12% muối. Nếu pha thêm 350g nước vào lọ thì được một dung dịch 5% muối. Tính khối lượng dung dịch trong lọ lúc đầu.
]
