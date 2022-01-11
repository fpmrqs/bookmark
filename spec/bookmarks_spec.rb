require 'bookmarks'

describe Bookmarks do
  it 'returns a list of bookmarks' do
    expect(subject.list).to include 'www.google.com'
    expect(subject.list).to include 'www.wikipedia.com'
  end

end
