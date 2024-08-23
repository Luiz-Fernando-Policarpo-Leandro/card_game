path_imagem = Rails.root.join("public", "jujutsu_image")

tipos_de_cartas = [
    {
      nome: 'Amaldiçoadores',
      descricao: 'Atacam o jogador se reveladas na fase de Abrir uma Porta. Podem ser jogadas em outro jogador com a carta Manipulador de Maldições. Cada maldição é única, mesmo se o nome estiver no plural.'
    },
    {
      nome: 'Ampliadores de Maldições',
      descricao: 'Aumentam ou diminuem a Força de Combate de um Amaldiçoador. Podem ser jogados por qualquer jogador em qualquer combate. Todos os ampliadores de um mesmo maldiçõador são somados.'
    },
    {
      nome: 'Feiticeiros Reencarnados',
      descricao: 'Podem ser jogados para ajudar outro feiticeiro reencarnado em combate sem precisar usar a carta Manipulador de Maldição. Certas cartas podem transformar feiticeiros em reencarnados.'
    },
    {
      nome: 'Itens',
      descricao: 'Podem ser colocados em jogo assim que adquiridos, ou durante o turno, exceto em combate, a menos que a carta diga o contrário. Itens de Uso Único podem ser usados em qualquer combate.'
    },
    {
      nome: 'Outros Tesouros',
      descricao: 'Cartas especiais como "Suba +1 Nível". Podem ser jogadas a qualquer momento, a menos que a própria carta diga o contrário. Devem ser descartadas após o uso, exceto se tiverem bônus permanentes.'
    },
    {
      nome: 'Maldições Especiais',
      descricao: 'Aplicadas ao jogador que as comprou na fase de Abrir uma Porta. Podem ser jogadas em qualquer jogador a qualquer momento. Afetam a vítima imediatamente, mas algumas têm efeitos contínuos.'
    },
    {
      nome: 'Feiticeiros Jujutsu e raça',
      descricao: 'Podem ser colocados em jogo quando adquiridos ou durante o turno. Super Munchkin e Mestiço precisam de um Feiticeiro Jujutsu antes de serem jogados.'
    },
    {
        nome: "modelo",
        descricao: "modelo"
    }
]

classes_super_munchkin = [
    {
      nome: 'Feiticeiro jujutsu',
      descricao: "Feitiço de Voo: Você pode descartar até três cartas depois de rolar o dado para Fugir; cada uma lhe dá um bônus de +1 para fugir\nFeitiço de Encantamento: Você pode descartar sua mão inteira (mínimo de três cartas) para encantar um único Monstro em vez de lutar contra ele. Descarte o Monstro e pegue seu Tesouro, mas não ganhe níveis. Se houver outros monstros no combate, lute contra eles normalmente.",
      imagem: "gojo.jpg",
      tipo_id: 7
    },
    {
      nome: 'Lutador',
      descricao: "Lutador é uma classe com habilidades como Você vence empates em combate\nBerserking: Você pode descartar até 3 cartas em combate; cada uma lhe dá um bônus de +1.",
      imagem: "itadori.jpg",
      tipo_id: 7
    },
    {
      nome: 'Zero energia',
      descricao: "Apunhalar pelas costas: Você pode descartar uma carta para apunhalar pelas costas outro jogador (-2 em combate). Você pode fazer isso apenas uma vez por vítima por combate, mas se dois jogadores estiverem lutando contra um monstro juntos, você pode apunhalar pelas costas cada um deles.\nRoubo: Você pode descartar uma carta para tentar roubar um pequeno Item carregado por outro jogador. Role um dado; 4 ou mais são bem-sucedidos. Caso contrário, você é atingido e perde um nível.",
      imagem: "toji.jpg",
      tipo_id: 7
    },
    {
      nome: 'Apostador',
      descricao: "Ressurreição : Em vez de comprar cartas viradas para cima, o Jogador pode pegar algumas ou todas do topo da pilha de descarte apropriada. O Jogador deve então descartar uma carta de sua mão para cada carta comprada.\nTurning : O Jogador pode descartar até 3 cartas em combate contra um Monstro Morto-Vivo . Cada descarte dá ao Jogador um bônus de combate de +3.",
      imagem: "hakari.jpg",
      tipo_id: 7
    },
    {
      nome: 'Fala amaldiçoada',
      descricao: "Encantar: Em combate no seu turno, você pode descartar uma carta e selecionar um jogador. Cada um de vocês rola um dado; se sua rolagem for melhor que a do outro jogador, o jogador deve ajudá-lo e não pode pedir uma recompensa. Se você falhar, você pode descartar novamente e tentar encantar outro jogador, continuando até que você tenha sucesso, desista ou fique sem cartas ou oponentes. Você pode não vencer o jogo dessa forma.\nSorte de bardo: Quando você vencer um combate no seu turno, compre um Tesouro extra. Olhe para todos eles e descarte imediatamente um (sua escolha).",
      imagem: "inumaki.jpg",
      tipo_id: 7
    },
    {
      nome: 'Manipulador de Maldições',
      descricao: "Domador de Maldições: Em combate no seu turno, você pode domar uma única maldição em vez de lutar contra ele. Ele se torna seu novo corcel. Para fazer isso, você deve descartar seu antigo corcel, se houver, mais um número de cartas igual aos Tesouros no card do monstro. Esse número é o bônus de combate do seu novo corcel. Você não pode negociar um corcel monstro, Dar ou vendê-lo por níveis.\nSuporte à Distância: Quando você ajuda alguém em combate, você ganha +2.",
      imagem: "geto.jpg",
      tipo_id: 7
    },
    {
        nome: 'modelo',
        descricao: "",
        imagem: "JujutsuCardPNG.png",
        tipo_id: 8
    }
]

