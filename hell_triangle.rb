class HellTriangle
  attr_reader :example

  def initialize(example)
    @example = example
  end

  def return_max_result(example)
    max_numbers = []
    example.each do |ex|
      if ex.size == 1
        max = ex[0]
        @previous_position = return_index(ex, max)
        max_numbers.push(max)
        next
      end
      max = return_max(ex[@previous_position], ex[@previous_position + 1])
      @previous_position = return_index(ex, max)
      max_numbers.push(max)
    end
    final_result(max_numbers)
  end

  def return_max(n1, n2)
    numbers = []
    numbers.push(n1)
    numbers.push(n2)
    numbers.max
  end

  def return_index(numbers, n)
    numbers.find_index(n)
  end

  def final_result(max_numbers)
    max_numbers.reduce(0, :+)
  end
end
