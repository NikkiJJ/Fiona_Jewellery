class BasketItem < ApplicationRecord
  belongs_to :shopping_basket
  belongs_to :jewellery_item
end
