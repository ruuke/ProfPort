class AddExpeditionToReference < ActiveRecord::Migration[5.2]
  def change
  	add_reference :users, :expedition, foreign_key: true
  end
end
