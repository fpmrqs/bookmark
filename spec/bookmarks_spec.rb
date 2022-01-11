require 'bookmarks'

describe Bookmarks do
  
  it 'returns a list of bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')
    connection.exec("INSERT INTO bookmark (url) VALUES ('www.google.co.uk');")
    connection.exec("INSERT INTO bookmark (url) VALUES('www.wikipedia.com');")

    expect(subject.list).to include 'www.google.co.uk'
    expect(subject.list).to include 'www.wikipedia.com'
  end

end
