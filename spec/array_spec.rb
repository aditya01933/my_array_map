require 'spec_helper'

describe Array do
  let(:number_arr) { [1, 2, 3] }
  let(:string_arr) { %w(I AM ADITYA) }

  it 'should perform arthemetic operations' do
    expect(number_arr.map { |e| e + 2 }).to eq(number_arr.my_map { |e| e + 2 })
    expect(number_arr.map { |e| e * e }).to eq(number_arr.my_map { |e| e * e })
  end

  it 'should perform string operations' do
    expect(string_arr.map(&:downcase)).to eq string_arr.my_map(&:downcase)
    expect(number_arr.map(&:to_s)).to eq number_arr.my_map(&:to_s)
  end

  it 'should handle empty array' do
    expect([].map(&:to_s)).to eq []
  end

  it 'should handle array of arrays' do
    nested_array = [number_arr, string_arr]
    expect(nested_array.map(&:reverse)).to eq nested_array.my_map(&:reverse)
  end

  it 'should return enumerator if no block given and respond to with_index' do
    expect(number_arr.map.with_index { |x, i| x * i }).to eq(
      number_arr.my_map.with_index { |x, i| x * i }
    )
  end
end
