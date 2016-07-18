require 'json'
require 'open-uri'
require 'slack/incoming/webhooks'

class WeatherHacks
  def call(env)
    city_id = env['PATH_INFO'].split('/')[1]

    if city_id =~ /^[0-9]{6}$/ # check if a number of 6 digits
      uri = "http://weather.livedoor.com/forecast/webservice/json/v1?city=#{city_id}"
    end

    res     = JSON.load(open(uri).read)
    title   = res['title']
    text    = res['description']['text']
    link    = res['link']
    weather = res['forecasts'].first

    attachments = [{
      title: title,
      title_link: link,
      text: text,
      image_url: weather['image']['url'],
      color: "#7CD197"
    }]

    slack = Slack::Incoming::Webhooks.new ENV['WEBHOOK_URL']
    slack.post "#{weather['dateLabel']}の#{title}は#{weather['telop']}だってさ。", attachments: attachments

    [ 200,
      { 'Content-Type' => 'text/plain' },
      [ 'slackbot posted' ]
    ]
  end
end
