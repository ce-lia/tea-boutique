class AddTrackableToClients < ActiveRecord::Migration[6.1]
  def change
    add_column :clients, :sign_in_count, :integer, default: 0, null: false
    add_column :clients, :current_sign_in_at, :datetime
    add_column :clients, :last_sign_in_at, :datetime
    add_column :clients, :current_sign_in_ip, :string
    add_column :clients, :last_sign_in_ip, :string
  end
end
