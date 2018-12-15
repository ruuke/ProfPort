class AddAssociationSpaceShipExpedition < ActiveRecord::Migration[5.2]
  def change
    change_table :spaceships do |t|
      t.belongs_to :expedition, foreng_key: true, index: true
    end
  end
end
