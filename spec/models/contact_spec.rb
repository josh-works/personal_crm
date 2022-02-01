require 'rails_helper'

RSpec.describe Contact, type: :model do
  it "has basic attributes" do
    contact = FactoryBot.create(:contact)
    
    expect(contact.first_name).to be_an_instance_of(String)
    expect(contact.last_name).to be_an_instance_of(String)
    expect(contact.email).to be_an_instance_of(String)
    expect(contact.phone).to be_an_instance_of(String)
  end
end
