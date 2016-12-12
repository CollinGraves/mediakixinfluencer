class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :primary_address
      t.string :secondary_address
      t.string :city
      t.string :state
      t.string :zipcode
      t.references :influencer, index: true

      t.timestamps
    end
  end
end
