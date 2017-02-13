class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description, default: ''
      t.references :company, foreign_key: true
      t.boolean :active, default: false

      t.timestamps
    end
  end
end
