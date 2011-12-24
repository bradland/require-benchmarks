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
    require file                       5.270000   0.990000   6.260000 (  6.294892)
                                           user     system      total        real
    require File.expand_path(file)     9.740000   0.630000  10.370000 ( 10.520523)
                                           user     system      total        real
    require_relative file              9.830000   0.530000  10.360000 ( 10.486152)

    ruby 1.9.2p290 (2011-07-09 revision 32553) [x86_64-darwin10.8.0]

                                          user     system      total        real
    require file                      9.750000   0.980000  10.730000 ( 10.902150)
                                          user     system      total        real
    require File.expand_path(file)   11.080000   0.580000  11.660000 ( 11.750448)
                                          user     system      total        real
    require_relative file            11.280000   0.490000  11.770000 ( 11.833554)

    ruby 1.8.7 (2011-06-30 patchlevel 352) [i686-darwin11.2.0]

                                          user     system      total        real
    require file                      1.860000   1.470000   3.330000 (  3.403609)
                                          user     system      total        real
    require File.expand_path(file)    2.970000   0.480000   3.450000 (  3.491446)
