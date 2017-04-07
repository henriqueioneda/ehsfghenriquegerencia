require 'spec_helper'

feature 'Payments index' do
  scenario 'I cannot visit if not authenticated' do
    visit '/payments'
    expect(current_path).to eq root_path
  end 

  scenario 'Visit the payments page' do
    sign_in
    visit '/payments'
    expect(page).to have_content 'Pagamentos'
  end
end
