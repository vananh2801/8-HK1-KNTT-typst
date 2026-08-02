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
  Cô Hương đầu tư 500 triệu đồng vào hai khoản: mua trái phiếu doanh nghiệp với lãi suất 8% một năm và mua trái phiếu chính phủ với lãi suất 5% một năm. Cuối năm cô Hương nhận được $35","5$ triệu đồng tiền lãi. Hỏi cô Hương đã đầu tư vào mỗi khoản bao nhiêu tiền?
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
  Chị Linh làm việc trong một ngân hàng và được thưởng Tết bằng $2","5$ tháng lương. Tổng thu nhập một năm của chị Linh bao gồm lương 12 tháng và thưởng Tết là 290 triệu đồng. Hỏi lương hằng tháng của chị Linh là bao nhiêu?
]

#bt()[
  Bác Hưng đầu tư 300 triệu đồng vào hai khoản: mua trái phiếu doanh nghiệp với lãi suất 8% một năm và gửi tiết kiệm ngân hàng với lãi suất 6% một năm. Cuối năm bác Hưng nhận được 22 triệu đồng tiền lãi. Hỏi bác Hưng đã đầu tư vào mỗi khoản bao nhiêu tiền?
]

#bt()[
  Nhân dịp khai trương, một siêu thị điện máy đã giảm giá nhiều mặt hàng để thu hút khách hàng. Tổng giá niêm yết của một chiếc ti vi loại A và một chiếc tủ lạnh loại B là $36","8$ triệu đồng. Trong dịp này, ti vi loại A được giảm giá 30% và tủ lạnh loại B được giảm giá 25% nên bác Cường đã mua một chiếc ti vi và một chiếc tủ lạnh nói trên với tổng số tiền là $26","805$ triệu đồng. Hỏi giá niêm yết của mỗi chiếc ti vi loại A và mỗi chiếc tủ lạnh loại B là bao nhiêu?
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
    + Gọi $x$ là số phút gọi trong tháng. Hãy biểu thị theo $x$, số tiền phải trả trong tháng (tính theo nghìn đồng) khi sử dụng mỗi gói cước nói trên.
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
  Một cửa hàng ngày thứ nhất bán được nhiều hơn ngày thứ hai 560 kg gạo. Tính số gạo cửa hàng bán được trong ngày thứ nhất, biết rằng nếu ngày thứ nhất bán được thêm 60 kg gạo thì sẽ gấp $1","5$ lần ngày thứ hai.
]

#bt()[
  Một xe tải đi từ $A$ đến $B$ với tốc độ 50 km/h. Khi từ $B$ quay về $A$ xe chạy với tốc độ 40 km/h. Thời gian cả đi lẫn về mất 5 giờ 24 phút không kể thời gian nghỉ. Tính chiều dài quãng đường $A B$.
]

#bt()[
  Bác Năm gửi tiết kiệm một số tiền tại một ngân hàng theo thể thức kì hạn một năm với lãi suất $6","2$%/năm, tiền lãi sau mỗi năm gửi tiết kiệm sẽ được nhập vào tiền vốn để tính lãi cho năm tiếp theo. Sau hai năm gửi bác Nam rút hết tiền về và nhận được cả vốn lẫn lãi là 225 568 800 đồng. Hỏi số tiền ban đầu bác Năm gửi tiết kiệm là bao nhiêu?
]

#bt()[
  Tổng số học sinh khối 8 và khối 9 của một trường là 580 em, trong đó 256 em là học sinh giỏi. Tính số học sinh giỏi mỗi khối, biết rằng số học sinh giỏi khối 8 chiếm tỉ lệ 40% số học sinh khối 8, số học sinh giỏi khối 9 chiếm tỉ lệ 48% số học sinh khối 9.
]

#bt()[
  Một lọ dung dịch chứa 12% muối. Nếu pha thêm 350 g nước vào lọ thì được một dung dịch 5% muối. Tính khối lượng dung dịch trong lọ lúc đầu.
]

