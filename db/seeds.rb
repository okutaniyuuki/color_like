# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#MakerJanru.create(name: 'test')

ColorJanru.create(name: "赤系")
ColorJanru.create(name: "ピンク系")
ColorJanru.create(name: "オレンジ系")
ColorJanru.create(name: "アッシュ系")
ColorJanru.create(name: "マット系")
ColorJanru.create(name: "パープル系")
ColorJanru.create(name: "ベージュ系")
ColorJanru.create(name: "シルバー・グレー・モノトーン系")
ColorJanru.create(name: "ホワイト系")
ColorJanru.create(name: "その他")

MakerJanru.create(name: "その他")
MakerJanru.create(name: "シュワルツコフ")
MakerJanru.create(name: "資生堂")
MakerJanru.create(name: "ミルボン")
MakerJanru.create(name: "ロレアル")
MakerJanru.create(name: "ウェラ")
MakerJanru.create(name: "ルベル")
MakerJanru.create(name: "hoyu")
MakerJanru.create(name: "マニパニ")
MakerJanru.create(name: "モルトベーネ")


User.create(
             email: "oku085276@gmail.com",
             password:  "123456",
             password_confirmation: "123456",
             admin: true)




