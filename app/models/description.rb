class Description < ApplicationRecord
  self.inheritance_column = :_type_disabled

  belongs_to :dish
end
