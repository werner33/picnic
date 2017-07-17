require 'rails_helper'

describe Picnic do 
    
  it { should belong_to(:host) }
  it { should have_many(:invites) }
  it { should have_many(:users).through(:invites) }   
  it { should have_one(:photo_gallery) }
  it { should have_many(:photos).through(:photo_gallery) }
  it { should accept_nested_attributes_for(:invites) }
  it { should validate_presence_of(:host_id) }
  
  # it "has a valid factory" do
  #   picnic = FactoryGirl.create(:picnic)
  #   expect(picnic).to be_valid
  # end 
  
  # it "excludes picnics that have already occured" do
  #   @picnic = FactoryGirl.create(:picnic)
  #   Picnic.future_picnics.should_not include(@picnic)
  # end
end 