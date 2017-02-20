class AddStatstoPublishingPlatform < ActiveRecord::Migration
  def change
    remove_column :publishing_platforms, :influencer_id

    # Blog
    add_column :publishing_platforms, :url, :string
    add_column :publishing_platforms, :monthly_posts, :integer
    add_column :publishing_platforms, :monthly_page_views, :integer
    add_column :publishing_platforms, :monthly_unique_visitor, :integer

    # Youtube
    add_column :publishing_platforms, :avg_views, :integer
    add_column :publishing_platforms, :rate_dedicated, :integer
    add_column :publishing_platforms, :rate_integrated, :integer

    # Facebook
    add_column :publishing_platforms, :followers_count, :integer

    # Instragram
    add_column :publishing_platforms, :handle, :string
    add_column :publishing_platforms, :engage_rate, :integer

    # Snapchat
    add_column :publishing_platforms, :avg_opens, :integer
    add_column :publishing_platforms, :avg_screenshots, :integer
  end
end
