class CreateDonors < ActiveRecord::Migration[5.2]
  def change
    create_table :donors do |t|
      t.string :name
      t.string :email
      t.string :address
      t.integer :phonenumber

      t.timestamps
    end
  end
end
