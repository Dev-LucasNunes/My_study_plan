require_relative '../../jump_search'

RSpec.describe '#jump_search' do
  let(:array) { [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610] }

  it 'retorna a posição do elemento no array' do
    expect(jump_search(array, 55)).to eq(10)
  end

  it 'retorna nil se o elemento não estiver no array' do
    expect(jump_search(array, 100)).to be_nil
  end
end
