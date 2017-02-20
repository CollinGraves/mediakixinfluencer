class CreatePlatformAccounts < ActiveRecord::Migration
  def change
    create_table :platform_accounts do |t|
      t.references :influencer, index: true
      t.references :publishing_plaform, index: true
      t.integer :account_type

      t.timestamps
    end
  end
end
