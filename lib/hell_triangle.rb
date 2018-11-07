class HellTriangle
  attr_reader :current_level_depth
  attr_reader :path
  attr_reader :triangle

  def initialize(triangle)
    @triangle = triangle
    @current_level_depth = 0
    @path = [0]
    @max = 0
  end

  def max_total
    return calc_max_total if valid_triangle?

    nil
  end

  private

  def calc_max_total(index = 0)
    up_level_depth

    (index..index + 1).each do |i|
      if current_level_depth < triangle.length
        path[current_level_depth] = i

        calc_max_total(i)
      else
        amount = (0...triangle.length).reduce(0) { |sum, j| sum + triangle[j][path[j]] }

        max(amount) if max < amount
      end
    end

    path.pop

    down_level_depth

    max
  end

  def valid_triangle?
    return false if !(triangle.is_a? Array) || triangle.empty?

    valid_triangle_row?
  end

  def valid_triangle_row?
    (0...triangle.length).each do |i|
      row = triangle[i]

      return false unless row.is_a?(Array) && row.length == (i + 1)

      row.each { |r| return false unless r.is_a? Integer }
    end
  end

  def max(new_max = nil)
    return @max if new_max.nil?

    @max = new_max
  end

  def up_level_depth
    @current_level_depth += 1
  end

  def down_level_depth
    @current_level_depth -= 1
  end
end