regras = [
    {descricao:"
        Regras do jogo normal:
        Cada jogador compra 4 cartas de porta e 4 cartas de tesouro
·         Todo mundo começa sendo humano do próprio sexo sem classe e sem nenhuma raça.
·         Ao longo do jogo pode mudar de raça sendo: Elfo, anão ou halfling. Além disso pode ter classe de personagem sendo: Mago, clérigo ou ladrão.
·         Caso tenha a carta mestiço você poderá ter 2 raças. Caso tenha a carta super munchkin poderá ter 2 classes.
·         Se comprar a carta da classe ou raça, pode baixar imediatamente.
·         O equipamento pode ser colocado: Na cabeça (elmo), Armadura (corpo), Pés (botas), um item em cada mão.
·         Existem itens específicos que são os grandes, com isso pode ter apenas UM ITEM GRANDE. Os demais itens como poção, aneis, pode carregar quantos quiser.
 
CARTAS DA MÃO

 
·         Enquanto as cartas estiverem na mão, não estão em jogo, logo estão protegidas contra o roubo de outros jogadores.
·         Para identificar que a carta está em jogo, ou seja, está carregando ela, mas não usando, a carta deve estar virada.
 
OBJETIVOS E VISÃO GERAL

 
·         O objetivo do jogo é chegar ao nível 10, ganhando níveis derrotando monstros ou vendendo itens, a cada 1000 de ouro é 1 nível, e o outro não é acumulado (para passar do nível 9 para o nível 10, a venda de itens não é válida para subir o nível, sendo a apenas a batalha como forma de subir do nível 9 para o 10). Além disso, tem a carta subir de nível que te faz subir de nível.
·         Cada jogador joga em turnos. Quando chega a vez do jogador ele tem uma sequencia de eventos sendo:
1° preparação do personagem:
2° Chutar uma porta
3° Procurar por encrenca
4° Saquear a sala
5° Caridade.
·         Na Preparação toda carta que estiver na mão e quiser colocar em jogo é essa a hora. As raças e as classes podem ser baixadas na mesa ou jogadas fora a qualquer momento, fora isso, os itens podem ser baixados durante a rodada, mas quando entrar em combate, não pode fazer alterações nenhuma neles. Quando se coloca um item na mesa, só pode se desfazer dele usando habilidades de carta, vendendo eles pra subir nível, ou descartando para ativar habilidade de algum personagem.
·         Na fase de chutar uma porta deve-se pegar uma carta do monte de compras (De porta) e revelar a todos. Existe 2 opções, sendo a 1° opção a carta sendo um monstro, se for um monstro significa que imediatamente você entrou em combate com ele. A 2° possibilidade é a carta ser uma maldição e ela irá imediatamente atingir você de acordo com seu efeito.
·         Caso a maldição tenha vindo, você poderá Procurar por problema. Quando procura por problema pega da carta que está na mão, pode baixar a carta para ele brigar com você.
·         Se não brigou com monstro quando chutou a porta e nem procurou por problema, aí pode saquear o quarto. Quando saqueia a sala, pode pegar uma carta de porta para compor a mão.
·         A última fase é a caridade. Se tiver mais de 5 cartas na mão, vai entregar as que sobrarem, entregar para o jogador de nível mais baixo. Se tiver mais com nível mais baixo vai distribuir as cartas de forma mais igualitária possível. Se você for o jogador de menor nível, vai descartar as que excederem até ficar com 5 na mão.
 
 
 
COMBATE

 
·         A primeira coisa tem que olhar é o nível do monstro. Exemplo: monstro nível 10.
·         Leia o texto do monstro, pois alguns podem ter efeito especiais de acordo com a classe ou a raça.
·         Para ganhar do monstro, deve ter uma força de 1 ponto a mais que seu nível. Exemplo: força 11
·         A força básica é o nível. Ademais, vai se somar os itens.
·         Os jogadores (incluindo você) podem jogar qualquer item que esteja escrito uso único para atrapalhar o combate ou ajudar no combate, auxiliando um dos 2 lados.
·         Qualquer jogador pode jogador pode jogar a carta de monstro errante junto a carta de monstro que ele tenha na mão para fazer com que o monstro auxilie o outro na batalha, assim somando-se os níveis deles. Caso exista um morto-vivo na batalha (característica no início da carta), outros jogadores podem baixar outros morto-vivo da mão sem precisar de um monstro errante para entrar na batalha.
·         O jogador pode pedir por ajuda podendo negociar de acordo com o espólio pós combate, pois o jogador que vai ajudar não subirá de nível, apenas o titular do combate. Nesse sentido, vai somar a força a sua força com a força do seu auxiliador, incluindo as penalidades por estar jogando com ele, pois o dano é dado em grupo. SOMENTE 1 JOGADOR PODERÁ AUXILIAR NO COMBATE.
·         O desfecho do combate pode ser de vitória e derrota. O de vitória, o jogador pegará a quantidade de tesouros mostrados no rodapé de cada carta de monstro ativa, vai comprar cartas do monstro de tesouro, se ganhou sozinho, só você olha a carta que comprou, mas se caso alguém auxiliou no combate, todas as cartas são compradas em aberto para todos os jogadores verem e são distribuídas de acordo que foi acordado previamente. Além disso, se ganhou o combate, APENAS O TITULAR subirá 1 nível.
·         Se você teve derrota você pode fugir. Para fugir basta tirar 5 ou 6 no d6, daí a fuga será bem-sucedida (lembrar de somar os modificadores que algumas cartas dão). Porém, se houver mais de um monstro atacando, o dado deve ser rolado para sair de todos os monstros. Se não fugir, existe uma seção na carta escrito coisa ruim que dirá o que o monstro fará com você, sendo a coisa ruim de cada monstro que não escapou.
·         Assim que coletar o tesouro, pode abaixá-lo ou segurá-lo na mão, de acordo com a sua vontade. Dica: cartas de uso único podem ser jogadas a qualquer momento da mão, logo não é bom deixá-las em campo suscetível a ser roubada pelo adversário.
·         Caso personagem venha morrer, o jogador perderá tudo que tem, exceto as maldições. Nesse sentido, quando morrer começará a fase de saquear o cadáver que significa que todos os itens que você tem será colocado a disposição dos jogadores e cada jogador pode pegar um item, sendo o primeiro a escolher o de maior nível (se houver empate, será desempatado na rolagem de dados). As cartas que não forem compradas serão descartadas. O Respawn do jogador ocorrerá imediatamente no início do turno do próximo jogador da mesa. O JOGADOR MORTO NÃO SOBE DE NÍVEL E NÃO RECEBE NADA NA FASE DE CARIDADE. Quando chegar na sua vez de novo, comprará 4 cartas de porta e 4 cartas de tesouro, exatamente como se tivesse começando o jogo agora.
REGRAS",
    versao: "0.1"}
]


