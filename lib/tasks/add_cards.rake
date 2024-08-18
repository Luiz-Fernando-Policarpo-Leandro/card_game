namespace :add_cards do
    desc "Adiciona maldições e feiticeiros no banco de dados"
    task :populate_db => :environment do

        feiticeiros = [
            { nome: "Satoru Gojo", descricao: "O mais forte dos feiticeiros jujutsu.", vida: rand(3..8), dano: rand(2..5), efeito_id: 1, tipo_id: 1 },
            { nome: "Yuji Itadori", descricao: "O portador de Sukuna, com grande força física.", vida: rand(3..8), dano: rand(2..5), efeito_id: 1, tipo_id: 1 },
            { nome: "Megumi Fushiguro", descricao: "Feiticeiro com o poder de invocar shikigamis.", vida: rand(3..8), dano: rand(2..5), efeito_id: 1, tipo_id: 1 },
            { nome: "Nobara Kugisaki", descricao: "Feiticeira com uma técnica baseada em bonecos de palha.", vida: rand(3..8), dano: rand(2..5), efeito_id: 1, tipo_id: 1 },
            { nome: "Maki Zenin", descricao: "Usuária de armas jujutsu com força física excepcional.", vida: rand(3..8), dano: rand(2..5), efeito_id: 1, tipo_id: 1 },
            { nome: "Panda", descricao: "Feiticeiro criado pelo Mestre Yaga, com habilidades poderosas.", vida: rand(3..8), dano: rand(2..5), efeito_id: 1, tipo_id: 1 },
            { nome: "Toge Inumaki", descricao: "Feiticeiro que usa palavras amaldiçoadas como arma.", vida: rand(3..8), dano: rand(2..5), efeito_id: 1, tipo_id: 1 },
            { nome: "Yuta Okkotsu", descricao: "Um dos quatro feiticeiros de grau especial.", vida: rand(3..8), dano: rand(2..5), efeito_id: 1, tipo_id: 1 },
            { nome: "Kento Nanami", descricao: "Feiticeiro sério e experiente, com habilidades precisas.", vida: rand(3..8), dano: rand(2..5), efeito_id: 1, tipo_id: 1 },
            { nome: "Suguru Geto", descricao: "Feiticeiro que se voltou contra a sociedade jujutsu.", vida: rand(3..8), dano: rand(2..5), efeito_id: 1, tipo_id: 1 }
        ]
        
        # Dados para maldições
        maldicoes = [
            { nome: "Ryoumen Sukuna", descricao: "O Rei das Maldições, temido por todos.", vida: rand(1..10), dano: rand(1..7), tipo_id: 2, efeito_id: 1 },
            { nome: "Mahito", descricao: "Maldição com o poder de manipular a forma das coisas.", vida: rand(1..10), dano: rand(1..7), tipo_id: 2, efeito_id: 1 },
            { nome: "Jogo", descricao: "Maldição que tem o poder de manipular e controlar a terra.", vida: rand(1..10), dano: rand(1..7), tipo_id: 2, efeito_id: 1 },
            { nome: "Hanami", descricao: "Maldição com a habilidade de controlar plantas e natureza.", vida: rand(1..10), dano: rand(1..7), tipo_id: 2, efeito_id: 1 },
            { nome: "Dagon", descricao: "Maldição com a capacidade de criar e controlar um domínio aquático.", vida: rand(1..10), dano: rand(1..7), tipo_id: 2, efeito_id: 1 },
            { nome: "Nue", descricao: "Maldição que assume a forma de uma criatura alada com eletricidade.", vida: rand(1..10), dano: rand(1..7), tipo_id: 2, efeito_id: 1 },
            { nome: "Kurusu", descricao: "Maldição com habilidades de manipulação do tempo e espaço.", vida: rand(1..10), dano: rand(1..7), tipo_id: 2, efeito_id: 1 },
            { nome: "Tsukumo", descricao: "Maldição com poderes baseados em ilusões e enganos.", vida: rand(1..10), dano: rand(1..7), tipo_id: 2, efeito_id: 1 },
            { nome: "Satoru", descricao: "Maldição com habilidades que desafiam as leis naturais.", vida: rand(1..10), dano: rand(1..7), tipo_id: 2, efeito_id: 1 },
            { nome: "Shou", descricao: "Maldição que possui grande poder físico e resistência.", vida: rand(1..10), dano: rand(1..7), tipo_id: 2, efeito_id: 1 }
        ]
        

        efeitos.each do |efeito|
            unless Efeito.exists?(nome: efeito[:nome])
              Efeito.create!(efeito)
              puts "Adicionado efeito: #{efeito[:nome]}"
            end
          end
      
          tipos.each do |tipo|
            unless Tipo.exists?(nome: tipo[:nome])
              Tipo.create!(tipo)
              puts "Adicionado tipo: #{tipo[:nome]}"
            end
          end


        feiticeiros.each do |feiticeiro|
            unless Cartum.exists?(nome: feiticeiro[:nome])
                Cartum.create!(feiticeiro)
                puts "Adicionado feiticeiro: #{feiticeiro[:nome]}"
            end
        end
        
        # Adicionar maldições ao banco de dados
        maldicoes.each do |maldicao|
            unless Cartum.exists?(nome: maldicao[:nome])
                Cartum.create!(maldicao)
                puts "Adicionada maldição: #{maldicao[:nome]}"
            end
        end
    end
end