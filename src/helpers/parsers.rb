# frozen_string_literal: true

module Helpers
  # A collection of parsers for different file formats
  module Parsers
    def apache_log_regex
      %r{
          (?<ip_addr>\S*)
          \s
          (?<identd>\S*)
          \s
          (?<userid>\S*)
          \s
          \[(?<timestamp>.*?)\]
          \s
          "(?<request>.*?)"
          \s
          (?<status>\S*)
          \s
          (?<size>\S*)
          \s
          "(?<referer>.*?)"
          \s
          "(?<user_agent>.*?)"
        }x
    end

    def rack_log_regex
      %r{
          (?<ip_addr>\S*)
          \s
          (?<identd>\S*)
          \s
          (?<userid>\S*)
          \s
          \[(?<timestamp>.*?)\]
          \s
          "(?<request>.*?)"
          \s
          (?<status>\S*)
          \s
          (?<size>\S*)
          \s
          (?<elapsed_time>.*?)
        }x
    end
  end
end