#bt()[
  Một ô tô di chuyển trên đường cao tốc từ Thành phố Hồ Chí Minh đến Quy Nhơn với vận tốc trung bình là 80 km/h. Khi từ Quy Nhơn về Thành phố Hồ Chí Minh, xe tăng vận tốc lên 90 km/h nên thời gian về ít hơn thời gian đi 54 phút. Tính quãng đường từ Thành phố Hồ Chí Minh đi Quy Nhơn.
]

#bt()[
  Xe máy thứ nhất đi từ A đến B với vận tốc 30 km/h. Sau đó 1 giờ 30 phút, xe máy thứ hai khởi hành đi từ B về A với vận tốc 35 km/h. Hỏi xe máy thứ nhất đi bao lâu thì gặp xe máy thứ hai? Biết đoạn đường từ A đến B dài 175 km.
]

#bt()[
  Gọi $s$ (km) là quãng đường một chiếc xe máy di chuyển trong $t$ (giờ) với vận tốc 50 km/h.
  #listEX()[
    + Lập công thức biểu diễn $s$ theo $t$.
    + Tính quãng đường xe máy đi được sau 2 giờ.
    + Sau bao lâu xe máy đi được quãng đường dài 120 km?
  ]
]

#bt()[
  Lúc 12 giờ trưa, một ô tô xuất phát từ A đến B với vận tốc 60 km/giờ. Cùng lúc đó, từ địa điểm C trên đường từ A đến B và cách A 40 km, một người đi xe máy với vận tốc 45 km/giờ cũng đi về B. Hỏi lúc mấy giờ thì hai xe gặp nhau và chỗ gặp nhau cách A bao xa?
]

#bt()[
  Anh An đi ô tô từ tỉnh A về quê ở tỉnh B với vận tốc 50 km/h, rồi từ tỉnh B quay về tỉnh A với vận tốc 40 km/h. Thời gian cả đi và về hết 5 giờ 24 phút (không kể thời gian nghỉ). Hãy tính quãng đường đi từ tỉnh A về tỉnh B.
]

#bt()[
  Một người đi xe máy từ nhà đến bãi biển Hồ Cốc - Huyện Xuyên Mộc, tỉnh Bà Rịa - Vũng Tàu với vận tốc trung bình 40 km/h, sau khi tham quan du lịch xong, người đó quay trở về nhà theo đường cũ với vận tốc lớn hơn lúc đi 10 km/h. Biết thời gian về ít hơn thời gian đi là 3,75 phút. Tính quãng đường xe máy đã đi từ nhà đến bãi biển Hồ Cốc.
]

#bt()[
  Một người đi xe máy từ A đến B với vận tốc 50 km/h. Sau khi đến B, người đó quay trở về A theo đường khác dài hơn 2 km với vận tốc giảm 10 km/h, nên thời gian về nhiều hơn thời gian đi 18 phút. Tính quãng đường lúc đi từ A đến B, biết rằng người đó không dừng lại nghỉ và giữ vận tốc đều trong suốt quá trình đi.
]

#bt()[
  Lúc 6 giờ sáng, một xe tải khởi hành từ A với vận tốc 40 km/giờ đi về B. Sau 1 giờ 30 phút, một xe du lịch cũng khởi hành từ A với vận tốc 60 km/giờ và đuổi theo xe tải. Hỏi lúc mấy giờ thì hai xe gặp nhau và chỗ gặp nhau cách B bao nhiêu km, biết quãng đường AB dài 200 km?
]

#bt()[
  Trong một đợt khuyến mãi, tất cả các mặt hàng giày dép của một siêu thị được giảm 20% (so với giá niêm yết). Trong dịp này, một người đã mua một bộ quần áo và hai đôi giày với giá tổng cộng là 980 000 đồng. Biết giá niêm yết của bộ quần áo là 500 000 đồng; giá của hai đôi giày bằng nhau. Hỏi giá tiền niêm yết của một đôi giày là bao nhiêu?
]

#bt()[
  Tại một cửa hàng bán bánh có chương trình khuyến mãi như sau: "Bắt đầu từ cái bánh thứ 5 trở đi, giá mỗi cái bánh được giảm 10% so với giá ban đầu." Bạn Hoa mua 10 cái bánh đã trả tổng cộng 112 800 đồng. Tính giá ban đầu của mỗi cái bánh.
]

