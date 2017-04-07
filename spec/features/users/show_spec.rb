require 'spec_helper'

feature 'Users show' do
  scenario 'I cannot visit if not authenticated' do
    visit '/users/1'
    expect(current_path).to eq root_path
  end 

  scenario 'Visit the users show' do
    sign_in
    visit '/users'
    click_link 'Visualizar', match: :first
    expect(page).to have_content 'Nome'
    expect(page).to have_content 'Email'
  end
end
