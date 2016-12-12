class CreatePublishingPlatforms < ActiveRecord::Migration
  def change
    create_table :publishing_platforms do |t|
      t.string :name
      t.references :influencer, index: true
      t.integer :subscriber_count
      t.integer :sponsorship_rate
      t.text :notes

      t.timestamps
    end
  end
end
