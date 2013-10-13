require "test/unit"
require "rack/test"
require './rack_hello_world'

class AppTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Rack::Builder.new do
      run MyApp.new
    end.to_app
  end

  def test_index
    get "/"
    #puts last_response.inspect
    assert last_response.ok?
  end

  def test_body
    get "/"
    assert_equal last_response.body,  'Hello', "body must be hello"
  end
end
