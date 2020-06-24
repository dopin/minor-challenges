# frozen_string_literal: true

require 'minitest/unit'
require 'minitest/autorun'
require_relative 'benchmark'

class TestMethods < MiniTest::Unit::TestCase
  GIVEN = [[1, 1], [2, 2]].freeze
  EXPECTED = [1, 1, 2, 2].freeze

  def test_concat
    assert_equal EXPECTED, concat(GIVEN)
  end

  def test_shift
    assert_equal EXPECTED, shift(GIVEN)
  end

  def test_flatten
    assert_equal EXPECTED, flatten(GIVEN)
    assert_equal EXPECTED, flatten(GIVEN, 1)
  end
end
