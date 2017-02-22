class RemoveNameFromPublishingPlatforms < ActiveRecord::Migration
  def change
    remove_column :publishing_platforms, :name
  end
end
