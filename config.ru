use Rack::Reloader, 0

require './app/not_found'
map '/' do
  run NotFound.new
end

require 'rack/lobster'
map '/lobster' do
  run Rack::Lobster.new
end

require './app/show_env'
map '/show-env' do
  run ShowEnv.new
end

require './app/json_sample'
map '/json-sample' do
  run JsonSample.new
end

require './app/weather_hacks'
map '/weather-hacks' do
  run WeatherHacks.new
end
