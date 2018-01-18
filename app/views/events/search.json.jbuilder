json.array! @search_events do |event|
  json.id event.id
  json.name event.name
  json.place event.place
  json.image event.image
  json.eventmonth event.eventday.month
  json.eventday event.eventday.day
  json.status event.status
end
