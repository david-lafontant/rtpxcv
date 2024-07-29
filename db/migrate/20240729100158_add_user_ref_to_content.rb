class AddUserRefToContent < ActiveRecord::Migration[7.1]
  def change
    add_reference :contents, :user, null: false, foreign_key: true
  end
end
