class Item < ApplicationRecord
  has_one :shipping
  accepts_nested_attributes_for :shipping
end
