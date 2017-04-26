require('sinatra')
require('sinatra/reloader')
require('./lib/Tamagachi')
also_reload('lib/**/*.rb')

get('/') do
  Tamagachi.clear()
  erb(:index)
end

get('/stats') do
  @name = Tamagachi.find(1).name()
  @food_level = Tamagachi.find(1).food_level()
  @activity_level = Tamagachi.find(1).activity_level()
  @rest_level = Tamagachi.find(1).rest_level()
  @bathroom_level = Tamagachi.find(1).bathroom_level()
  erb(:stats)
end

post('/stats') do

  @new_tamagachi = Tamagachi.new(params.fetch('name'))
  @new_tamagachi.save()
  @name = @new_tamagachi.name()
  @food_level = @new_tamagachi.food_level()
  @rest_level = @new_tamagachi.rest_level()
  @activity_level = @new_tamagachi.activity_level()
  @bathroom_level = @new_tamagachi.bathroom_level()

  erb(:stats)
end

  get('/food') do
    @food_level = Tamagachi.find(1).food_level()
    erb(:food)
end

  post('/food') do
    Tamagachi.find(1).food_timer()
  erb(:food)
end

get('/play') do
  @activity_level = Tamagachi.find(1).activity_level()
  erb(:play)
end

post('/play') do
  erb(:play)
end

get('/rest') do
  erb(:rest)
end

post('/rest') do
  erb(:rest)
end

get('/bathroom') do
  erb(:bathroom)
end

post('/bathroom') do
  erb(:bathroom)
end

get('/dead') do
  erb(:dead)
end
