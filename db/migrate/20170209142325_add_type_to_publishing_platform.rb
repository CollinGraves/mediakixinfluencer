class AddTypeToPublishingPlatform < ActiveRecord::Migration
  def change
    add_column :publishing_platforms, :type, :string
  end
end
