ActiveAdmin.register Brand do

  decorate_with BrandDecorator

  permit_params :name,
    :slug,
    category_ids: []

  filter :name, as: :string
  filter :slug, as: :string

  index do
    selectable_column

    column :id do |obj|
      link_to obj.id, admin_brand_path(obj)
    end
    column :name
    column :slug
    column :campaigns_count
    column :category_list

    actions
  end

  show do
    attributes_table do
      row :id
      row :name
      row :slug
      row :campaigns_count
      row :category_list
    end
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :slug
      f.input :category_ids, as: :tags, collection: Category.all, display_name: :label
    end

    f.actions
  end

  controller do
    def scoped_collection
      super.includes(:campaigns, :categories)
    end
  end

end
