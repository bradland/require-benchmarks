#!/usr/bin/env ruby -wKU

require 'benchmark'

# Add require-data to the path for testing
$: << File.expand_path('require-data')

files = Dir.glob('require-data/*.rb').map { |file| File.basename(file, '.rb') }

Benchmark.bm(40) do|b|
  b.report("require file") do
    files.each do |file|
      require file
    end
  end
end
