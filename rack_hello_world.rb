# my_app.rb
#
require 'rack'

class MyApp
  def call env
    [200, {"Content-Type" => "text/html"}, ["Hello"]] 
  end
end