#bt()[
  Tại cửa hàng, giá niêm yết của một cái áo là 300 000 đồng. Nếu bán với giá bằng ba phần tư giá niêm yết thì cửa hàng lãi 20%. Hỏi để lãi 40% thì cửa hàng phải niêm yết giá một cái áo là bao nhiêu?
]

#bt()[
  Cửa hàng buôn bán xe cũ mua một chiếc xe gắn máy và nâng giá của nó thêm 40%. Chiếc xe sau đó được bán với giá bằng 80% giá đã nâng và thu về 16 800 000 đồng. Hỏi cửa hàng đã thu lãi được bao nhiêu phần trăm?
]

#bt()[
  Theo quy định của công ty A, nhân viên bán hàng mỗi tháng bán được 50 sản phẩm thì hoàn thành chỉ tiêu và được nhận lương cơ bản là 8 000 000 đồng. Nếu nhân viên bán hơn 50 sản phẩm thì cứ mỗi sản phẩm vượt chỉ tiêu được hưởng 10% số tiền lời của sản phẩm đó. Biết mỗi sản phẩm bán ra công ty lời 1 000 000 đồng. Trong tháng 12 công ty trả anh Minh 9 500 000 đồng. Hỏi trong tháng 12 anh Minh bán được bao nhiêu sản phẩm?
]

#bt()[
  Anh An gửi một số tiền vào ngân hàng với lãi suất 8% một năm, kỳ hạn một năm. Sau một năm anh nhận được số tiền cả vốn lẫn lãi là 54 000 000 đồng. Hỏi anh đã gửi vào ngân hàng bao nhiêu tiền?
]

#bt()[
  Chị Bình đến ngân hàng A gửi 500 000 000 đồng, kỳ hạn một năm. Sau một năm chị nhận được số tiền cả vốn lẫn lãi là 537 500 000 đồng. Hỏi chị đã gửi ngân hàng với lãi suất bao nhiêu phần trăm?
]

#bt()[
  Tại cửa hàng, giá niêm yết của một cái áo là 500 000 đồng. Nếu bán với giá bằng một phần năm giá niêm yết thì cửa hàng lãi 25%. Hỏi để lãi 45% thì cửa hàng phải niêm yết giá một cái áo là bao nhiêu?
]

#bt()[
  Tuần trước, bạn My đi đến tiệm mua 1 ly trà sữa và 1 ly trà đào với tổng chi phí là 47 000 đồng. Hôm nay My lại đến tiệm đó để mua 5 ly trà sữa và 3 ly trà đào, nhưng giá trà sữa đã giảm 20%, còn giá trà đào tăng 10% so với tuần trước. Vì thế My đã trả chi phí là 172 600 đồng. Hỏi ở tuần trước, giá bán 1 ly trà sữa là bao nhiêu? Giá bán 1 ly trà đào là bao nhiêu?
]

#bt()[
  Nhằm động viên, khen thưởng các em đạt danh hiệu "học sinh giỏi cấp thành phố" năm học 2022 - 2023, trường A tổ chức chuyến tham quan ngoại khóa tại một điểm du lịch với mức giá ban đầu là 375 000 đồng/người. Biết công ty du lịch giảm 10% chi phí cho mỗi giáo viên và giảm 30% chi phí cho mỗi học sinh. Số học sinh nhiều hơn số giáo viên là 27 người và tổng chi phí tham quan (sau khi giảm giá) là 12 487 500 đồng. Tính số giáo viên và số học sinh đã tham gia chuyến đi.
]

#bt()[
  Anh Long muốn mua một điện thoại di động iPhone 14 để tặng vợ. Cửa hàng di động có chương trình khuyến mãi lớn, giảm 10% so với giá ban đầu. Do anh Long là khách hàng VIP nên được giảm thêm 5% so với giá đã giảm. Tổng số tiền giảm hai lần là 3 915 000 đồng. Hỏi giá ban đầu của điện thoại iPhone 14 là bao nhiêu?
]

