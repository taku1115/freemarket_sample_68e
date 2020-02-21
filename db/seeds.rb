lady = Category.create(name:"レディース")
men = Category.create(name:"メンズ")
men_jacket = men.children.create(name:"ジャケット/アウター")
men_jacket.children.create([{name:"テーラードジャケット"}])