$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require 'minitest/autorun'
require 'hell_triangle'

class TriangleHellTest < Minitest::Test
  def test_triangle_is_empty
    hell_triangle = HellTriangle.new([])
    assert_nil hell_triangle.max_total
  end

  def test_triagle_with_different_kind
    hell_triangle = HellTriangle.new(nil)
    assert_nil hell_triangle.max_total
  end

  def test_triagle_with_different_kind_in_array
    hell_triangle = HellTriangle.new([[1], [2, '3'], [4, 5, 6]])
    assert_nil hell_triangle.max_total
  end

  def test_triagle_is_invalid
    hell_triangle = HellTriangle.new([[1], [1]])
    assert_nil hell_triangle.max_total
  end

  def test_triagle_is_valid
    hell_triangle = HellTriangle.new([[6]])
    assert_kind_of Integer, hell_triangle.max_total
  end

  def test_max_total_one_row
    hell_triangle = HellTriangle.new([[0]])
    assert_equal 0, hell_triangle.max_total
  end

  def test_max_total_two_rows
    hell_triangle = HellTriangle.new([[1], [1,4]])
    assert_equal 5, hell_triangle.max_total
  end

  def test_max_total_center_path
    hell_triangle = HellTriangle.new([
      [9],
      [9,5],
      [1,9,1],
      [1,9,8,4],
      [1,1,9,1,1],
      [1,1,1,9,1,9],
      [1,1,9,1,1,1,1],
      [1,1,9,1,1,1,1,1],
      [9,1,1,1,1,1,1,1,1],
      [1,1,5,1,1,9,1,1,1,1]
    ])
    assert_equal 70, hell_triangle.max_total
  end

  def test_max_total_left_path
    hell_triangle = HellTriangle.new([
      [9],
      [9,5],
      [9,1,1],
      [9,1,8,4],
      [9,1,1,1,1],
      [9,1,1,1,1,1],
      [9,1,1,1,1,1,1],
      [9,1,1,1,1,1,1,1],
      [9,1,1,1,1,1,1,1,1],
      [9,1,1,1,1,1,1,1,1,1]
    ])
    assert_equal 90, hell_triangle.max_total
  end

  def test_max_total_right_path
    hell_triangle = HellTriangle.new([
      [9],
      [1,9],
      [1,1,9],
      [1,1,8,9],
      [1,1,1,1,9],
      [1,1,1,1,1,9],
      [1,1,1,1,1,1,9],
      [1,1,1,1,1,1,1,9],
      [1,1,1,1,1,1,1,1,9],
      [1,1,1,1,1,1,1,1,1,9]
    ])
    assert_equal 90, hell_triangle.max_total
  end
end
