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
                :primary_languages,
                :kids_age_range,
                :pets,
                :alcohol_brand_friendly,
                :vlogger,
                :explicit_content,
                :brand_safe_content,
                :licensing_included_boolean,
                :brand_exclusives,
                :fubr,
                :cpa_compensation_basics,
                :staff_pick



  # filter :associated_markets_id, collection: proc { Market.all }, as: :select

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
