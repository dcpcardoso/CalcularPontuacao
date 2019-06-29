# language: pt
# Source: http://github.com/aslakhellesoy/cucumber/blob/master/examples/i18n/pt/features/adicao.feature
# Updated: Tue May 25 15:52:12 +0200 2010
Funcionalidade: Realizar os acréscimos na pontuação do jogador com base em eventos chave.

Contexto: O jogador se encontra em uma partida em andamento. 

Cenário: Acréscimo da pontuação por nível
Dado que tenho todos os requisitos para passar de nível
Quando clico para passar de nível
Então a pontuação é acrescida na fórmula [pontuação += 100 * nível] 
E a pontuação atualizada é apresentada na tela

Cenário: Acréscimo da pontuação por carta   
Dado que iniciou uma nova rodada
Quando recebo uma nova carta
Então a pontuação é acrescida na fórmula [pontuação += 10 * nível] 
E a pontuação atualizada é apresentada na tela

Cenário: Acréscimo da pontuação por artefato   
Dado que tenho todos os requisitos para preparar um artefato
Quando clico para gerar o artefato
Então a pontuação é acrescida na fórmula [pontuação += 25 * nível] 
E a pontuação atualizada é apresentada na tela

Cenário: Acréscimo da pontuação por turnos faltantes
Dado que tenho todos os requisitos para alcançar o nível máximo
E ainda existem mais turnos a serem jogados
Quando clico para alcançar o nível máximo
Então a pontuação é acrescida na fórmula [pontuação += 50 * turnos] onde [ turnos = TurnoLimite - TurnoAtual]
E a pontuação atualizada é apresentada na tela

Cenário: Acréscimo da pontuação por recurso restante ao final do jogo
Dado que cheguei ao final do último turno
Quando o jogo se encerra
E eu tenho recursos não gastos
Então a pontuação é acrescida na fórmula [pontuação += (recursos/10) * nível ]
E a pontuação atualizada é apresentada na tela  

