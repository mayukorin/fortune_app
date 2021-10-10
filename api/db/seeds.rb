# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

=begin
sign1 = Sign.create!(name: 'おひつじ座', picture_url: '', month: 1)
sign2 = Sign.create!(name: 'おうし座', picture_url: '', month: 1)
sign3 = Sign.create!(name: 'ふたご座', picture_url: '', month: 1)
sign4 = Sign.create!(name: 'かに座', picture_url: '', month: 1)
sign5 = Sign.create!(name: 'しし座', picture_url: '', month: 1)
sign6 = Sign.create!(name: 'おとめ座', picture_url: '', month: 1)
sign7 = Sign.create!(name: 'てんびん座', picture_url: '', month: 1)
sign8 = Sign.create!(name: 'さそり座', picture_url: '', month: 1)
sign9 = Sign.create!(name: 'いて座', picture_url: '', month: 1)
sign10 = Sign.create!(name: 'やぎ座', picture_url: '', month: 1)
sign11 = Sign.create!(name: 'みずがめ座', picture_url: '', month: 1)
sign12 = Sign.create!(name: 'うお座', picture_url: '', month: 1)

sign1.way_to_call_signs.create!(name: 'おひつじ座')
sign1.way_to_call_signs.create!(name: '牡羊座')
sign2.way_to_call_signs.create!(name: 'おうし座')
sign2.way_to_call_signs.create!(name: '牡牛座')
sign3.way_to_call_signs.create!(name: 'ふたご座')
sign3.way_to_call_signs.create!(name: '双子座')
sign4.way_to_call_signs.create!(name: 'かに座')
sign4.way_to_call_signs.create!(name: '蟹座')
sign5.way_to_call_signs.create!(name: 'しし座')
sign5.way_to_call_signs.create!(name: '獅子座')
sign6.way_to_call_signs.create!(name: 'おとめ座')
sign6.way_to_call_signs.create!(name: '乙女座')
sign7.way_to_call_signs.create!(name: 'てんびん座')
sign7.way_to_call_signs.create!(name: '天秤座')
sign8.way_to_call_signs.create!(name: 'さそり座')
sign8.way_to_call_signs.create!(name: '蠍座')
sign9.way_to_call_signs.create!(name: 'いて座')
sign9.way_to_call_signs.create!(name: '射手座')
sign10.way_to_call_signs.create!(name: 'やぎ座')
sign10.way_to_call_signs.create!(name: '山羊座')
sign11.way_to_call_signs.create!(name: 'みずがめ座')
sign11.way_to_call_signs.create!(name: '水瓶座')
sign12.way_to_call_signs.create!(name: 'うお座')
sign12.way_to_call_signs.create!(name: '魚座')
=end

FortuneSite.create!(name: '占い TV News', web_url: 'https://uranaitv.jp/rank_fortune')
FortuneSite.create!(name: 'au 占い', web_url: 'https://fortune.auone.jp/astro')
FortuneSite.create!(name: 'yahoo 占い', web_url: 'https://fortune.yahoo.co.jp/12astro/ranking.html')
FortuneSite.create!(name: 'Woman excite 占い', web_url: 'https://fortune.woman.excite.co.jp/free/horoscopes/ranking/')