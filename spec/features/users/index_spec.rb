require 'spec_helper'

feature 'Users index' do
  scenario 'I cannot visit if not authenticated' do
    visit '/users'
    expect(current_path).to eq root_path
  end 

  scenario 'Visit the users page' do
    sign_in
    visit '/users'
    expect(page).to have_content 'Afiliações'
  end
end
