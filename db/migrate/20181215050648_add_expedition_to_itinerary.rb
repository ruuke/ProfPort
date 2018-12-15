class AddExpeditionToItinerary < ActiveRecord::Migration[5.2]
  def change
    add_reference :itineraries, :expedition, foreign_key: true
  end
end
