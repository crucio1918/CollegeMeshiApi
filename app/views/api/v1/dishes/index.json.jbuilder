json.dishes do
  json.array! @dishes do | dish |
    json.extract! dish, :id, :name, :time, :good, :cooked, :created_at    
    json.tags dish.tags.pluck(:name)
  end
end