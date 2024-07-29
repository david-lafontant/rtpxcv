class AddUserRefToArticle < ActiveRecord::Migration[7.1]
  def change
    add_reference :articles, :user, null: false, foreign_key: true, default: 2
  end
end
