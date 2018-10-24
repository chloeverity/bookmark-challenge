feature 'adding bookmarks' do
  scenario 'I want to create a new bookmark' do
    visit('/')
    click_button('New Bookmark')
    fill_in('url', with: 'http://www.bbc.co.uk')
    fill_in('title', with: 'BBC')
    click_button('Submit')
    expect(page).to have_content('BBC')
  end
end
