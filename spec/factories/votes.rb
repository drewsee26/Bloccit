FactoryGirl.define do
    factory :vote do
        value in: [-1, 1]
        user
        post
    end
end