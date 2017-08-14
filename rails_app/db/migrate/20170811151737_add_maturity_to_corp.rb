class AddMaturityToCorp < ActiveRecord::Migration[5.1]
  def change
  	 add_column :corps, :maturity, :integer

  end
end
