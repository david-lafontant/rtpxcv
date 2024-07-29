class Content < ApplicationRecord
  belongs_to :emission
  belongs_to :user
  has_one_attached :media
  has_rich_text :description
end
