class AddPasswordToDonors < ActiveRecord::Migration[5.2]
  def change
    add_column :donors, :password, :string
  end
end
