require 'rails_helper'

feature 'Visitor open home page' do
  scenario 'successfully' do
    visit root_path

    expect(page).to have_content('Bem-vindo ao Novo emprego')
    expect(page).to have_content('O melhor site de empregos para candidatos e empresas.')
  end
end