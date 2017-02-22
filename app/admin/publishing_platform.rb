ActiveAdmin.register PublishingPlatform do
  permit_params :name,
    :subscriber_count,
    :sponsorship_rate,
    :notes,
    :type,
    :url,
    :monthly_posts,
    :monthly_page_views,
    :monthly_unique_visitor,
    :avg_views,
    :rate_dedicated,
    :rate_integrated,
    :followers_count,
    :handle,
    :engage_rate,
    :avg_opens,
    :avg_screenshots


  filter :influencers_id, as: :numeric, label: "Influencer ID"

  filter :type, as: :select, collection: PublishingPlatform::PLATFORMS.map {|platform| [platform.titleize, "#{platform.titleize}PublishingPlatform"] }
  filter :id, as: :numeric, label: "Publishing Platform ID"
  filter :url, as: :string
  filter :handle, as: :string
  filter :subscriber_count, as: :numeric
  filter :sponsorship_rate, as: :numeric
  filter :monthly_posts, as: :numeric
  filter :monthly_page_views, as: :numeric
  filter :avg_views, as: :numeric
  filter :rate_dedicated, as: :numeric
  filter :rate_integrated, as: :numeric
  filter :followers_count, as: :numeric
  filter :engage_rate, as: :numeric
  filter :avg_opens, as: :numeric
  filter :avg_screenshots, as: :numeric
  filter :created_at
  filter :updated_at
end
