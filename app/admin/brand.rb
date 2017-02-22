ActiveAdmin.register Brand do

  decorate_with BrandDecorator

  permit_params :name, :slug

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

  controller do
    def scoped_collection
      super.includes(:campaigns, :categories)
    end
  end

end
