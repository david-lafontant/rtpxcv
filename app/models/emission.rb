class Emission < ApplicationRecord
  has_many :contents
  has_one_attached :poster
end
