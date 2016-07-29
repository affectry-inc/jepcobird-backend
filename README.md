# jepcobird-backend
Backend system for jepcobird-bot

## Enviroment variables
WEBHOOK_URL: webhook url of slack api

## Functions
* `http://SERVERNAME/weather-hacks/#{city_id}`
 * Post weather info obtained from [Weather Hacks](http://weather.livedoor.com/weather_hacks/webservice).
 * Please refer [Weather Hacks city list](http://weather.livedoor.com/forecast/rss/primary_area.xml) for city_id. Some examples list here.
  * Tokyo: 130010
  * Osaka: 270000
  * Nagano: 200010

* `http://SERVERNAME/show-env`
 * List ENV keys with values.

* `http://SERVERNAME/lobster`
 * Display a cute Libster.
