require '../spec_helper'
require './hero'

describe Hero do
  context "Quando ele vai para uma missão"
  it 'has a sword' do
    hero = Hero.new
    expect(hero.weapon).to eq('sword') #expect verifica se o comportamento esperado esta acontecendo to eq(igual) traduzindo, espera se que a arma do hero seja uma sword
  end

  it "has more than 1000 HP points" do
    hero = Hero.new
    expect(hero.life).to be >= 1000
  end
end

# describe para testar a classe Hero
