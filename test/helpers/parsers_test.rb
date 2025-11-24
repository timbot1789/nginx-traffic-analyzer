# frozen_string_literal: true

require_relative '../rack_test'

class TestParsers < RackTest
  def assert_matched_arrays(expected, actual)
    assert_equal expected.to_ary.sort, actual.to_ary.sort
  end

  def setup
    @parser = Object.new.extend(::Helpers::Parsers)
  end

  def test_it_parses_rack
    string_to_parse = '127.0.0.1 - - [21/Nov/2025:23:07:20 -0800] "GET / HTTP/1.1" 302 - 0.0015'
    match = string_to_parse.match(@parser.rack_log_regex)
    expected_keys = %w[ip_addr identd user_id timestamp request status size elapsed_time]
    expected_values = ['127.0.0.1', '-', '-', '21/Nov/2025:23:07:20 -0800', 'GET / HTTP/1.1', '302', '-', '']
    assert_matched_arrays expected_keys, match.named_captures.keys
    assert_matched_arrays expected_values, match.named_captures.values
  end
end
