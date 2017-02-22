ActiveAdmin.register Campaign do
  permit_params :contract_num,
                :campaign_name,
                :brand_id

  filter :brand_id, as: :numeric, label: "Brand ID"
  filter :contract_num, as: :string
  filter :campaign_name, as: :string
  filter :created_at
  filter :updated_at

  index do
    selectable_column
    column :id do |obj|
      link_to obj.id, admin_campaign_path(obj)
    end
    column :brand_name do |obj|
      link_to obj.brand_name, admin_brand_path(obj.brand_id)
    end
    column :campaign_name
    column :contract_num
    column :created_at
    column :updated_at
    actions
  end

  form do |f|
    f.inputs do
      f.input :brand_id,
        as: :search_select,
        url: admin_brands_path,
        fields: [:name],
        display_name: :name,
        minimum_input_length: 2,
        order_by: 'name_asc'
      f.input :campaign_name
      f.input :contract_num
    end

    f.actions
  end

end
