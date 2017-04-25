require('sinatra')
require('sinatra/reloader')
require('./lib/Tamagachi')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/stats') do
  erb(:stats)
end


  get('/food') do
    # time_passes_feed()
    erb(:food)
end

get('/play') do
  erb(:play)
end

get('/rest') do
  erb(:rest)
end

get('/bathroom') do
  erb(:bathroom)
end

get('/dead') do
  erb(:dead)
end
