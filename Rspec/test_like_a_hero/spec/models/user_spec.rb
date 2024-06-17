require 'rails_helper'
require 'ffaker'
require 'factory_bot_rails'

RSpec.describe User, type: :model do
  it "is invalid if the level is not between 1 and 99" do
    user = build(:user, level: FFaker::Random.rand(100..9999)) #passar o simbolo :user é como escrever user.new ou create.user
    expect(user).to_not be_valid
  end

  it "returns the correct hero title" do
    nickname = FFaker::Name.first_name
    kind = %i[knigth wizard].sample
    level = FFaker::Random.rand(1...99)

    user = create(:user, nickname: nickname, kind: kind, level: level) #create é como se usasse o create.user
    expect(user.title).to eq("#{kind} #{nickname} ##{level}")
  end
end

RSpec.describe Weapon, type: :model do
  it "has a valid factory" do
    weapon = build(:weapon)
    expect(weapon).to be_valid
  end
end



#estudar depois a gem ffaker
#proxima aula gem factory bot
#faker gera valores aleatorios
