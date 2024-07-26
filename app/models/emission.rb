class Emission < ApplicationRecord
  has_many :contents
  has_one_attached :poster
  has_rich_text :description
end
