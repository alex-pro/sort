@array = Array.new(1_000_000) { rand(50) }

def merge(left, right)
  result = []

  while left[0] && right[0]
    if left[0] <= right[0]
      result << left.shift
    else
      result << right.shift
    end
  end

  while left[0]
    result << left.shift
  end

  while right[0]
    result << right.shift
  end

  result
end

def sort(array)
  return array if array.size <= 1

  size = array.size
  half_size = size / 2

  left = array[0...half_size]
  right = array[half_size..size]

  left = sort(left)
  right = sort(right)

  merge(left, right)
end

def test
  tmp = Time.now
  result = sort(@array)
  puts "Test with sort (Merge algorythm): #{Time.now - tmp} seconds"
  puts "Result size: #{result.size}"
  puts "Result first 10 elements: #{result.first(10)}"
  puts "Result last 10 elements: #{result.last(10)}"
end

# ~1.6 seconds
test
