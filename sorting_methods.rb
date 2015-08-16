class SortingMethods

  def insertion_sort(array)

    steps = 0
    sorted_index = 0
    compare_index = 1

    while compare_index < array.length

      compare_value = array[compare_index]

      while (sorted_index >= 0 && compare_value < array[sorted_index])
        array[sorted_index + 1] = array[sorted_index]
        sorted_index -= 1
        steps += 1
      end

      array[sorted_index + 1] = compare_value

      sorted_index = compare_index
      compare_index += 1

    end

    puts "Steps: #{steps}"
    print array

  end


  def method_name
    
  end

  
  
end