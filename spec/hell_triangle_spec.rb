require 'rspec'
require_relative '../hell_triangle'

RSpec.describe HellTriangle do
  describe '.selected_max' do
    context 'with success' do
      it 'returns the max number of the sums' do
        expect(HellTriangle.selected_max(1, 2, 3)).to eq(4)
      end
    end

    context 'without success' do
      it 'do not returns the min number of the sums' do
        expect(HellTriangle.selected_max(1, 2, 3)).to_not eq(3)
      end
    end
  end

  describe '.sum_nodes' do
    context 'with success' do
      it 'returns the result of the sum' do
        expect(HellTriangle.sum_nodes(1, 2)).to eq(3)
      end
    end

    context 'without success' do
      it 'do not returns a wrong result of the sum' do
        expect(HellTriangle.sum_nodes(1, 2)).to_not eq(4)
      end
    end
  end

  describe '.calcule_node' do
    context 'with success' do
      it 'returns the result of the sum without params nil' do
        expect(HellTriangle.calcule_node(1, 2, 3)).to eq(4)
      end

      it 'returns the result of the sum with the second params nil' do
        expect(HellTriangle.calcule_node(1, nil, 3)).to eq(4)
      end

      it 'returns the result of the sum with the third params nil' do
        expect(HellTriangle.calcule_node(1, 2, nil)).to eq(3)
      end

      it 'returns the first params' do
        expect(HellTriangle.calcule_node(1, nil, nil)).to eq(1)
      end
    end

    context 'without success' do
      it 'returns a wrong result of the calculation' do
        expect(HellTriangle.calcule_node(1, 2, 3)).to_not eq(5)
      end
    end
  end

  describe '.calcule_max' do
    context 'with success' do
      it 'returns the max number from top to bottom' do
        expect(HellTriangle.calcule_max([[6], [3, 5], [9, 7, 1], [4, 6, 8, 4]])).to eq(26)
      end
    end

    context 'without success' do
      it 'returns wrong number' do
        expect { HellTriangle.calcule_max([[6, 4], [3, 5], [9, 7, 1], [4, 6, 8, 4]]) }.to raise_error(RuntimeError, 'The number of the first array is wrong!')
      end
    end
  end
end
