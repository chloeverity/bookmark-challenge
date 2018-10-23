feature 'adding bookmarks' do
  scenario 'I want to create a new bookmark' do
    visit('/')
    click_button('New Bookmark')
    fill_in('url', with: 'http://www.bbc.co.uk')
    click_button('Submit')
    expect(page).to have_content('http://www.bbc.co.uk')
  end
end
