require 'rails_helper' 

feature 'Home page' do
  scenario 'successfully' do
    visit root_path

    expect(page).to have_content('Olá')
  end
end