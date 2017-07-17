# FactoryGirl.define do 
#     factory :picnic do 
#         name Faker::Lorem.words(3)
#         description Faker::Lorem.paragraph
#         host_id  { FactoryGirl.create(:user).id }
#     end 
# end 