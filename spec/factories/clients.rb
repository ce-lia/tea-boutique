FactoryBot.define do
  factory :client do
    confirmed_at {Time.now}
    email {'test@testdomain.test'}
    password {'pa$$word'}
  end
end
