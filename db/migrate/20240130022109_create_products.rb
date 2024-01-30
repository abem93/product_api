class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.belongs_to :category, index: true
      t.string :name
      t.decimal :price

      t.timestamps
    end
  end
end
