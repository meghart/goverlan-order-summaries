{"filter":false,"title":"application_helper.rb","tooltip":"/app/helpers/application_helper.rb","undoManager":{"mark":13,"position":13,"stack":[[{"group":"doc","deltas":[{"start":{"row":1,"column":0},"end":{"row":2,"column":0},"action":"insert","lines":["",""]}]}],[{"group":"doc","deltas":[{"start":{"row":1,"column":0},"end":{"row":6,"column":3},"action":"insert","lines":["def sortable(column, title = nil)","  title ||= column.titleize","  css_class = column == sort_column ? \"current #{sort_direction}\" : nil","  direction = column == sort_column && sort_direction == \"asc\" ? \"desc\" : \"asc\"","  link_to title, {:sort => column, :direction => direction}, {:class => css_class}","end"]}]}],[{"group":"doc","deltas":[{"start":{"row":1,"column":0},"end":{"row":1,"column":4},"action":"insert","lines":["    "]},{"start":{"row":2,"column":0},"end":{"row":2,"column":4},"action":"insert","lines":["    "]},{"start":{"row":3,"column":0},"end":{"row":3,"column":4},"action":"insert","lines":["    "]},{"start":{"row":4,"column":0},"end":{"row":4,"column":4},"action":"insert","lines":["    "]},{"start":{"row":5,"column":0},"end":{"row":5,"column":4},"action":"insert","lines":["    "]},{"start":{"row":6,"column":0},"end":{"row":6,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":1,"column":4},"end":{"row":6,"column":7},"action":"remove","lines":["def sortable(column, title = nil)","      title ||= column.titleize","      css_class = column == sort_column ? \"current #{sort_direction}\" : nil","      direction = column == sort_column && sort_direction == \"asc\" ? \"desc\" : \"asc\"","      link_to title, {:sort => column, :direction => direction}, {:class => css_class}","    end"]}]}],[{"group":"doc","deltas":[{"start":{"row":1,"column":0},"end":{"row":1,"column":4},"action":"remove","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":0,"column":24},"end":{"row":1,"column":0},"action":"remove","lines":["",""]}]}],[{"group":"doc","deltas":[{"start":{"row":0,"column":24},"end":{"row":1,"column":0},"action":"insert","lines":["",""]},{"start":{"row":1,"column":0},"end":{"row":1,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":1,"column":4},"end":{"row":6,"column":7},"action":"insert","lines":["def sortable(column, title = nil)","      title ||= column.titleize","      css_class = column == sort_column ? \"current #{sort_direction}\" : nil","      direction = column == sort_column && sort_direction == \"asc\" ? \"desc\" : \"asc\"","      link_to title, {:sort => column, :direction => direction}, {:class => css_class}","    end"]}]}],[{"group":"doc","deltas":[{"start":{"row":3,"column":6},"end":{"row":3,"column":7},"action":"insert","lines":["#"]}]}],[{"group":"doc","deltas":[{"start":{"row":5,"column":63},"end":{"row":5,"column":64},"action":"insert","lines":["#"]}]}],[{"group":"doc","deltas":[{"start":{"row":3,"column":6},"end":{"row":3,"column":7},"action":"remove","lines":["#"]}]}],[{"group":"doc","deltas":[{"start":{"row":5,"column":63},"end":{"row":5,"column":64},"action":"remove","lines":["#"]}]}],[{"group":"doc","deltas":[{"start":{"row":3,"column":6},"end":{"row":3,"column":7},"action":"insert","lines":["#"]}]}],[{"group":"doc","deltas":[{"start":{"row":5,"column":63},"end":{"row":5,"column":64},"action":"insert","lines":["#"]}]}],[{"group":"doc","deltas":[{"start":{"row":3,"column":6},"end":{"row":3,"column":7},"action":"remove","lines":["#"]}]}],[{"group":"doc","deltas":[{"start":{"row":5,"column":63},"end":{"row":5,"column":64},"action":"remove","lines":["#"]}]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":7,"column":3},"end":{"row":7,"column":3},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1424273168272,"hash":"5a0fd09fce171ce4ef4e5dd5e6d51612c20cf4c7"}