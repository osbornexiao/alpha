class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :brand_name
      t.string :category
      t.string :mtype
      t.text :spec
      t.string :status

      t.timestamps
    end
  end
end