regras.each do |regra_data|
    existing_regra = Regra.find_by(descricao: regra_data[:descricao])
    if existing_regra
      existing_regra.update(regra_data)
    else
        Regra.create!(regra_data)
    end
  end
  

# Criação dos Tipos

tipos_de_cartas.each do |tipo|
    tipo_db = Tipo.find_by(nome: tipo[:nome])
    if tipo_db
      tipo_db.update(descricao: tipo[:descricao]) if tipo_db.descricao != tipo[:descricao]
    else
      Tipo.create!(tipo)
    end
  end
  
  if ActiveStorage::Attachment.count > 0
    ActiveStorage::Attachment.delete_all
    ActiveStorage::Blob.delete_all
  end


  classes_super_munchkin.each do |classe|
    path_imagem = Rails.root.join("public", "jujutsu_image", classe[:imagem])
    
    content_type = case File.extname(classe[:imagem]).downcase
                   when ".jpg", ".jpeg"
                     "image/jpeg"
                   when ".png"
                     "image/png"
                   when ".gif"
                     "image/gif"
                   else
                     "application/octet-stream" # Tipo genérico para arquivos desconhecidos
                   end
  
    # Encontra o registro pelo nome
    classe_db = Cartum.find_by(nome: classe[:nome])
  
    if classe_db
      # Atualiza a descrição se necessário
      if classe_db.descricao != classe[:descricao]
        classe_db.update(descricao: classe[:descricao])
      end
  
      # Verifica se a imagem não está anexada e se o arquivo existe
      if !classe_db.imagem.attached? && File.exist?(path_imagem)
        imagem = File.open(path_imagem)
        classe_db.imagem.attach(io: imagem, filename: File.basename(path_imagem), content_type: content_type)
        classe_db.save!
      end
    else
      # Cria um novo registro
      nova_classe = Cartum.new(
        nome: classe[:nome],
        descricao: classe[:descricao],
        tipo_id: classe[:tipo_id]
      )
  
      # Anexa a imagem se o arquivo existir
      if File.exist?(path_imagem)
        imagem = File.open(path_imagem)
        nova_classe.imagem.attach(io: imagem, filename: File.basename(path_imagem), content_type: content_type)
      end
  
      nova_classe.save!
    end
  end
  
  
  
  

