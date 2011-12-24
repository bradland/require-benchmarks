#!/usr/bin/env ruby -wKU

require 'benchmark'

files = Dir.glob('require-data/*.rb')

Benchmark.bm(32) do|b|
  b.report("require_relative file") do
    files.each do |file|
      require_relative file
    end
  end
end
