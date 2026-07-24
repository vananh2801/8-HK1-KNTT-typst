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

// Chương 6
#counter(heading).update((5,))
#chapter()[Phân thức đại số]
#include "data/8D6-1.typ"
#include "data/8D6-2.typ"
#include "data/8D6-3.typ"
#include "data/8D6-4.typ"
#counter(heading).update((9,))

// Chương 10
#chapter()[Một số hình khối trong thực tiễn]
#include "data/8H10-1.typ"
#include "data/8H10-2.typ"
