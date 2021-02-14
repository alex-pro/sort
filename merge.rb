@array = Array.new(1_000_000) { rand(50) }

def sort(array)
  return array if array.size <= 1

  left = []
  right = []

  array.each_with_index do |el, index|
    if index < (array.size / 2)
      left << el
    else
      right << el
    end
  end

  left = sort(left)
  right = sort(right)

  result = []

  while left.any? && right.any?
    if left.first <= right.first
      result << left.first
      left.shift
    else
      result << right.first
      right.shift
    end
  end

  while left.any?
    result << left.first
    left.shift
  end

  while right.any?
    result << right.first
    right.shift
  end

  result
end

def test
  tmp = Time.now
  result = sort(@array)
  puts "Test with sort (Merge algorythm): #{Time.now - tmp} seconds"
  puts "Result size: #{result.size}"
  puts "Result first 10 elements: #{result.first(10)}"
  puts "Result last 10 elements: #{result.last(10)}"
end

# ~4.6 seconds
test
