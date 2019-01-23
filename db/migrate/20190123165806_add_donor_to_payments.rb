class AddDonorToPayments < ActiveRecord::Migration[5.2]
  def change
    add_column :payments, :donor_id, :integer
  end
end
