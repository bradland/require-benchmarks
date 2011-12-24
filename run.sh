#!/usr/bin/env bash

echo `ruby -v`
echo
./bench_proper.rb
./bench_expand.rb
./bench_relative.rb
