require 'rails_helper'

RSpec.describe 'Contacts', type: :system do
  describe 'index page' do
    it 'shows all info about contacts' do
      contact = create(:contact)
      
      visit contacts_path
      
      expect(page).to have_content('First name')
      expect(page).to have_content('Last name')
      expect(page).to have_content('Email')
      expect(page).to have_content('Phone')
      
      expect(page).to have_content(contact.first_name)
      expect(page).to have_content(contact.first_name)
      expect(page).to have_content(contact.last_name)
      
    end
  end
end