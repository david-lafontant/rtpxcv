class AddPublishedToContent < ActiveRecord::Migration[7.1]
  def change
    add_column :contents, :published, :boolean, null: false, default: false
  end
end
