class RenameColumnInPlatformAccount < ActiveRecord::Migration
  def change
    rename_column :platform_accounts, :publishing_plaform_id, :publishing_platform_id
  end
end
