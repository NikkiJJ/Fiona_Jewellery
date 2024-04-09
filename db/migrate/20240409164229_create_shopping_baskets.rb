class CreateShoppingBaskets < ActiveRecord::Migration[7.0]
  def change
    create_table :shopping_baskets do |t|
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
