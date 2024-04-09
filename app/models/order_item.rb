class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :jewellery_item
end
