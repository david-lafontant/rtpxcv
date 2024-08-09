class AddPublishedToEmission < ActiveRecord::Migration[7.1]
  def change
    add_column :emissions, :published, :boolean, null: false, default: false
  end
end
