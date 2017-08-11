class CreateCorps < ActiveRecord::Migration[5.1]
  def change
    create_table :corps do |t|
      t.string :name
      t.string :descrip
      t.integer :coupon_rate
      t.integer :yield
      t.string :sp_rating
      t.string :moodys_rating
      t.integer :available_lot

      t.timestamps
    end
  end
end
