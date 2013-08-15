# my_app.rb
#
require 'rack'
#require 'thin'

class MyApp
  def call env
    [200, {"Content-Type" => "text/html"}, ["Hello"]] 
  end
end

#builder = Rack::Builder.new do
#  run MyApp.new
#end
#
#Rack::Handler::Thin.run builder, :Port => 3000 
