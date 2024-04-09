class CreateBasketItems < ActiveRecord::Migration[7.0]
  def change
    create_table :basket_items do |t|
      t.references :shopping_basket, null: false, foreign_key: true
      t.references :jewellery_item, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
