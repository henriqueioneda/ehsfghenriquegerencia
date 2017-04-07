require 'spec_helper'

feature 'Payments show' do
  scenario 'I cannot visit if not authenticated' do
    visit '/payments/1'
    expect(current_path).to eq root_path
  end 

  scenario 'Visit the payments show' do
    sign_in
    visit '/payments'
    click_link 'Visualizar', match: :first
    expect(page).to have_content 'Valor'
    expect(page).to have_content 'Vencimento'
  end
end
