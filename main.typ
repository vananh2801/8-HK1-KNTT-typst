#import "style/lib.typ": *
#show: appearance
#show: tableofcontens

#state("vd_show_ans").update(true)
#state("bt_show_ans").update(true)
#state("ex_show_ans").update(false)
#state("btrl_show_ans").update(false)

#dotlinefull("vd", socot: 1)
#dotlinefull("bt", socot: 1)

// Mục lục
#outline(depth: 2)

// Chương 1
#counter(heading).update((0,))
#chapter()[Đa thức]
#include "data/8D1-1.typ"
#include "data/8D1-2.typ"
#include "data/8D1-3.typ"
#include "data/8D1-4.typ"
#include "data/8D1-5.typ"

// Chương 2
#counter(heading).update((1,))
#chapter()[Hằng dẳng thức đáng nhớ và ứng dụng]
#include "data/8D2-1.typ"
#include "data/8D2-2.typ"

// Chương 3
#counter(heading).update((2,))
#chapter()[Tứ giác]
#include "data/8H3-1.typ"
#include "data/8H3-2.typ"
#include "data/8H3-3.typ"
#include "data/8H3-4.typ"
#include "data/8H3-5.typ"

// Chương 4
#counter(heading).update((3,))
#chapter()[Định lý Thalès]
#include "data/8H4-1.typ"
#include "data/8H4-2.typ"
#include "data/8H4-3.typ"

// Chương 5
#counter(heading).update((4,))
#chapter()[Dữ lịêu và biểu đồ]
#include "data/8T5-1.typ"
#include "data/8T5-2.typ"
#include "data/8T5-3.typ"

// Chương 6
#counter(heading).update((5,))
#chapter()[Phân thức đại số]
#include "data/8D6-1.typ"
#include "data/8D6-2.typ"
#include "data/8D6-3.typ"
#include "data/8D6-4.typ"

// Chương 10
#counter(heading).update((9,))
#chapter()[Một số hình khối trong thực tiễn]
#include "data/8H10-1.typ"
#include "data/8H10-2.typ"
