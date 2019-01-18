class UodateForeignKeyOnItineraries < ActiveRecord::Migration[5.2]
  def change
  	remove_foreign_key :itineraries, :expeditions

  	add_foreign_key :itineraries, :expeditions, on_delete: :cascade
  end
end
