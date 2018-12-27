class AddTitleToGalaxy < ActiveRecord::Migration[5.2]
  def change
  	add_column :galaxies, :title, :string
  end
end
