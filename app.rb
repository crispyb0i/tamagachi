require('sinatra')
require('sinatra/reloader')
require('./lib/places')
also_reload('lib/**/*.rb')

get('/') do
  @places = Place.all()
  erb(:index)
end

post('/title') do
  place = params.fetch("place1")
  new_place = Place.new(place)
  new_place.save()
  erb(:title)
end
