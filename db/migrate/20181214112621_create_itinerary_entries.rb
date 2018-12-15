class CreateItineraryEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :itinerary_entries do |t|
      t.integer :weight, null: false, default: 1

      t.references :itinerary, foreign_key: true
      t.references :planet, foreign_key: true

      t.timestamps
    end
  end
end
