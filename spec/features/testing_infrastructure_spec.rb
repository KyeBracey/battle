require 'battle'

feature "Testing infrastructure" do

  scenario 'players fill in their names and see them on screen' do
    visit('/')
    fill_in('player_1', with: 'Kye')
    fill_in('player_2', with: 'Kavita')
    click_button 'Submit'
    expect(page).to have_content 'Kye -VS- Kavita'
  end
end
