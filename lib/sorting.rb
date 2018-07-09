module SortType
    class MergeSort
      attr_reader :sorted_array
      def sort(array_unsorted)
          return @sorted_array = array_unsorted if array_unsorted.length <= 1
          mid = array_unsorted.length / 2
          leftArray = sort(array_unsorted[0, mid])
          rightArray = sort(array_unsorted[mid, array_unsorted.length])
          merge(leftArray, rightArray)
      end
    
      def merge(leftArray, rightArray)
          sorted_array = []
          until leftArray.empty? || rightArray.empty?
              sorted_array << (leftArray.first < rightArray.first ? leftArray.shift : rightArray.shift)
          end
          @sorted_array = sorted_array + leftArray + rightArray
      end
    end
    
    class BubbleSort
      attr_writer :unsorted_array
      attr_reader :sorted_array
      
      def sort
        array = @unsorted_array
        return @sorted_array = array if array.length <= 1
        iterator = 0
        while iterator < array.length
            bubble_sort_array = array
            last_val = bubble_sort_array[0]
            last_index = 0
            bubble_sort_array.each_with_index do |val, index|
                if last_val > val
                    swap_val = bubble_sort_array[index]
                    bubble_sort_array[index] = bubble_sort_array[last_index]
                    bubble_sort_array[last_index] = swap_val
                end
                last_index = index
                last_val = val
            end
            iterator+=1
        end
        @sorted_array = bubble_sort_array
      end
    end
  end