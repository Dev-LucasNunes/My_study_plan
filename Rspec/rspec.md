O que são testes automatizados e porque eles são importantes

teste automatizado é vc criar um software  que vai testar se seu software funciona
facilidade
aumentam a qualidade do software 
ajudam no crescimento equilibrado do software
diminuem ops custos do projeto
a curto prazo aumenta o tempo porque vc vai ter que desenvolver 2 softwares

testar o principal, nãio 100% do teste

Rpec

é uma linguagem escrita em cima de ruby dsl
é um framework BDD

intalar
gem install rspec

iniciar 
rspec --init

criri uma lib fora e uma dentro da pasta spec, as pastas de fora vão refletir para dentro do spec então se fizer uma pasta fora faz dentro pra organizar o que esta testando

criar o primeiro arquivo de testes dentro da spec/lib vou criar ele
todo arquivo de teste tem o _spec


Principais elementos do rSpec:

describe:
É usado para definir um "grupo de exemplos"
pode receber um nome de classe ou uma string como paramentros
Hero
"#destroy"

Context:
Agrupa testes associados ao mesmo contexto
Não é obrigatório mas ajuda a tornar os testes mais legiveis e simples, vc pode colocar contexto tipo, quando o programa esta de um jeito faça esses testes de outro jeito faça outros

It:
É usado para definir um exemplo(teste)
dentro de um contexto eu posso ter outros contextos

Expect:
É onde verificamos se uma determinada condição está ocorrendo para concluirmos que noss teste passou

Matcher:
É uma instrução para verificar se uma determinada condição esta sendo atendida
expect(message).to eq "hello hero"
expect(x).to be eql?(y)
exemplo de diferença eq e eql: com eq é como se escrevesse == então 5 e 5.0 seriam iguais, já com eql não passaria
O método expect(x).to be(y) em RSpec é usado para verificar se x é o mesmo objeto que y, ou seja, se x e y apontam para o mesmo objeto na memória. Isso é diferente de eq e eql, que são usados para comparar o valor dos objetos, mas não necessariamente sua identidade.
Em resumo, be é usado para verificar a identidade dos objetos, eq é usado para verificar a igualdade de valor dos objetos, e eql é usado para verificar a igualdade de valor e tipo dos objetos. Cada um desses métodos tem seu próprio caso de uso específico, dependendo de se você está interessado na identidade, valor ou valor e tipo dos objetos.

expect(actual).to be_an_instance_of(expected) ve se o objeto é de determinada classe

expect(actual).to be_a(expected) passa se o tipo do obj for o esperado se é string, array etc

tem os booleanos tbm
tudo nesse doc https://www.rubydoc.info/gems/rspec-expectations/frames

tem os de erros tbm, ele verifica os tipos de erros

development desenvolve na sua maquina
production no servidor

spec helper:
Ele é o arquivo base de configuração do Rspec
Exemplo de configuaração
config.order=:randon diz que os testes são rodados de forma aleatoria

rails helper:
arquivo que carrega as dependencias do Rails e faz as configuraçoes necessárias para que o Rspec rode em conjunto com ele
exemplo?
config.use_transictional_fixtures=true toda vez que roda um teste os dados são apagados pra não contar errado

Generators
Scripts que geram arquivos de testes com a estrutura basica pronta para que voce possa criar seus testes facilmente

alguns:
 rails generate model user --- ele ja da a estrutura toda pronta
 rails generate rspec:request User ---ele não faz modelo só o teste direto, por exemplo testar api, é o padrão
 para saber todos padrões
 rails generate --help | grep rspec


models: 
são classes ruby que se conectam as tabelas no banco de dados para permitir uma facil manipulação delas
testar os nmodels serve para garantir que a estrutura de dados esteja correta
é importante testar quando existem validaçoes customizadas

Gem ffaker

uma gem que permite gerar valores aleatórios
exemplos
Ffaker::Name.name #=> "Green wizard" ele gera tudo aleatório
Ffaker::Internet.email #=>"green@wizard.com"
Ffaker::Adress.city #=> "Camelot"

é importante ter dados aleatorios no teste porque isso evita que criemos testes viciados, ou seja, que sói funcionam com determinados valores de variaveis

factory bot
é tipo uma forma usada para manipularmos records de forma organizada nos testes, e escrever menos codigos

exemplo 
FactoryBot.define do
    factory :weapon do
        name { 'excalibur' }
        kind { :sword }
    end
end    

com ele conseguimos organizar melhor a gestão dos nossos records e passamos a escrever menos codigos repetidos (DRY) "dont repeat yourself"

Testes de request

são testes de integração ou seja, que testam varios componentes ao mesmo tempo, que realiza uma request completa para um endpoint do seu projeto e verifica se ele está respondendo adequadamente

por que usar?
para garantir que o seu endpoint esta devolvendo o status code e a resposta para ele
para garantir que a integração entre os diversos elementos (model, controller, rota e etc) necessários para a resposta do endpoint estão funcionando adequadamente juntos
utilizar sempre que possivel, principalmente quando voce estiver construindo uma API
criando controller 
rails g controller users index create --no-helper --no-assets --no-controller-specs --no-view-specs --skip-routes