require('sinatra')
require('sinatra/reloader')
also_reload("lib/**/*.rb")
require("./lib/places")

get('/') do
  @place = Places.all()
  erb(:index)
end

post('/result')do
  location = params.fetch("location")
  place = Places.new(location)
  place.save()
  erb(:result)
end
