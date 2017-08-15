class AddFavCorpToUsers < ActiveRecord::Migration[5.1]
  def change
  	  	add_column :users, :addcorps, :integer
  end
end
