class NotFound
  def call(env)
    [ 404,
      { 'Content-Type' => 'text/plain' },
      ['404 Not Found']
    ]
  end
end
