ActiveAdmin.register Address do
  permit_params :primary_address,
                :secondary_address,
                :city,
                :state,
                :zipcode,
                :country
end
