require 'sinatra/base'

class EventMap < Sinatra::Base
  get '/' do
    'Hello EventMap!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
