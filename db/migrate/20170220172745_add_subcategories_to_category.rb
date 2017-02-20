class AddSubcategoriesToCategory < ActiveRecord::Migration
  def change
    add_reference :categories, :parent, foreign_key: { to_table: :categories }
  end
end
