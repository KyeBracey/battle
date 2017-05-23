require 'battle'

feature "Testing infrastructure" do
  scenario 'can run app and change page content' do
    visit('/')
    expect(page).to have_content('Testing infrastructure working!')
  end
end
