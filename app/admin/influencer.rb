ActiveAdmin.register Influencer do
  active_admin_importable
  permit_params :first_name,
                :last_name,
                :email,
                :phone,
                :worked_with_mediatrix,
                :age,
                :gender,
                :ethnicity,
                :primary_language,
                :kids_age_range,
                :pets,
                :alcohol_brand_friendly,
                :vlogger,
                :explicit_content,
                :brand_safe_content,
                :licensing_included,
                :brand_exclusives,
                :fubr,
                :cpa_compensation_basics,
                :staff_pick


  filter :first_name_or_last_name, as: :string, label: "Name"
  filter :email, as: :string
  filter :phone, as: :string
  filter :age, as: :numeric
  filter :primary_language, as: :select, collection: Influencer.primary_languages
  filter :ethnicity, as: :select, collection: Influencer.ethnicities
  filter :gender, as: :select, collection: Influencer::GENDERS
  filter :worked_with_mediatrix, as: :boolean
  filter :alcohol_brand_friendly, as: :boolean
  filter :vlogger, as: :boolean
  filter :explicit_content, as: :boolean
  filter :brand_safe_content, as: :boolean
  filter :licensing_included, as: :boolean
  filter :fubr, as: :boolean, label: "Frequent Used Blogger List"
  filter :staff_pick, as: :boolean
  filter :brand_exclusives, as: :string
  filter :cpa_compensation_basics

  filter :address_country, as: :select, collection: ISO3166::Country.translations.invert
  filter :address_city, as: :string
  filter :address_state, as: :string
  filter :address_zipcode, as: :string

  filter :publishing_platforms_type, as: :select, collection: PublishingPlatform::PLATFORMS.map {|platform| [platform.titleize, "#{platform.titleize}PublishingPlatform"] }
  filter :publishing_platforms_id, as: :numeric, label: "Publishing Platform ID"
  filter :publishing_platforms_url, as: :string
  filter :publishing_platforms_handle, as: :string
  filter :publishing_platforms_subscriber_count, as: :numeric
  filter :publishing_platforms_sponsorship_rate, as: :numeric
  filter :publishing_platforms_monthly_posts, as: :numeric
  filter :publishing_platforms_monthly_page_views, as: :numeric
  filter :publishing_platforms_avg_views, as: :numeric
  filter :publishing_platforms_rate_dedicated, as: :numeric
  filter :publishing_platforms_rate_integrated, as: :numeric
  filter :publishing_platforms_followers_count, as: :numeric
  filter :publishing_platforms_engage_rate, as: :numeric
  filter :publishing_platforms_avg_opens, as: :numeric
  filter :publishing_platforms_avg_screenshots, as: :numeric

  filter :platform_campaigns_type, as: :select, collection: PlatformCampaign::PLATFORMS.map {|platform| [platform.titleize, "#{platform.titleize}PlatformCampaign"] }
  filter :platform_campaigns_id, as: :numeric, label: "Platform Campaign ID"
  filter :platform_campaigns_date_live, as: :date_range
  filter :platform_campaigns_clicks, as: :numeric
  filter :platform_campaigns_comments_count, as: :numeric
  filter :platform_campaigns_conversions, as: :numeric
  filter :platform_campaigns_facebook_shares, as: :numeric
  filter :platform_campaigns_twitter_shares, as: :numeric
  filter :platform_campaigns_pins_count, as: :numeric
  filter :platform_campaigns_num_views, as: :numeric
  filter :platform_campaigns_likes, as: :numeric
  filter :platform_campaigns_shares, as: :numeric
  filter :platform_campaigns_num_posts, as: :numeric
  filter :platform_campaigns_engagement, as: :numeric
  filter :platform_campaigns_snaps, as: :numeric
  filter :platform_campaigns_opens, as: :numeric
  filter :platform_campaigns_retweets, as: :numeric

  filter :campaigns_id, as: :numeric, label: "Campaign ID"
  filter :campaigns_campaign_name, as: :string
  filter :campaigns_contract_num, as: :string

  filter :brands_id, as: :numeric, label: "Brand ID"
  filter :brands_name, as: :string
  filter :brands_slug, as: :string

  form do |f|

    f.inputs "Personal Information" do
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :phone
      f.input :age
      f.input :gender, as: :select, collection: Influencer::GENDERS
      f.input :primary_language
      f.input :ethnicity
    end

    f.inputs "Other Details" do
      f.input :kids_age_range_list, as: :select, collection: Influencer::KIDS_AGE_RANGES
      f.input :pet_list, as: :select, collection: Influencer::PETS
      f.input :staff_pick
      f.input :worked_with_mediatrix
      f.input :alcohol_brand_friendly
      f.input :vlogger
      f.input :explicit_content
      f.input :brand_safe_content
      f.input :fubr, label: "Frequent Used Blogger List"
      f.input :licensing_included
      f.input :brand_exclusives
      f.input :cpa_compensation_basics
    end

    f.actions
  end

end
