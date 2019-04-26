
feature 'adding new bookmark' do
  scenario 'user can add new bookmakrs' do
    visit('/bookmarks/new')
    fill_in :url, with: 'http://www.github.com'
    fill_in :title, with: 'Github'
    click_button 'Submit'
    expect(page).to have_link('Github', href: 'http://www.github.com')
  end
end
