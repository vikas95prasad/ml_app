class CreateBlackFridays < ActiveRecord::Migration[5.2]
  def change
    create_table :black_fridays do |t|
      t.string :user_id
      t.string :product_id
      t.string :gender
      t.integer :age
      t.string :occupation
      t.string :city_category
      t.string :stay_in_current_city_years
      t.string :marital_status
      t.string :product_category_1
      t.string :product_category_2
      t.string :product_category_3
      t.string :purchase

      t.timestamps
    end
  end
end
