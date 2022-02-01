require 'rails_helper'

RSpec.describe BragEntry, type: :model do
  context "validating" do
    setup do
      @be = create(:brag_entry)
    end
    
    it "is valid with minimal attributes" do
      expect(@be.valid?).to be_truthy
    end
    
    it "must have description to be published" do
      @be.description = nil
      expect(@be.valid?(:publish)).to be_falsy
      
      @be.description = ""
      expect(@be.valid?(:publish)).to be_falsy
    end
  end
  
end