#bt()[
  Bạn Nam và nhóm bạn học sinh lớp 8 cùng đi mua bánh. Các bạn vào hai cửa hàng A và B thì thấy giá một cái bánh ở cả hai cửa hàng bằng nhau nhưng mỗi cửa hàng có hình thức khuyến mãi khác nhau như sau:
  - Cửa hàng A có chương trình khuyến mãi: "Mua 5 cái bánh được tặng thêm 1 cái bánh miễn phí".
  - Cửa hàng B thì giảm giá 15% cho mỗi cái bánh nếu khách hàng mua từ 4 cái trở lên.
  Bạn Nam và nhóm bạn muốn mua 14 cái bánh thì chọn cửa hàng B vì có lợi hơn 1 500 đồng. Tính giá ban đầu của mỗi cái bánh.
]

#bt()[
  Chị Kim Thịnh có một số tiền và dự định gửi vào ngân hàng trong một năm. Tham khảo lãi suất một năm của các ngân hàng: A là 8,9%, B là 8,5%. Chị Kim Thịnh tính rằng trong một năm, tiền lời của ngân hàng A nhiều hơn ngân hàng B là 250 triệu đồng. Tính số tiền chị Kim Thịnh dự định gửi.
]

#bt()[
  Công ty A ký hợp đồng sản xuất khẩu trang cho đại lý B. Theo kế hoạch, công ty A sẽ hoàn thành hợp đồng trong 25 ngày. Nhưng mỗi ngày công ty làm đã vượt năng suất so với dự định là 2 hộp, nên đã hoàn thành sớm hơn kế hoạch 1 ngày và làm dư thêm 8 hộp. Hỏi công ty A ký hợp đồng sản xuất bao nhiêu hộp khẩu trang?
]

#bt()[
  Một phân xưởng may nhận được đơn hàng may đồng phục cho nhân viên của một hệ thống cửa hàng trà sữa trong 20 ngày. Khi thực hiện, phân xưởng đó đã tăng năng suất 20% nên sau 18 ngày không những đã xong số áo đó mà còn may thêm được 24 áo nữa. Tính số bộ đồng phục mà phân xưởng đó đã may được trên thực tế.
]

#bt()[
  Tại điểm tiêm phòng Covid-19 Trường A, một bàn tiêm dự định tiêm một số mũi tiêm vaccine phòng Covid-19 cho người dân trong 20 ngày. Do yêu cầu cấp bách của việc phòng bệnh, bàn tiêm đã tăng năng suất thêm 20% nên sau 18 ngày không những đã tiêm xong số mũi tiêm dự định mà còn tiêm thêm được 24 mũi tiêm nữa. Tính số mũi tiêm phòng Covid-19 mà một bàn tiêm dự định tiêm.
]

#bt()[
  Một công nhân được giao làm một số sản phẩm trong 10 giờ. Sau khi làm được 2 giờ với năng suất dự kiến, người đó đã cải tiến kỹ thuật nên đã tăng năng suất được 3 sản phẩm mỗi giờ. Sau đó, trong 8 giờ 24 phút, người công nhân đã làm xong số sản phẩm được giao. Hỏi người công nhân được giao làm bao nhiêu sản phẩm?
]

#bt()[
  Một xưởng dệt theo đơn hàng thì mỗi ngày dệt 30 cây vải, nhưng do trong xưởng có một anh thợ nghỉ việc nên số lượng cây vải làm ra giảm 5 cây vải mỗi ngày. Do đó, xưởng đã hoàn thành đơn hàng chậm hơn 4 ngày. Hỏi đơn hàng mà xưởng nhận dệt bao nhiêu cây vải?
]

#bt()[
  Nhà máy xay xát gạo nhận đơn hàng cung cấp gạo cho một công ty xuất khẩu gạo sang Châu Phi. Vì vậy, nhà máy dự định trung bình mỗi tuần phải xay xát được 20 tấn gạo thành phẩm. Do lượng lúa của các thương lái mua về nhiều nên nhà máy đã xay xát vượt mức 2 tấn/tuần gạo thành phẩm. Do đó, nhà máy chẳng những đã hoàn thành kế hoạch sớm hơn 1 tuần mà còn vượt mức đã dự định là 5 tấn gạo thành phẩm. Hỏi theo kế hoạch, nhà máy phải xay xát được bao nhiêu tấn để đủ cung cấp cho công ty xuất khẩu?
]

