require  'rails_helper'

feature 'Applicant authentication' do
  context 'log in' do
    scenario 'successfully' do
      applicant = Applicant.create!(email: 'teste@teste.com', password: '123456789')

      visit root_path
      click_on 'Candidato'

      fill_in 'Email', with: applicant.email
      fill_in 'Senha', with: applicant.password
      within 'form' do
        click_on 'Entrar'
      end

      expect(page).to have_content('Login efetuado com sucesso!')
      expect(page).not_to have_link('Entrar')
      expect(page).to have_link('Sair')
      expect(current_path).to eq(root_path)
    end

    scenario 'and must fill all fields' do
      applicant = Applicant.create!(email: 'teste@teste.com', password: '123456789')

      visit root_path
      click_on 'Candidato'

      within 'form' do
        click_on 'Entrar'
      end

      expect(page).to have_content('Email ou senha inválida.')
      expect(page).to have_button('Entrar')
      expect(page).not_to have_link('Sair')
    end
  end

  context 'log out' do
    scenario 'successfully' do
      applicant = Applicant.create!(email: 'teste@teste.com', password: '123456789')

      visit root_path
      click_on 'Candidato'

      fill_in 'Email', with: applicant.email
      fill_in 'Senha', with: applicant.password
      within 'form' do
        click_on 'Entrar'
      end
      click_on 'Sair'

      expect(page).to have_content('Saiu com sucesso.')
      expect(page).to have_button('Candidato')
      expect(page).not_to have_button('Sair')
      expect(current_path).to eq(root_path)
    end
  end

  context 'sign up' do
    scenario 'successfully' do
      visit root_path
      click_on 'Candidato'
      click_on 'Cadastre-se'

      fill_in 'Email', with: 'teste@teste.com'
      fill_in 'Senha', with: '123456789'
      fill_in 'Confirmação de senha', with: '123456789'
      within 'form' do
        click_on 'Cadastre-se'
      end

      expect(page).to have_content('Login efetuado com sucesso.')
      expect(page).to have_link('Sair')
      expect(page).not_to have_link('Entrar')
    end
  end
end