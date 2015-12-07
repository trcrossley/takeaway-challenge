require 'menu'

describe Menu do
  subject(:menu) { described_class.new }

  it 'returns an item from the list' do
    expect(menu.list[:Biryani_rice]).to eq (3.50)
  end
end
