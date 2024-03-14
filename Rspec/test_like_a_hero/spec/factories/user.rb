FactoryBot.define do
  factory :user do
    nickname { FFaker::Lorem.word }
    level { FFaker::Randon.rand(1..99) }
    kind {%w[knigth wizard].sample}
  end
end

#com isso é como se a gente gerasse uma fabrica, então nao tem q ficar colcoando toda hora o nickname o kind e o level, então só de colocar create.user ele já vai gerar um usuario baseado nessa fabrica, e quando vc chama se voce nao passar valor nenhum ficam esses que estão na fabrica, porem se voce quiser passar algum ele sobrescreve
