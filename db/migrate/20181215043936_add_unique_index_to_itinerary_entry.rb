class AddUniqueIndexToItineraryEntry < ActiveRecord::Migration[5.2]
  def change
  	add_index :itinerary_entries, [:itinerary_id, :weight], unique: true
  end
end
