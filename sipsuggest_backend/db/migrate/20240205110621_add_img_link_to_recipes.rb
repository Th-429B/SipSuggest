class AddImgLinkToRecipes < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :img_link, :string
  end
end
