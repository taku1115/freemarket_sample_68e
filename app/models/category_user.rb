class CategoryUser < ActiveHash::Base
  self.data = [
    {id: 1, name: 'レディース'}, {id: 2, name: 'ベビー・キッズ'}, {id: 3, name: 'インテリア・住まい・小物'},
                  {id: 4, name: '本・音楽・ゲーム'}, {id: 5, name: 'おもちゃ・ホビー・グッズ'}, {id: 6, name: 'コスメ・香水・美容'},
                  {id: 7, name: '家電・スマホ・カメラ'}, {id: 8, name: 'スポーツ・レジャー'}, {id: 9, name: 'チケット'}
  ]
end
