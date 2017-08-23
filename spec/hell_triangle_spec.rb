require 'rspec'
require_relative '../hell_triangle.rb'

RSpec.describe HellTriangle do
  let(:example) { [[6], [3, 5], [9, 7, 1], [4, 6, 8, 4]] }
  let(:wrong_example) { [[6, 1], [3, 5], [9, 7, 1], [4, 6, 8, 4]] }
  let(:triangle) { HellTriangle.new(example) }

  it '.initialize' do
    expect(triangle.example).to eq(example)
  end

  it '.return_max' do
    expect(triangle.return_max(triangle.example[1][0], triangle.example[1][1])).to eq(5)
  end

  it '.return_index' do
    expect(triangle.return_index(triangle.example[1], 3)).to eq(0)
  end

  it '.return_max_result' do
    expect(triangle.return_max_result(example)).to eq(26)
  end

  it '.final_result' do
    expect(triangle.final_result([6, 5, 7, 8])).to eq(26)
  end
end