#bt()[
  Một công nhân phải làm một số sản phẩm trong 18 ngày. Do đã vượt mức mỗi ngày 5 sản phẩm nên sau 16 ngày anh đã làm xong và làm thêm 20 sản phẩm nữa ngoài kế hoạch. Tính xem mỗi ngày anh đã làm được bao nhiêu sản phẩm.
]

#bt()[
  Một công ty có 100 xe chở khách gồm hai loại, loại xe chở được 30 khách và loại xe chở được 50 khách. Nếu dùng tất cả số xe đó, công ty có thể chở tối đa 4300 khách trong một lần. Hãy tính số xe mỗi loại của công ty.
]

#bt()[
  Số học sinh khối 8 của một trường không thay đổi trong cả năm học. Cuối học kỳ 2, có 60% học sinh khối 8 không đạt danh hiệu học sinh giỏi, và số học sinh giỏi ở học kỳ 1 chỉ bằng $5 / 7$ số học sinh giỏi ở học kỳ 2. Có 28% số học sinh không đạt danh hiệu học sinh giỏi ở học kỳ 1 lại đạt danh hiệu học sinh giỏi ở học kỳ 2. Có 18 em từng đạt danh hiệu học sinh giỏi ở học kỳ 1 lại không đạt danh hiệu học sinh giỏi ở học kỳ 2. Hãy tìm số học sinh khối 8 của trường đó.
]

#bt()[
  Hai lớp 8A và 8B có 80 học sinh. Trong đợt góp tập vở ủng hộ các bạn có gia đình gặp khó khăn trong đại dịch COVID-19, lớp 8A mỗi em góp 2 quyển và lớp 8B mỗi em góp 3 quyển nên cả hai lớp góp được 198 quyển. Tìm số học sinh của mỗi lớp.
]

#bt()[
  Thùng cam thứ hai nặng hơn thùng cam thứ nhất 13 kg. Nếu tăng khối lượng thùng cam thứ nhất thêm 2 kg và giảm khối lượng thùng cam thứ hai đi 5 kg thì khối lượng thùng cam thứ hai bằng $3 / 2$ khối lượng thùng cam thứ nhất. Tính khối lượng mỗi thùng cam ban đầu.
]

#bt()[
  Đi xe đạp trong 1 phút tiêu hao 15 calo, đi bộ trong 1 phút tiêu hao 10 calo. Nếu bạn An cần tiêu hao 775 calo trong thời gian 1 giờ cho cả 2 hoạt động trên thì bạn sẽ phải thực hiện mỗi hoạt động trong thời gian bao lâu?
]

#bt()[
  Một tấm bìa hình chữ nhật có chu vi là 24 cm và chiều dài gấp 2 lần chiều rộng. Tìm diện tích của tấm bìa.
]

#bt()[
  Một khu vườn hình chữ nhật có chiều dài gấp ba lần chiều rộng. Nếu tăng chiều dài thêm 2 m và giảm chiều rộng đi 3 m thì diện tích khu vườn sẽ giảm 90 m$""^2$. Tính chiều dài và chiều rộng ban đầu của khu vườn.
]

#bt()[
  Một hình chữ nhật có chu vi là 56 m. Nếu tăng chiều rộng 2 m và giảm chiều dài 3 m thì diện tích của hình chữ nhật không thay đổi. Tính diện tích của hình chữ nhật lúc đầu.
]

#bt()[
  Nhu cầu mua hàng online hiện nay rất lớn. Để vận chuyển các món hàng đó đến khách hàng tiêu dùng, không ai khác chính là các shipper. Ngày 05/01/2022, công ty ABC tính nhờ các shipper vận chuyển hàng đến khách hàng. Mỗi shipper vận chuyển 30 món hàng. Sau khi tính toán lại, mỗi shipper vận chuyển 36 món hàng. Do đó, số shipper vận chuyển hàng giảm đi 3 người. Tính số món hàng ngày 05/01/2022 công ty ABC giao cho khách.
]
