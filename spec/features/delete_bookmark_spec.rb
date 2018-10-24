feature 'deleting bookmarks' do
  scenario 'I want to delete a bookmark' do
    visit('/')
    click_button('New Bookmark')
    fill_in('url', with: 'http://www.bbc.co.uk')
    fill_in('title', with: 'BBC')
    click_button('Submit')
    first('.bookmark').click_button 'Delete'

   expect(current_path).to eq '/bookmarks'
   expect(page).not_to have_link('BBC', href: 'http://www.bbc.co.uk')
  end
end
