require_relative '../../selection_sort'

RSpec.describe '#selection_sort' do
  let(:array) { [64, 25, 12, 27, 22, 11] }

  it 'return organized array' do
    expect(selection_sort(array)).to eq([11, 12, 22, 25, 27, 64])
  end
end
