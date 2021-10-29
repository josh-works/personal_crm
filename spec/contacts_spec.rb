require 'rails_helper'

RSpec.describe 'Contacts', type: :system do
  describe 'index page' do
    it 'shows all info about contacts' do
      visit contacts_path
      
      expect(page).to have_content('First name')
      expect(page).to have_content('Last name')
      expect(page).to have_content('Email')
      expect(page).to have_content('Phone')
    end
  end
end