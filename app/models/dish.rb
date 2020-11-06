class Dish < ApplicationRecord
  has_many :tagger
  has_many :tags, through: :tagger
  has_many :descriptions

  def tagging(tag)
    Tagger.create(dish: self, tag: tag)
  end
end
