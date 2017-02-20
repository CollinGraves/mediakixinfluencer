class AddDataToInfluencers < ActiveRecord::Migration
  def change
    add_column :influencers, :worked_with_mediatrix, :boolean
    add_column :influencers, :age, :integer
    add_column :influencers, :gender, :boolean
    add_column :influencers, :ethnicity, :integer
    add_column :influencers, :primary_languages, :string
    add_column :influencers, :kids_age_range, :string
    add_column :influencers, :pets, :string
    add_column :influencers, :alcohol_brand_friendly, :boolean
    add_column :influencers, :vlogger, :boolean
    add_column :influencers, :explicit_content, :boolean
    add_column :influencers, :brand_safe_content, :boolean
    add_column :influencers, :licensing_included_boolean, :string
    add_column :influencers, :brand_exclusives, :text
    add_column :influencers, :fubr, :boolean
    add_column :influencers, :cpa_compensation_basics, :text
    add_column :influencers, :staff_pick, :boolean
  end
end
