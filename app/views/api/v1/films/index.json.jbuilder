json.array! @films do |film|
  json.title film.title
  json.descrption film.description
  json.cast film.actors do |actor|
    json.name actor.full_name
  end
end
