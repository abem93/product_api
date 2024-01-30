class AddCategoryToProduct < ActiveRecord::Migration[7.1]
  def change
    add_reference :products, :category, foreign_key: true
  end
end
product = Product.find(1)
category = Category.find(1)
product.category = category
product.save