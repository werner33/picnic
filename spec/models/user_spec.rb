require "rails_helper"

describe User do 
    it {should have_many :hosted_picnics} 
    it {should have_many(:picnics).through(:invites) }
    it {should have_many(:invites) }
    
    it "has a valid factory" do 
        user = FactoryGirl.create(:user)
        expect(user).to be_valid 
    end 
    
    describe "#order_by_date_created" do
        context "with no users" do 
            it "should return an empty array" do 
                expect(User.order_by_date_created).to eq([])
            end
        end
        context "with one user" do 
            it "returns an array with one user" do 
                user = FactoryGirl.create(:user) 
                expect(User.order_by_date_created).to eq([user])
            end 
        end
        context "with multiple users" do
            it "returns an array ordered by time they were created" do
                user1 = FactoryGirl.create(:user, created_at: 2.days.ago)
                user2 = FactoryGirl.create(:user, created_at: 1.day.ago)
                user3 = FactoryGirl.create(:user)
                expect(User.order_by_date_created).to eq([user1, user2, user3])
            end
        end 
    end
end 

