class Shipping < ApplicationRecord
  belongs_to :item, optional:true
  extend ActiveHash::Associations::ActiveRecordExtensions
end
