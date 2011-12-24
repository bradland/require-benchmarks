# Benchmarking Various Require Methods

## Setup

To use this collection of scripts, first run `setup.rb`. WARNING: This will 
create a folder named 'require-data' and populate it with 10,000 empty Ruby 
scripts.

## Execution

The `run.sh` shell script outputs the current Ruby version, then executes the three `bench_*.rb` scripts contained herein.

## Sample Results

Here are the results running on my 2009 MacBook Pro with an SSD.

    ruby 1.9.3p0 (2011-10-30 revision 33570) [x86_64-darwin10.8.0]

           user     system      total        real
    require file  4.420000   0.930000   5.350000 (  5.384996)
           user     system      total        real
    require File.expand_path(file)  7.260000   0.590000   7.850000 (  7.876938)
           user     system      total        real
    require_relative file  7.210000   0.490000   7.700000 (  7.911997)

    ruby 1.9.2p290 (2011-07-09 revision 32553) [x86_64-darwin10.8.0]

          user     system      total        real
    require file  9.920000   1.730000  11.650000 ( 14.817645)
          user     system      total        real
    require File.expand_path(file) 10.040000   0.630000  10.670000 ( 10.951448)
          user     system      total        real
    require_relative file  9.910000   0.510000  10.420000 ( 10.785267)
