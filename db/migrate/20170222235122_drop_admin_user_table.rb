class DropAdminUserTable < ActiveRecord::Migration
  def change
    drop_table :admin_users
    add_column :users, :type, :string
  end
end
