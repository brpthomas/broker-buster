class AddImagesToCorps < ActiveRecord::Migration[5.1]
  def change
  	add_column :corps, :image_url, :string

  end
end
