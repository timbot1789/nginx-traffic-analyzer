# frozen_string_literal: true

module Controllers
  class AdminLogController
    include Helpers::Parsers
    def initialize(files: ['./logfile.log'])
      @files = files
      @logs = []
    end

    def view_model; end

    def parse
      File.readlines(@files.first, chomp: true).each do |line|
        next if line.starts_with?('#')

        @logs << line.match(apache_log_regex)
      end
      @logs
    end
  end
end
