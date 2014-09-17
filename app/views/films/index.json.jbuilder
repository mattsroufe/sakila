json.array! @films do |film|
  json.label film.to_s
  json.id film.id
end
