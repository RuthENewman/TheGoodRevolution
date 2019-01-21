class CreateDonations < ActiveRecord::Migration[5.2]
  def change
    create_table :donations do |t|
      t.integer :donor_id
      t.integer :event_id
      t.float :amount

      t.timestamps
    end
  end
end
