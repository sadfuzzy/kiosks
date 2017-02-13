class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :title, default: nil
      t.boolean :active, default: false

      t.timestamps
    end
  end
end
