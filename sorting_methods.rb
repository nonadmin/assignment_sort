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

      steps += 1
      array[sorted_index + 1] = compare_value

      sorted_index = compare_index
      compare_index += 1

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
          steps += 1
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

  
  
end