require 'rails_helper'

describe 'Search book' do
  let!(:book1) { FactoryBot.create(:book, title: 'Alice Through the Looking Glass') }
  let!(:book2) { FactoryBot.create(:book, title: 'Alice Adventures Under Ground') }

  search_params = { title: 'The' }
  result = SearchBook.new(search_params).call

  it 'Expected correct result' do
    expect(result).to eq [book1]
  end

  it 'Expected wrong result' do
    expect(result).not_to eq [book2]
    expect(result).not_to eq [book1, book2]
    expect(result).not_to eq []
  end
end
