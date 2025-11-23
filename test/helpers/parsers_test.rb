# frozen_string_literal: true

require_relative '../rack_test'

class TestParsers < RackTest
  def setup
    @parser = Object.new.extend(::Helpers::Parsers)
  end

  def test_it_parses_rack
    string_to_parse = '127.0.0.1 - - [21/Nov/2025:23:07:20 -0800] "GET / HTTP/1.1" 302 - 0.0015'
    string_to_parse.match(@parser.rack_log_regex)
  end
end
