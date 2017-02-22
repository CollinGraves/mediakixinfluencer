ActiveAdmin.register PlatformAccount do
  permit_params :influencer_id,
    :publishing_platform_id,
    :account_type

  index do
    selectable_column

    column :id do |obj|
      link_to obj.id, admin_platform_account_path(obj)
    end
    column :influencer do |obj|
      link_to obj.influencer.decorate.name, admin_influencer_path(obj.influencer)
    end
    column :publishing_platform
    column :account_type

    actions
  end

  show do
    attributes_table do
      row :id
      row :influencer do |obj|
        link_to obj.influencer.decorate.name, admin_influencer_path(obj.influencer)
      end
      row :publishing_platform
      row :account_type
    end
  end

  form do |f|
    f.semantic_errors *f.object.errors.keys

    f.inputs do
      f.input :influencer_id,
        as: :search_select,
        url: admin_influencers_path,
        fields: [:first_name, :last_name],
        display_name: 'first_name',
        minimum_input_length: 2,
        order_by: 'first_name_desc'
      f.input :publishing_platform_id
      f.input :account_type
    end

  end

  controller do
    def scoped_collection
      super.includes(:influencer, :publishing_platform)
    end
  end

end
