class HellTriangle
  def self.calcule_max(triangle_array)
    raise 'The number of the first array is wrong!' if triangle_array.first.size != 1
    triangle_array.each_with_index do |row, i|
      next if i.zero?
      previous_row = triangle_array[i - 1]
      (0..i).each do |j|
        node = row[j]
        first_node = previous_row[j - 1]
        second_node = previous_row[j]
        triangle_array[i][j] = calcule_node(node, first_node, second_node)
      end
    end
    triangle_array.last.max
  end

  def self.calcule_node(node, first_node = nil, second_node = nil)
    return selected_max(node, first_node, second_node) if first_node && second_node
    return sum_nodes(node, first_node) if first_node
    return sum_nodes(node, second_node) if second_node
    node
  end

  def self.sum_nodes(node, other_node)
    node + other_node
  end

  def self.selected_max(node, first_node, second_node)
    [sum_nodes(node, first_node), sum_nodes(node, second_node)].max
  end
end

example = [[6], [3, 5], [9, 7, 1], [4, 6, 8, 4]]
puts HellTriangle.calcule_max(example)
