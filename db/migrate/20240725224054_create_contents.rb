class CreateContents < ActiveRecord::Migration[7.1]
  def change
    create_table :contents do |t|
      t.string :title
      t.text :description
      t.references :emission, null: false, foreign_key: true

      t.timestamps
    end
  end
end
