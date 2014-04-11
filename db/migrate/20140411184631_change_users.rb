class ChangeUsers < ActiveRecord::Migration
  def change
    rename_column :users, :admin_id, :admin
  end
end
