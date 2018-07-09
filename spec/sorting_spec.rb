require 'rails_helper'
require "#{Rails.root}/lib/sorting.rb"

RSpec.describe SortType do
    describe 'MergeSort' do
        it 'should sort the array using merge sort' do
            array = [7,6,5,4,3,2,1]
            mergesort = SortType::MergeSort.new
            mergesort.sort(array)
            result = mergesort.sorted_array
            expect(result).to eq [1,2,3,4,5,6,7]
        end

        it 'should return the same array since the value of array is less than 1' do
            array = [1]
            mergesort = SortType::MergeSort.new
            mergesort.sort(array)
            result = mergesort.sorted_array
            expect(result).to eq [1]
        end

        it 'should return the same array since the value of array is less than 1' do
            array = []
            mergesort = SortType::MergeSort.new
            mergesort.sort(array)
            result = mergesort.sorted_array
            expect(result).to eq []
        end

        it 'should sort the random array numbers' do
            array = Array.new(1000) { rand(1...9) }
            mergesort = SortType::MergeSort.new
            mergesort.sort(array)
            result = mergesort.sorted_array
            expect(result).to eq array.sort
        end

        it 'should sort the random array numbers part 2' do
            array = Array.new(99999) { rand(1...9) }
            mergesort = SortType::MergeSort.new
            mergesort.sort(array)
            result = mergesort.sorted_array
            expect(result).to eq array.sort
        end
    end

    describe 'BubbleSort' do
        it 'should sort the array using merge sort' do
            array = [7,6,5,4,3,2,1]
            bubblesort = SortType::BubbleSort.new
            bubblesort.unsorted_array = array
            bubblesort.sort
            result = bubblesort.sorted_array
            expect(result).to eq [1,2,3,4,5,6,7]
        end

        it 'should return the same array since the value of array is less than 1' do
            array = [1]
            bubblesort = SortType::BubbleSort.new
            bubblesort.unsorted_array = array
            bubblesort.sort
            result = bubblesort.sorted_array
            expect(result).to eq [1]
        end

        it 'should return the same array since the value of array is less than 1' do
            array = []
            bubblesort = SortType::BubbleSort.new
            bubblesort.unsorted_array = array
            bubblesort.sort
            result = bubblesort.sorted_array
            expect(result).to eq []
        end

        it 'should sort the random array numbers' do
            array = Array.new(1000) { rand(1...9) }
            bubblesort = SortType::BubbleSort.new
            bubblesort.unsorted_array = array
            bubblesort.sort
            result = bubblesort.sorted_array
            expect(result).to eq array.sort
        end

        it 'should sort the random array numbers part 2' do
            array = Array.new(9999) { rand(1...9) }
            bubblesort = SortType::BubbleSort.new
            bubblesort.unsorted_array = array
            bubblesort.sort
            result = bubblesort.sorted_array
            expect(result).to eq array.sort
        end
    end
end