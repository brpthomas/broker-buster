class AddCusipToCorps < ActiveRecord::Migration[5.1]
  def change
  	add_column :corps, :cusip, :string
  end
end
