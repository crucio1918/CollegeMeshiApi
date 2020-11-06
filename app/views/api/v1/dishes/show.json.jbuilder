json.dish do
  json.extract! @dish, :id, :name, :time, :good, :cooked, :created_at, :updated_at
  json.tags @dish.tags.pluck(:name)

  json.descriptions do
    json.array! @dish.descriptions do | description |
      json.extract! description, :type, :text, :time
    end
  end

end