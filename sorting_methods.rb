require 'pry-byebug'

class SortingMethods

  def insertion_sort(array)
    steps = 0
    sorted_index = 0
    comparing_index = 1

    while comparing_index < array.length

      compare_value = array[comparing_index]

      while (sorted_index >= 0 && compare_value < array[sorted_index])
        array[sorted_index + 1] = array[sorted_index]
        sorted_index -= 1
        steps += 1
      end

      steps += 1
      array[sorted_index + 1] = compare_value

      sorted_index = comparing_index
      comparing_index += 1

    end

    puts "Steps: #{steps}"
    print array
  end


  def bubble_sort(array)
    steps = 0

    loop do

      swaps = 0
      a_index = 0
      b_index = 1

      while b_index < array.length 

        if array[a_index] > array[b_index]
          temp = array[a_index]
          array[a_index] = array[b_index]
          array[b_index] = temp
          swaps += 1
        end

        a_index += 1
        b_index += 1
        steps += 1

      end

      break if swaps == 0

    end

    puts "Steps: #{steps}"
    print array
  end


  def merge_sort(array)

    if array.length == 1
      
      return array

    else

      right = array
      slice_point = array.length / 2 - 1
      left = right.slice!(0..slice_point)

      right = merge_sort(right)
      left = merge_sort(left)

      sorted_array = []

      until right.empty? && left.empty?
        
        if right[0].nil?
          sorted_array << left.shift
        elsif left[0].nil?
          sorted_array << right.shift
        elsif right[0] == left[0]
          sorted_array << right.shift
          sorted_array << left.shift
        else
          sorted_value = right[0] < left[0] ? right.shift : left.shift
          sorted_array << sorted_value
        end

      end

    end

    sorted_array
    
  end

end