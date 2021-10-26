require 'rails_helper'

RSpec.describe 'Hello world', type: :system do
  describe 'index page' do
    it 'shows correct content' do
      visit hello_world_index_path
      expect(page).to have_content('Hello, world!')
    end
  end
end