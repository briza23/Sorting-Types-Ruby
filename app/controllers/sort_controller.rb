class SortController < ApplicationController
  def index
    @sorted   = ""
    @last_val = ""
    if !params[:sort_data].nil?
      data_array = params[:sort_data]
      data_type  = params[:sort_type]
      @last_val = data_array
      case data_type
      when "bubble"
        bubble_sort(data_array)
      when "merge"
        merge_sort(data_array)
      else
        "Sorrt but I dont know what type of sort is this: #{data_type}"
      end
    end
  end

  def merge_sort(data)
    parameter = data.split("")
    mergesort = SortType::MergeSort.new
    mergesort.sort(parameter)
    @sorted = mergesort.sorted_array.join("")
  end

  def bubble_sort(data)
    parameter = data.split("")
    bubblesort = SortType::BubbleSort.new
    bubblesort.unsorted_array = parameter
    bubblesort.sort
    @sorted = bubblesort.sorted_array.join("")
  end
end


