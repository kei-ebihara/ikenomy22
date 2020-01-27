# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = %w(居酒屋・ダイニングバー 立ち飲み屋 和食系 洋食系	肉系 中華	韓国 アジア・エスニック	カレー 焼肉・ホルモン 創作系 ファミレス 食堂 ラーメン うどん そば ピザ・パスタ・ハンバーガー バー	ラウンジ ワインバー	ビアガーデン・ビアバー その他飲食系 うさぎ系 ガールズバー メイド キャバクラ 相席・出会い系 その他夜系)

categories.each do |category|
  Category.create(name: category)
end