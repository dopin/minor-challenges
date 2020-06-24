# frozen_string_literal: true

require 'benchmark'

JAGGED_ARRAY = 1.upto(100).map { |n| [n, n] }.freeze

def concat(jagged_arr)
  result = []
  jagged_arr.each do |array|
    result.concat(array)
  end
end

def flatten(jagged_arr, level = nil)
  jagged_arr.flatten(level)
end

def shift(jagged_arr)
  result = []
  jagged_arr.each do |array|
    array.each do |n|
      result << n
    end
  end

  result
end

def benchmark
  Benchmark.bm do |x|
    x.report('concat:       ') { 5_000.times { concat(JAGGED_ARRAY) } }
    x.report('shift:        ') { 5_000.times { shift(JAGGED_ARRAY) } }
    x.report('flatten:      ') { 5_000.times { flatten(JAGGED_ARRAY) } }
    x.report('flatten(lv=1):') { 5_000.times { flatten(JAGGED_ARRAY, 1) } }
  end
end

benchmark if __FILE__ == $PROGRAM_NAME
