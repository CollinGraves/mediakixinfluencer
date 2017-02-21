ActiveAdmin.register Address do
  permit_params :primary_address,
                :secondary_address,
                :city,
                :state,
                :zipcode,
                :country

  filter :influencer_id, as: :numeric, label: "Influencer ID"
  filter :country
  filter :state
  filter :city
  filter :zip_code
  filter :primary_address_or_secondary_address, as: :string, label: "Address"
end
