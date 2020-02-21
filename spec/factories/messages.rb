FactoryBot.define do
  factory :message do
    content {Faker::Lorem.sentence}
    image {File.open("#{Rails.root}/public/images/EBP16-06594A.jpg.jpg")}
    user
    group
  end
end