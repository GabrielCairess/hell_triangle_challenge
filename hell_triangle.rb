class HellTriangle
  attr_accessor :example

  def initialize(example)
    @example = example
  end

  def return_array_of_max(example)
    array_of_max = []
    example.each do |ex|
      if ex.size == 1
        max = ex[0]
        @previous_position = return_index(ex, max)
        array_of_max.push(max)
        next
      end
      max = return_max(ex[@previous_position], ex[@previous_position + 1])
      @previous_position = return_index(ex, max)
      array_of_max.push(max)
    end
    final_result(array_of_max)
  end

  def return_max(n1, n2)
    array = []
    array.push(n1)
    array.push(n2)
    array.max
  end

  def return_index(numbers, n)
    numbers.find_index(n)
  end

  def final_result(max_numbers)
    max_numbers.reduce(0, :+)
  end
end
