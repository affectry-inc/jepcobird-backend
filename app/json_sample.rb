require 'json'

class JsonSample
  def call(env)
    [ 200,
      { 'Content-Type' => 'application/json;charset=utf-8' },
      [{ id: '0', name: 'NAME' }.to_json]
    ]
  end
end
