class AddFieldsToClients < ActiveRecord::Migration[6.1]
  def change
    add_column :clients, :last_name, :string
    add_column :clients, :first_name, :string
    add_column :clients, :address, :string
  end
end
