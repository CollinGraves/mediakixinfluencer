ActiveAdmin.register Campaign do
  permit_params :contract_num,
                :campaign_name

  filter :brand_id, as: :numeric, label: "Brand ID"
  filter :contract_num, as: :string
  filter :campaign_name, as: :string
  filter :created_at
  filter :updated_at

end
