require_relative '../../papercut'

RSpec.describe '#papercut' do
  it "find how many squares in an area" do
    expect(papercut(29, 13)).to eq(9)
  end
end
