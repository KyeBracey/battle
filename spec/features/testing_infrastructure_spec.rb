require 'battle'

feature "Testing infrastructure" do
  scenario 'can run app and change page content' do
    visit('/')
    expect(page).to have_content('Testing infrastructure working!')
  end

  scenario 'players fill in their names and see them on screen' do
    visit('/')
    fill_in('Player 1', with: 'Kye')
    fill_in('Player 2', with: 'Kavita')
    expect(page).to have_field('Player 1', with: 'Kye')
    expect(page).to have_field('Player 2', with: 'Kavita')
  end
end
