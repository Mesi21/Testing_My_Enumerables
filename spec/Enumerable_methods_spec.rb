# frozen_string_literal: true

require_relative '../lib/Enumerable_methods.rb'

describe Enumerable do
  context 'testing my_each on array' do
    let(:array) { [1, 2, 3, 4, 5, 6, 7] }
    it 'returns an array after something is done to the elements of it' do
      output = []
      result = []
      output = array.my_each { |i| output << i * i }
      result = array.each { |i| result << i * i }
      expect(output).to eql result
    end
  end

  context 'testing my_each_with_index on array' do
    let(:array) { [1, 2, 3, 4, 5, 6, 7] }
    it 'returns an array of indexes after adding 1 to each index' do
      output = []
      result = []
      output = array.my_each_with_index { |_val, index| output << index + 1 }
      result = array.my_each_with_index { |_val, index| result << index + 1 }
      expect(output).to eql result
    end
  end

  context 'testing my_select on array' do
    let(:array) { [1, 2, 3, 4, 5, 6, 7] }
    it 'returns an array with the elements of the original array which satisfies a certain condition' do
      output = array.my_select(&:even?)
      result = array.select(&:even?)
      expect(output).to eql result
    end
  end

  context 'testing my_all? on array' do
    let(:array) { [1, 2, 3, 4, 5, 6, 7] }
    it 'returns true if all numbers are greater than 0' do
      result = array.all? { |i| i > 0 }
      output = array.my_all? { |i| i > 0 }
      expect(output).to eql result
    end
  end
  context 'testing my_all? on array' do
    let(:array) { [1, 2, 3, 4, 5, 6, 7] }
    it 'returns false if not all number satisfies a condition' do
      result = array.all?(&:even?)
      output = array.my_all?(&:even?)
      expect(output).to eql result
    end
  end
  context 'testing my_all? on array' do
    let(:array) { %w[N M] }
    it 'returns true if  all elements are strings' do
      result = array.all? { |i| i.is_a? String }
      output = array.my_all? { |i| i.is_a? String }
      expect(output).to eql result
    end
  end
  context 'testing my_any? on array' do
    let(:array) { [1, 2, 3, 4, 5, 6, 7] }
    it 'returns true if there is any element that satisfies the condition' do
      result = array.any?(&:even?)
      output = array.my_any?(&:even?)
      expect(output).to eql result
    end
  end
  context 'testing my_any? on array' do
    let(:array) { [1, 2, 3, 4, 5, 6, 7] }
    it 'returns false if there no element that satisfies the condition' do
      result = array.any? { |i| i > 7 }
      output = array.my_any? { |i| i > 7 }
      expect(output).to eql result
    end
  end
  context 'testing my_none? on array' do
    let(:array) { [1, 2, 3, 4, 5, 6, 7] }
    it 'returns false if there is an element that satisfies the condition' do
      result = array.none? { |i| i > 3 }
      output = array.my_none? { |i| i > 3 }
      expect(output).to eql result
    end
  end
  context 'testing my_none? on array' do
    let(:array) { [1, 2, 3, 4, 5, 6, 7] }
    it 'returns true if there is no element that satisfies the condition' do
      result = array.none? { |i| i > 7 }
      output = array.my_none? { |i| i > 7 }
      expect(output).to eql result
    end
  end
  context 'testing my_count on array' do
    let(:array) { [1, 2, 3, 4, 5, 6, 7] }
    it 'returns number of elements in array that satisfies the condition if given' do
      result = array.count { |i| i > 3 }
      output = array.my_count { |i| i > 3 }
      expect(output).to eql result
    end
  end
  context 'testing my_count on array' do
    let(:array) { [1, 2, 3, 4, 5, 6, 7] }
    it 'returns number of elements in array if a block is not given' do
      result = array.count
      output = array.my_count
      expect(output).to eql result
    end
  end
  context 'testing my_map on array' do
    let(:array) { [1, 2, 3, 4, 5, 6, 7] }
    it 'returns an array of elements that satisfies the condition' do
      result = array.map { |i| i < 4 }
      output = array.my_map { |i| i < 4 }
      expect(output).to eql result
    end
  end
  context 'testing my_inject on array' do
    let(:array) { [1, 2, 3, 4, 5] }
    it 'returns the sum of elements without pass a parameter' do
      result = array.inject { |sum, k| sum + k }
      output = array.my_inject { |sum, k| sum + k }
      expect(output).to eql result
    end
  end
  context 'testing my_inject on array' do
    let(:array) { [1, 2, 3, 4, 5] }
    it 'returns the product of elements after passing initial value of product as 1' do
      result = array.inject { |sum, k| sum * k }
      output = array.my_inject(1) { |product, k| product * k }
      expect(output).to eql result
    end
  end
end
