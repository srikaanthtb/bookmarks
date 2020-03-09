feature 'Viewing bookmarks' do
  scenario 'visiting the index page' do
    visit('/')
    expect(page).to have_content "Bookmark Manager"
  end
end

feature 'Viewing bookmarks' do
  scenario 'see bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content "https://www.youtube.com/?gl=GB"
    expect(page).to have_content "https://www.amazon.co.uk/ref=nav_logo"
    expect(page).to have_content "https://github.com/"
  end
end
