class CreateCorps < ActiveRecord::Migration[5.1]
  def change
    create_table :corps do |t|
      t.string :name
      t.string :descrip
      t.string :cusip
      t.integer :coupon
      t.integer :yield
      t.integer :maturity
      t.string :sprating
      t.string :moodyrating
      t.integer :availablelot

      t.timestamps
    end
  end
end
