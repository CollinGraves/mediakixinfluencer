ActiveAdmin.register Influencer do
  active_admin_importable

  decorate_with InfluencerDecorator

  permit_params :first_name,
                :last_name,
                :email,
                :phone,
                :worked_with_mediatrix,
                :age,
                :gender,
                :ethnicity,
                :primary_language,
                :kids_age_range_list,
                :pet_list,
                :alcohol_brand_friendly,
                :vlogger,
                :explicit_content,
                :brand_safe_content,
                :licensing_included,
                :brand_exclusives,
                :fubr,
                :cpa_compensation_basics,
                :staff_pick,
                address_attributes: [:country, :state, :city, :zipcode, :primary_address, :secondary_address]


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

  index do
    selectable_column
    column :id do |influencer|
      link_to influencer.id, admin_influencer_path(influencer)
    end
    column :name
    column :email
    column :country
    column :publishing_platforms_list

    actions
  end

  show do
    attributes_table do
      row :id
      row :name
      row :email
      row :phone
      row :age
      row :gender
      row :primary_language
      row :ethnicity
      row :kids_age_range_list
      row :pet_lists
    end

    panel "Other Information" do
      attributes_table_for influencer do
        row :staff_pick
        row :worked_with_mediatrix
        row :alcohol_brand_friendly
        row :vlogger
        row :explicit_content
        row :brand_safe_content
        row "Frequent Used Blogger List" do |i|
          status_tag i.fubr
        end
        row :licensing_included
        row :brand_exclusives
        row :cpa_compensation_basics
      end
    end

    panel "Address Details" do
      attributes_table_for influencer.address do
        row :id do |a|
          link_to a.id, admin_address_path(a)
        end
        row :country
        row :state
        row :city
        row :primary_address
        row :secondary_address
      end
    end

    panel "Associations" do
      attributes_table_for influencer do
        row :publishing_platforms do |i|
          link_to i.publishing_platforms_list, admin_publishing_platforms_path(q: {influencers_id_equals: i.id})
        end
      end
    end
  end

  form do |f|
    f.semantic_errors *f.object.errors.keys

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

    f.inputs "Address Details", for: [:address, f.object.address || Address.new ] do |a|
      a.input :country, as: :select, collection: ISO3166::Country.translations.invert
      a.input :state
      a.input :city
      a.input :zipcode
      a.input :primary_address
      a.input :secondary_address
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

  controller do
    def scoped_collection
      super.includes(:address, :publishing_platforms)
    end
  end

end
