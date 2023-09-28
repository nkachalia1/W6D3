class ChangeUser < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :email, :string
    rename_column :users, :name, :username

    add_index :users, :username, presence: true, unique: true


  end
end
