FactoryBot.define do
  factory :weapon do
    name { "diavolo" }
    description { "espada de fogo" }
    power_base { 300 }
    power_step { 100 }
    level {rand(1..99)}
  end
end
