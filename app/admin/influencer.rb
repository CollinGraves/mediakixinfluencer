ActiveAdmin.register Influencer do
  active_admin_importable
  permit_params :first_name, :last_name, :email, :phone

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
