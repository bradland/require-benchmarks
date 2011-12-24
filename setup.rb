#!/usr/bin/env ruby -wKU

require 'fileutils'

class Setup
  def initialize
    @require_dir = 'require-data'
    FileUtils.mkdir(@require_dir) unless Dir.exists?(@require_dir)
  end

  def start
    # Tweak the range to experiment with different numbers of requires, but be
    # careful with large numbers (100,000 or more).
    setup_files(1..10_000)
  end

  private

  def setup_files(range)
    FileUtils.rm_f(@require_dir)
    range.each do |i|
      File.open(File.join(@require_dir, "script#{i}.rb"), 'w') do |f|
        # f.puts "puts 'script#{i}.rb required!'"
        f.puts ""
      end
    end
  end
end

Setup.new.start
