class CreateBrandsCategories < ActiveRecord::Migration
  def change
    create_table :brands_categories do |t|
      t.belongs_to :brand, index: true
      t.belongs_to :category, index: true
    end
  end
end
