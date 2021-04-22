class AddConfirmableToDevise < ActiveRecord::Migration[6.1]
  def up
    add_column :clients, :confirmation_token, :string
    add_column :clients, :confirmed_at, :datetime
    add_column :clients, :confirmation_sent_at, :datetime
    add_index :clients, :confirmation_token, unique: true
    Client.update_all confirmed_at: DateTime.now
  end

  def down
    remove_index :clients, :confirmation_token
    remove_columns :clients, :confirmation_token, :confirmed_at, :confirmation_sent_at
  end
end
