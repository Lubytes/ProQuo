class NoNullInUser < ActiveRecord::Migration[5.0]
  def change
	change_column :users, :username, :string, :null => false
	change_column :users, :password_hash, :string, :null => false
  end
end
