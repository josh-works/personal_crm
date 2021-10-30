require 'rails_helper'

RSpec.describe 'brag_entry', type: :system do
  describe 'index page' do
    it 'shows correct content' do
      brag_entry = create(:brag_entry)
      
      visit brag_entries_path

      expect(page).to have_content(brag_entry.title)
      expect(page).to have_content(brag_entry.description)
    end
  end
end
