ActiveAdmin.register Category do

  permit_params :label,
    :parent_id

  scope :all, default: true
  scope :top_level
  scope :subcategories

  filter :brands_id, as: :numeric, label: "Brand ID"
  filter :parent_category_id, as: :select, collection: Category.top_level.map {|c| [c.label, c.id] }
  filter :label, as: :string

  index do
    selectable_column
    column :id do |obj|
      link_to obj.id, admin_category_path(obj)
    end
    column :label
    column :parent_category_label
    actions
  end

  show do
    attributes_table do
      row :id
      row :parent_category_label
      row :label
      row :created_at
      row :updated_at
    end
  end

  form do |f|
    f.semantic_errors *f.object.errors.keys

    f.inputs "Category Details" do
      f.input :parent_id, as: :select, collection: Category.top_level.map {|c| [c.label, c.id] }
      f.input :label
    end

    f.actions
  end

  controller do
    def scoped_collection
      super.includes(:parent_category)
    end
  end

end
