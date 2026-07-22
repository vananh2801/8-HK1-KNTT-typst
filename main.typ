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
#outline(depth: 3)

#chapter()[Đa thức]

#include "data/8D1-1.typ"
