class HellTriangle
  def initialize(triangle)
    @triangle = triangle
    @current_level_depth = 0
    @path = [0]
    @max = 0
  end

  def max_total
    if valid_triangle?
      return calc_max_total
    end

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

        if max < amount
          max(amount)
        end
      end
    end

    path.pop

    down_level_depth

    max
  end

  def valid_triangle?
    if !(triangle.kind_of? Array) || triangle.empty?
      return false
    end

    valid_triangle_row?
  end

  def valid_triangle_row?
    (0...triangle.length).each do |i|
      row = triangle[i]

      unless row.kind_of?(Array) && row.length == (i + 1)
        return false
      end

      row.each do |r|
        return false unless r.kind_of? Integer
      end
    end
  end

  def triangle
    @triangle
  end

  def path
    @path
  end

  def max(new_max = nil)
    if new_max.nil?
      return @max
    end

    @max = new_max
  end

  def current_level_depth
    @current_level_depth
  end

  def up_level_depth
    @current_level_depth += 1
  end

  def down_level_depth
    @current_level_depth -= 1
  end
end
