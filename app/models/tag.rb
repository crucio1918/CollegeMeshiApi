class Tag < ApplicationRecord
  has_many :tagger
  has_many :dishes, through: :tagger
end
