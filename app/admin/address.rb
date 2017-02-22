ActiveAdmin.register Address do
  menu parent: "Influencers"

  permit_params :primary_address,
                :secondary_address,
                :city,
                :state,
                :zipcode,
                :country

  filter :influencer_id, as: :numeric, label: "Influencer ID"
  filter :country, as: :select, collection: ISO3166::Country.translations.invert
  filter :state
  filter :city
  filter :zip_code
  filter :primary_address_or_secondary_address, as: :string, label: "Address"

  index do
    selectable_column
    column :id
    column :influencer do |address|
      link_to address.influencer.decorate.name, admin_influencer_path(address.influencer)
    end
    column :country
    column :state
    column :city
    column :zipcode
    column :primary_address
    column :secondary_address
    actions
  end

  form do |f|
    f.inputs do
      f.input :country
      f.input :state
      f.input :city
      f.input :zipcode
      f.input :primary_address
      f.input :secondary_address
    end
    f.actions
  end
end
