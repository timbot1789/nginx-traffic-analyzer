# frozen_string_literal: true

require 'minitest/autorun'
require 'rack/test'
require 'zeitwerk'
require 'debug'

loader = Zeitwerk::Loader.new
loader.push_dir('src/')
loader.setup

class RackTest < Minitest::Test
  include Rack::Test::Methods
  def app
    ::App.freeze.app
  end
end
