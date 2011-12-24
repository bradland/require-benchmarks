#!/usr/bin/env ruby -wKU

require 'benchmark'

files = Dir.glob('require-data/*.rb')

Benchmark.bm do|b|
  b.report("require File.expand_path(file)") do
    files.each do |file|
      require File.expand_path(file)
    end
  end
end
