class AddAddressToIssues < ActiveRecord::Migration[5.1]
  def change
    add_column :issues, :address, :string
  end
end
