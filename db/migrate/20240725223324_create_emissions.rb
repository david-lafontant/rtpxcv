class CreateEmissions < ActiveRecord::Migration[7.1]
  def change
    create_table :emissions do |t|
      t.string :title
      t.string :presenter
      t.text :description

      t.timestamps
    end
  end
end
