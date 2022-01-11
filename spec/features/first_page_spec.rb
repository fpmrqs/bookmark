feature 'Index page' do
  scenario 'checking first page has bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content 'www.google.com'
    expect(page).to have_content 'www.wikipedia.com'
  end

  
end