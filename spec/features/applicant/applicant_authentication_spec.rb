require  'rails_helper'

feature 'Applicant authentication' do
  context 'sign up' do
    scenario 'and access sign up form' do
      visit root_path
      click_on 'Candidato'
      click_on 'Cadastre-se'

      expect(page).to have_content('Cadastre-se')
      expect(page).to have_button('Cadastre-se')
    end

    scenario 'and successfully fill sign up form' do
      visit root_path
      click_on 'Candidato'
      click_on 'Cadastre-se'

      fill_in 'Email', with: 'teste@teste.com'
      fill_in 'Senha', with: '123456789'
      fill_in 'Confirmação de senha', with: '123456789'
      within 'form' do
        click_on 'Cadastre-se'
      end

      expect(page).to have_content('Perfil incompleto. Por favor complete-o.')
      expect(page).to have_content('Seu perfil está completo em: 33 %')
      expect(page).to have_button('Enviar')
    end

    scenario 'but email is already used' do
      applicant = create(:applicant)
      visit root_path
      click_on 'Candidato'
      click_on 'Cadastre-se'

      fill_in 'Email', with: applicant.email
      fill_in 'Senha', with: applicant.password
      fill_in 'Confirmação de senha', with: applicant.password
      within 'form' do
        click_on 'Cadastre-se'
      end

      expect(page).to have_content('Email já está em uso')
      expect(page).to have_link('Entrar')
      expect(page).not_to have_link('Sair')
    end

    scenario 'but password didn\'t match the requirements' do
      visit root_path
      click_on 'Candidato'
      click_on 'Cadastre-se'

      fill_in 'Email', with: 'teste@teste.com'
      fill_in 'Senha', with: '123'
      fill_in 'Confirmação de senha', with: '123'
      within 'form' do
        click_on 'Cadastre-se'
      end

      expect(page).to have_content('Senha é muito curta (mínimo: 6 caracteres)')
      expect(page).to have_link('Entrar')
      expect(page).not_to have_link('Sair')
    end
  end

  context 'sign in' do
    scenario 'and successfully sign-in' do
      applicant = create(:applicant)
      visit root_path
      click_on 'Candidato'
      fill_in 'Email', with: applicant.email
      fill_in 'Senha', with: applicant.password
      click_on 'Entrar'

      expect(page).to have_content('Perfil incompleto. Por favor complete-o.')
      expect(page).to have_content('Seu perfil está completo em: 66 %')
      expect(page).to have_button('Enviar')
    end
  end
end