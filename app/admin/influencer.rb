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


  filter :first_name_or_last_name, as: :string
  filter :email, as: :string
  filter :phone, as: :string
  filter :age
  filter :primary_language, as: :select, collection: Influencer.primary_languages
  filter :ethnicity, as: :select, collection: Influencer.ethnicities
  filter :gender, as: :select, collection: Influencer::GENDERS
  filter :worked_with_mediatrix, as: :boolean
  filter :alcohol_brand_friendly, as: :boolean
  filter :vlogger, as: :boolean
  filter :explicit_content, as: :boolean
  filter :brand_safe_content, as: :boolean
  filter :licensing_included, as: :boolean
  filter :fubr, as: :boolean
  filter :staff_pick, as: :boolean
  filter :brand_exclusives
  filter :cpa_compensation_basics

  filter :address_country, as: :string
  filter :address_city, as: :string
  filter :address_state, as: :string
  filter :address_zipcode, as: :string

  filter :publishing_platforms_type, as: :select, collection: PublishingPlatform::PLATFORMS.map {|platform| [platform.titleize, "#{platform.titleize}PublishingPlatform"] }
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

end
