class AddColumnAccessToPlanets < ActiveRecord::Migration[5.2]
  def change
    add_column :planets, :access, :boolean, default: true
  end
end
