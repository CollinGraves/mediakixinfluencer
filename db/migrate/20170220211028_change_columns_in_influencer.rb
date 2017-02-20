class ChangeColumnsInInfluencer < ActiveRecord::Migration
  def change
    rename_column :influencers, :pets, :pet_list
    rename_column :influencers, :kids_age_range, :kids_age_range_list

    remove_column :influencers, :licensing_included_boolean
    remove_column :influencers, :primary_languages

    add_column :influencers, :licensing_included, :boolean
    add_column :influencers, :primary_language, :integer
  end
end
