class DeliveryHandlingtime < ActiveHash::Base
  self.data = [
    {id: 1, name: '即日'}, {id: 2, name: '2~3日以内'}, {id: 3, name: '5日以内'},
    {id: 4, name: '7日以内'}, {id: 5, name: '10日以内'}, {id: 6, name: '未定'},
              ]
end