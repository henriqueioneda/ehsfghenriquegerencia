feature 'Home page' do
  scenario 'visit the home page' do
    visit root_path
    expect(page).to have_content 'Supervisão'
  end

  scenario 'login' do 
    sign_in
    expect(page).to have_content('Bem Vindo!')
  end
end
