ActiveAdmin.register PlatformCampaign do
  permit_params :brand_id,
    :publishing_platform_id,
    :type,
    :clicks,
    :comments_count,
    :conversions,
    :facebook_shares,
    :twitter_shares,
    :pins_count,
    :date_live,
    :num_views,
    :likes,
    :shares,
    :num_posts,
    :engagement,
    :snaps,
    :opens,
    :retweets

  filter :brand_id,
    as: :ajax_filter,
    url: '/admin/brands',
    fields: [:name],
    display_name: :name,
    minimum_input_length: 2,
    order_by: 'name_asc'

  filter :campaign_id,
    as: :ajax_filter,
    url: '/admin/campaigns',
    fields: [:campaign_name],
    display_name: :campaign_name,
    minimum_input_length: 2,
    order_by: 'campaign_name_asc'

  filter :publishing_platform_id, as: :numeric, label: "Publishing Platform ID"
  filter :type, as: :select, collection: PlatformCampaign::PLATFORMS.map {|platform| [platform.titleize, "#{platform.titleize}PlatformCampaign"] }
  filter :date_live
  filter :clicks, as: :range_select
  filter :comments_count, as: :range_select
  filter :conversions, as: :range_select
  filter :facebook_shares, as: :range_select
  filter :twitter_shares, as: :range_select
  filter :pins_count, as: :range_select
  filter :num_views, as: :range_select
  filter :likes, as: :range_select
  filter :shares, as: :range_select
  filter :num_posts, as: :range_select
  filter :engagement, as: :range_select
  filter :opens, as: :range_select
  filter :retweets, as: :range_select

  index do
    selectable_column

    column :id do |obj|
      link_to obj.id, admin_platform_campaign_path(obj)
    end
    column :platform
    column :brand
    column :campaign_name do |obj|
      link_to obj.campaign_name, admin_campaign_path(obj.campaign_id)
    end
    column :publishing_platform
    column :date_live
    column :clicks
    column :comments_count
    column :pins_count
    column :conversions
    column :facebook_shares
    column :twitter_shares
    column :new_views
    column :likes
    column :shares
    column :num_posts
    column :engagement
    column :snaps
    column :opens
    column :retweets
    column :created_at
    column :updated_at

    actions
  end

  show do
    attributes_table do
      row :id
      row :platform
      row :brand
      row :campaign_name
      row :publishing_platform
      row :date_live
    end

    panel "Stats" do
      attributes_table_for platform_campaign do
        platform_campaign.class.stats_fields.each do |field|
          row field
        end
      end
    end
  end

  form do |f|
    f.semantic_errors *f.object.errors.keys

    f.inputs "Information" do
      if f.object.new_record?
        f.input :type, as: :select, collection: PlatformCampaign::PLATFORMS.map {|type| "#{type.titleize}PlatformCampaign" }
      else
        f.input :id, input_html: { disabled: true }
        f.input :platform, input_html: { disabled: true }
      end
    end

    f.inputs "Associations" do
      f.input :campaign
      f.input :publishing_platform
    end

    f.inputs "Stats" do
      platform_campaign.class.stats_fields.each do |field|
        f.input field
      end
    end

    f.actions
  end

  controller do
    def scoped_collection
      super.includes(:brand, :publishing_platform)
    end
  end

end
