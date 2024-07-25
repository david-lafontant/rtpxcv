class Content < ApplicationRecord
  belongs_to :emission
  has_one_attached :media
end
