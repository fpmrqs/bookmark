feature 'Index page' do
  scenario 'checking first page has bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')
    connection.exec("INSERT INTO bookmark (url) VALUES ('www.google.co.uk');")
    connection.exec("INSERT INTO bookmark (url) VALUES('www.wikipedia.com');")
    
    visit '/bookmarks'
    expect(page).to have_content 'www.google.co.uk'
    expect(page).to have_content 'www.wikipedia.com'
  end

end