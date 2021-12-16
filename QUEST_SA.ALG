Algoritmo "QUEST 2.3.01"

// Disciplina  : [Linguagem e Lógica de Programação]
// Professor   : ROGÉRIO
// Descrição   : JOGO DE PERGUNTAS E RESPOSTAS GERAIS!
// Autor(a)    : GUSTAVO MANUEL
// Criado      : 21/06/2021

Var
avancar: caracter
x,qt,jog: inteiro
nick: vetor [1..6] de caracter
jogo,acertos,erros,pts: vetor [1..6] de inteiro

inicio
//=================================AJUDA=================================
procedimento ajuda
inicio
limpatela
timer (20)
escreval("\/~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\/")
escreval("/\                                                                                      /\")
escreval("\/                      =============================================                   \/")
escreval("/\                                  SEJA BEM VINDO AO JOGO                              /\")
escreval("\/                       _______           _______  _______ _________                   \/")
escreval("/\                      (  ___  )|\     /|(  ____ \(  ____ \\__   __/                   /\")
escreval("\/                      | (   ) || )   ( || (    \/| (    \/   ) (                      \/")
escreval("/\                      | |   | || |   | || (__    | (_____    | |                      /\")
escreval("\/                      | |   | || |   | ||  __)   (_____  )   | |                      \/")
escreval("/\                      | | /\| || |   | || (            ) |   | |                      /\")
escreval("\/                      | (_\ \ || (___) || (____/\/\____) |   | |                      \/")
escreval("/\                      (____\/_)(_______)(_______/\_______)   )_(                      /\")
escreval("\/                      =============================================                   \/")
escreval("/\                                                                                      /\")
escreval("\/                      Este jogo foi desenvolvido por, Gustavo Manuel                  \/")
escreval("/\                                                                                      /\")
escreval("\/         Baseando-se em perguntas gerais de provas como vestibulares e enem.          \/")
escreval("/\                                                                                      /\")
escreval("\/      Quando o jogo é executado você inicia com a pontuação 0 que irá aumentando      \/")
escreval("/\      ao decorrer das perguntas acertadas, sendo somadas para o resultado final.      /\")
escreval("\/                                Pontuação máxima é 1000                              \/")
escreval("/\                                                                                      /\")
escreval("\/                   Contudo, deixo aqui meus agradecimentos! BOM JOGO                  \/")
escreval("/\                  Para mais informações, consulte os desenvolvedores.                 /\")
escreval("\/                                                                                      \/")
escreval("/\~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/\")
escreval("                    /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\       ")
escreval("                    \   Pressione ENTER para voltar ao menu inicial   /       ")
escreval("                    /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\       ")
leia (avancar)
menu
fimprocedimento
//=================================AJUDA=================================
//==================================COR=================================
procedimento cor
var corf,corl,reset: caracter
inicio
timer (5)
limpatela
escreval("            /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\       ")
escreval("            \ Deseja modificar a COR do FUNDO e das LETRAS?  S ou N /       ")
escreval("            /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\       ")
   leia (reset)
   se (reset <> "s") e (reset <> "n") entao
      repita
       escreval("                    /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\            ")
       escreval("                    \    Comando inválido, Digite novamente    /            ")
       escreval("                    /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\            ")
       leia (reset)
     ate (reset = "s") ou (reset = "n")
   fimse
   se reset = "n" entao
      menu
   senao
      mudacor ("preto","fundos")
      mudacor ("branco","frente")
   fimse
limpatela
escreval("\/~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\/")
escreval("/\                                                                           /\")
escreval("\/                                 ================                          \/")
escreval("/\                    DIGITE O NOME DA COR DE FUNDO QUE DESEJA               /\")
escreval("\/                                 ================                          \/")
escreval("/\                                                                           /\")
escreval("\/                         /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   \/")
escreval("/\                         \           VERMELHO          /                   /\")
escreval("\/                         /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   \/")
escreval("/\                                                                           /\")
escreval("\/                         \~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/                   \/")
escreval("/\                         /           AMARELO           \                   /\")
escreval("\/                         \~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/                   \/")
escreval("/\                                                                           /\")
escreval("\/                         /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   \/")
escreval("/\                         \            BRANCO           /                   /\")
escreval("\/                         /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   \/")
escreval("/\                                                                           /\")
escreval("\/                         \~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/                   \/")
escreval("/\                         /            VERDE            \                   /\")
escreval("\/                         /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   \/")
escreval("/\                                                                           /\")
escreval("\/                         /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   \/")
escreval("/\                         \             AZUL            /                   /\")
escreval("\/                         /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   \/")
escreval("/\                                                                           /\")
escreval("\/                         \~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/                   \/")
escreval("/\                         /             ROXO            \                   /\")
escreval("\/                         \~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/                   \/")
escreval("/\                                                                           /\")
escreval("\/                         \~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/                   \/")
escreval("/\                         /             PRETO           \                   /\")
escreval("\/                         \~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/                   \/")
escreval("/\                                                                           /\")
escreval("\/~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\/")
escreval("")
leia (corf)
se (corf <> "vermelho") e (corf <> "amarelo") e (corf <> "branco") e (corf <> "verde") e (corf <> "azul") e (corf <> "roxo") e (corf <> "preto" ) entao
  repita
   escreval("                    /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\            ")
   escreval("                    \   Não está na lista, Digite novamente    /            ")
   escreval("                    /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\            ")
      leia (corf)
  ate (corf = "vermelho") ou (corf = "amarelo") ou (corf = "branco") ou (corf = "verde") ou (corf = "azul") ou (corf = "roxo") ou (corf = "preto")
fimse
escolha corf
caso "vermelho"
     mudacor ("vermelho","fundos")
caso "amarelo"
     mudacor ("amarelo","fundos")
caso "branco"
     mudacor ("branco","fundos")
     mudacor ("preto","frente")
caso "verde"
     mudacor ("verde","fundos")
caso "azul"
     mudacor ("azul","fundos")
caso "roxo"
     mudacor ("roxo","fundos")
caso "preto"
     mudacor ("preto","fundos")
fimescolha
limpatela
escreval("\/~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\/")
escreval("/\                                                                           /\")
escreval("\/                                 ================                          \/")
escreval("/\                           AGORA, DIGITE A COR DA LETRA                    /\")
escreval("\/                                 ================                          \/")
escreval("/\                                                                           /\")
escreval("\/                         /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   \/")
escreval("/\                         \           VERMELHO          /                   /\")
escreval("\/                         /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   \/")
escreval("/\                                                                           /\")
escreval("\/                         \~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/                   \/")
escreval("/\                         /           AMARELO           \                   /\")
escreval("\/                         \~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/                   \/")
escreval("/\                                                                           /\")
escreval("\/                         /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   \/")
escreval("/\                         \            BRANCO           /                   /\")
escreval("\/                         /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   \/")
escreval("/\                                                                           /\")
escreval("\/                         \~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/                   \/")
escreval("/\                         /            VERDE            \                   /\")
escreval("\/                         /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   \/")
escreval("/\                                                                           /\")
escreval("\/                         /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   \/")
escreval("/\                         \             AZUL            /                   /\")
escreval("\/                         /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   \/")
escreval("/\                                                                           /\")
escreval("\/                         \~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/                   \/")
escreval("/\                         /             ROXO            \                   /\")
escreval("\/                         \~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/                   \/")
escreval("/\                                                                           /\")
escreval("\/                         \~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/                   \/")
escreval("/\                         /             PRETO           \                   /\")
escreval("\/                         \~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/                   \/")
escreval("/\                                                                           /\")
escreval("\/~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\/")
escreval("")
leia (corl)
se (corl = corf) ou (corl <> "vermelho") e (corl <> "amarelo") e (corl <> "branco") e (corl <> "verde") e (corl <> "azul") e (corl <> "roxo") e (corl <> "preto") entao
  repita
   escreval("                    /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\            ")
   escreval("                    \ Cor incorreta ou igual, Digite novamente /            ")
   escreval("                    /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\            ")
      leia (corl)
  ate (corl <> corf) e (corl = "vermelho") ou (corl = "amarelo") ou (corl = "branco") ou (corl = "verde") ou (corl = "azul") ou (corl = "roxo") ou (corl = "preto")
fimse
escolha corl
caso "vermelho"
     mudacor ("vermelho","frente")
caso "amarelo"
     mudacor ("amarelo","frente")
caso "branco"
     mudacor ("branco","frente")
caso "verde"
     mudacor ("verde","frente")
caso "azul"
     mudacor ("azul","frente")
caso "roxo"
     mudacor ("roxo","frente")
caso "preto"
     mudacor ("preto","frente")
fimescolha
escreval("                      /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\               ")
escreval("                      \    Deseja voltar ao original? S ou N   /               ")
escreval("                      /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\               ")
leia (reset)
se (reset = "s") entao
   mudacor ("preto","fundos")
   mudacor ("branco","frente")
fimse
escreval("                  /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\       ")
escreval("                  \   Pressione ENTER para voltar ao menu inicial   /       ")
escreval("                  /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\       ")
leia (avancar)
menu
fimprocedimento
//==================================COR=================================
//==================================JOGO=================================
procedimento jogo
var opcao: caracter
inicio
limpatela
escreval ("")
escreval("                       /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                ")
escreval("                       |  Digite um nome para o",x,"º jogador:  |                ")
escreval("                       \~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/                ")
leia(nick[x])
limpatela
timer (20)
escreval("\/~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\/")
escreval("/\                                                                             /\")
escreval("\/  => Olá, ",NICK[x])
escreval("/\                                                                             /\")
escreval("\/                Vamos dar inicio ao jogo!                                    \/")
escreval("/\                                                                             /\")
escreval("\/                                                                             \/")
escreval("/\                       /========\                                            /\")
escreval("\/                       |  TEMA: |                                            \/")
escreval("/\                       \========/                                            /\")
escreval("\/           /============\/\/\/\/================================\            \/")
escreval("/\           |    C O N H E C I M E N T O S        G E R A I S    |            /\")
escreval("\/           \============/\/\/\/\================================/            \/")
escreval("\/                                                                             \/")
escreval("/\                                                                             /\")
escreval("\/  => Para continuar o JOGO aperte ENTER                                      \/")
escreval("/\                                                                             /\")
escreval("\/~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\/")
timer (5)
leia (avancar)
limpatela
//1
escreval("\/~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\/")
escreval("/\                                                                           /\")
escreval("\/                               ================                            \/")
escreval("/\       1)Qual das alternativas apresenta os Presidentes do Brasil          /\")
escreval("\/                             em ordem de sucessão?                         \/")
escreval("\/                               ================                            \/")
escreval("/\                                                                           /\")
escreval("\/                  /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\              \/")
escreval("/\                  \ A) Dilma Rousseff, Lula, Jair Bolsonaro /              /\")
escreval("\/                  /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\              \/")
escreval("/\                                                                           /\")
escreval("\/                  \~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/              \/")
escreval("/\                  /B) Fernando Henrique, Itamar Franco, Lula\              /\")
escreval("\/                  \~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/              \/")
escreval("/\                                                                           /\")
escreval("\/                        /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                  \/")
escreval("/\                        \ C) Itamar Franco, Collor, Lula/                  /\")
escreval("\/                        /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                  \/")
escreval("/\                                                                           /\")
escreval("\/                        /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                 \/")
escreval("/\                        \ D) Collor, Lula, Dilma Rousseff/                 /\")
escreval("\/                        /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                 \/")
escreval("/\                                                                           /\")
escreval("\/               \~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/          \/")
escreval("/\               / E) Dilma Rousseff, Michel Temer, Jair Bolsonaro\          /\")
escreval("\/               \~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/          \/")
escreval("/\                                                                           /\")
escreval("\/                             \~~~~~~~~~~~~~~~~~~~~~~/                      \/")
escreval("/\                             / F) Nenhuma das opções\                      /\")
escreval("\/                             \~~~~~~~~~~~~~~~~~~~~~~/                      \/")
escreval("/\                                                                           /\")
escreval("\/                         /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   \/")
escreval("/\                         \Escolha uma das LETRAS acima:/                   /\")
escreval("\/                         /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   \/")
escreval("/\                                                                           /\")
escreval("\/~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\/")
leia(opcao)
se (opcao <> "a") e (opcao <> "b") e (opcao <> "c") e (opcao <> "d") e (opcao <> "e") e (opcao <> "f") entao
 repita
   escreval("                          /~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   ")
   escreval("                          \ Opção não listada, repita: /                   ")
   escreval("                          /~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   ")
   leia(opcao)
  ate (opcao = "a") ou (opcao = "b") ou (opcao = "c") ou (opcao = "d") ou (opcao = "e") ou (opcao = "f")
fimse
se opcao <> "e" entao
  erros[x] := erros[x] + 1
senao
  acertos[x]:= acertos[x] + 1
  pts[x]:= pts[x] + 100
fimse
limpatela
//2
escreval("\/~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\/")
escreval("/\                                                                           /\")
escreval("\/                                ================                           \/")
escreval("/\          2)Chernobyl e Césio-137 fazem parte dos maiores acidentes        /\")
escreval("\/                        nucleares da história dos países?                  \/")
escreval("\/                                ================                           \/")
escreval("/\                                                                           /\")
escreval("\/                            /~~~~~~~~~~~~~~~~~~~~~\                        \/")
escreval("/\                            \ A) Rússia e Espanha /                        /\")
escreval("\/                            /~~~~~~~~~~~~~~~~~~~~~\                        \/")
escreval("/\                                                                           /\")
escreval("\/                             \~~~~~~~~~~~~~~~~~~~/                         \/")
escreval("/\                             /B) Ucrânia e Brasil\                         /\")
escreval("\/                             \~~~~~~~~~~~~~~~~~~~/                         \/")
escreval("/\                                                                           /\")
escreval("\/                         /~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                    \/")
escreval("/\                         \ C) Estados Unidos e Ucrânia/                    /\")
escreval("\/                         /~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                    \/")
escreval("/\                                                                           /\")
escreval("\/                             /~~~~~~~~~~~~~~~~~~\                          \/")
escreval("/\                             \ D) Japão e Brasil/                          /\")
escreval("\/                             /~~~~~~~~~~~~~~~~~~\                          \/")
escreval("/\                                                                           /\")
escreval("\/                            \~~~~~~~~~~~~~~~~~~~~~/                        \/")
escreval("/\                            / E) Taiwan e Alemanha\                        /\")
escreval("\/                            \~~~~~~~~~~~~~~~~~~~~~/                        \/")
escreval("/\                                                                           /\")
escreval("\/                            \~~~~~~~~~~~~~~~~~~~~~~/                       \/")
escreval("/\                            / F) Nenhuma das opções\                       /\")
escreval("\/                            \~~~~~~~~~~~~~~~~~~~~~~/                       \/")
escreval("/\                                                                           /\")
escreval("\/                         /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   \/")
escreval("/\                         \Escolha uma das LETRAS acima:/                   /\")
escreval("\/                         /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   \/")
escreval("/\                                                                           /\")
escreval("\/~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\/")
leia(opcao)
se (opcao <> "a") e (opcao <> "b") e (opcao <> "c") e (opcao <> "d") e (opcao <> "e") e (opcao <> "f") entao
 repita
   escreval("                          /~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   ")
   escreval("                          \ Opção não listada, repita: /                   ")
   escreval("                          /~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   ")
   leia(opcao)
  ate (opcao = "a") ou (opcao = "b") ou (opcao = "c") ou (opcao = "d") ou (opcao = "e") ou (opcao = "f")
fimse
se opcao <> "b" entao
erros[x] := erros[x] + 1
  senao
  acertos[x]:= acertos[x] + 1
  pts[x]:= pts[x] + 100
fimse
limpatela
//3
escreval("\/~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\/")
escreval("/\                                                                           /\")
escreval("\/                                ================                           \/")
escreval("/\               3) De quem é a famosa frase “Penso, logo existo”?           /\")
escreval("\/                                ================                           \/")
escreval("/\                                                                           /\")
escreval("\/                                 /~~~~~~~~~~~\                             \/")
escreval("/\                                 \ A) Platão /                             /\")
escreval("\/                                 /~~~~~~~~~~~\                             \/")
escreval("/\                                                                           /\")
escreval("\/                             \~~~~~~~~~~~~~~~~~~~/                         \/")
escreval("/\                             / B) Galileu Galilei\                         /\")
escreval("\/                             \~~~~~~~~~~~~~~~~~~~/                         \/")
escreval("/\                                                                           /\")
escreval("\/                               /~~~~~~~~~~~~~\                             \/")
escreval("/\                               \ C) Descartes/                             /\")
escreval("\/                               /~~~~~~~~~~~~~\                             \/")
escreval("/\                                                                           /\")
escreval("\/                                /~~~~~~~~~~~~\                             \/")
escreval("/\                                \ D) Sócrates/                             /\")
escreval("\/                                /~~~~~~~~~~~~\                             \/")
escreval("/\                                                                           /\")
escreval("\/                              \~~~~~~~~~~~~~~~~~/                          \/")
escreval("/\                              / E) Francis Bacon\                          /\")
escreval("\/                             \~~~~~~~~~~~~~~~~~~/                          \/")
escreval("/\                                                                           /\")
escreval("\/                           \~~~~~~~~~~~~~~~~~~~~~~/                        \/")
escreval("/\                           / F) Nenhuma das opções\                        /\")
escreval("\/                           \~~~~~~~~~~~~~~~~~~~~~~/                        \/")
escreval("/\                                                                           /\")
escreval("\/                        /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                    \/")
escreval("/\                        \Escolha uma das LETRAS acima:/                    /\")
escreval("\/                        /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                    \/")
escreval("/\                                                                           /\")
escreval("\/~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\/")
leia(opcao)
se (opcao <> "a") e (opcao <> "b") e (opcao <> "c") e (opcao <> "d") e (opcao <> "e") e (opcao <> "f") entao
 repita
   escreval("                          /~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   ")
   escreval("                          \ Opção não listada, repita: /                   ")
   escreval("                          /~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   ")
   leia(opcao)
  ate (opcao = "a") ou (opcao = "b") ou (opcao = "c") ou (opcao = "d") ou (opcao = "e") ou (opcao = "f")
fimse
se opcao <> "c" entao
erros[x] := erros[x] + 1
  senao
  acertos[x]:= acertos[x] + 1
  pts[x]:= pts[x] + 100
fimse
limpatela
//4
escreval("\/~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\/")
escreval("/\                                                                           /\")
escreval("\/                                ================                           \/")
escreval("/\                  4) Quais o menor e o maior país do mundo?                /\")
escreval("\/                                ================                           \/")
escreval("/\                                                                           /\")
escreval("\/                            /~~~~~~~~~~~~~~~~~~~~~~\                       \/")
escreval("/\                            \ A) Vaticano e Rússia /                       /\")
escreval("\/                            /~~~~~~~~~~~~~~~~~~~~~~\                       \/")
escreval("/\                                                                           /\")
escreval("\/                               \~~~~~~~~~~~~~~~~~/                         \/")
escreval("/\                               / B) Nauru e China\                         /\")
escreval("\/                               \~~~~~~~~~~~~~~~~~/                         \/")
escreval("/\                                                                           /\")
escreval("\/                              /~~~~~~~~~~~~~~~~~~~\                        \/")
escreval("/\                              \ C) Mônaco e Canadá/                        /\")
escreval("\/                              /~~~~~~~~~~~~~~~~~~~\                        \/")
escreval("/\                                                                           /\")
escreval("\/                          /~~~~~~~~~~~~~~~~~~~~~~~~~~\                     \/")
escreval("/\                          \ D) Malta e Estados Unidos/                     /\")
escreval("\/                          /~~~~~~~~~~~~~~~~~~~~~~~~~~\                     \/")
escreval("/\                                                                           /\")
escreval("\/                            \~~~~~~~~~~~~~~~~~~~~~~/                       \/")
escreval("/\                            / E) São Marino e Índia\                       /\")
escreval("\/                            \~~~~~~~~~~~~~~~~~~~~~~/                       \/")
escreval("/\                                                                           /\")
escreval("\/                            \~~~~~~~~~~~~~~~~~~~~~~/                       \/")
escreval("/\                            / F) Nenhuma das opções\                       /\")
escreval("\/                            \~~~~~~~~~~~~~~~~~~~~~~/                       \/")
escreval("/\                                                                           /\")
escreval("\/                        /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                    \/")
escreval("/\                        \Escolha uma das LETRAS acima:/                    /\")
escreval("\/                        /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                    \/")
escreval("/\                                                                           /\")
escreval("\/~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\/")
leia(opcao)
se (opcao <> "a") e (opcao <> "b") e (opcao <> "c") e (opcao <> "d") e (opcao <> "e") e (opcao <> "f") entao
 repita
   escreval("                          /~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   ")
   escreval("                          \ Opção não listada, repita: /                   ")
   escreval("                          /~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   ")
   leia(opcao)
  ate (opcao = "a") ou (opcao = "b") ou (opcao = "c") ou (opcao = "d") ou (opcao = "e") ou (opcao = "f")
fimse
se opcao <> "a" entao
erros[x] := erros[x] + 1
  senao
  acertos[x]:= acertos[x] + 1
  pts[x]:= pts[x] + 100
fimse
limpatela
//5
escreval("\/~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\/")
escreval("/\                                                                           /\")
escreval("\/                                ================                           \/")
escreval("/\                 5) Quantas casas decimais tem o número pi?                /\")
escreval("\/                                ================                           \/")
escreval("/\                                                                           /\")
escreval("\/                                   /~~~~~~~~~\                             \/")
escreval("/\                                   \ A) Duas /                             /\")
escreval("\/                                   /~~~~~~~~~\                             \/")
escreval("/\                                                                           /\")
escreval("\/                                 \~~~~~~~~~~~~~/                           \/")
escreval("/\                                 / B) Centenas \                           /\")
escreval("\/                                 \~~~~~~~~~~~~~/                           \/")
escreval("/\                                                                           /\")
escreval("\/                                /~~~~~~~~~~~~~~~\                          \/")
escreval("/\                                \ C)  Infinitas /                          /\")
escreval("\/                                /~~~~~~~~~~~~~~~\                          \/")
escreval("/\                                                                           /\")
escreval("\/                                  /~~~~~~~~~~\                             \/")
escreval("/\                                  \ D) Vinte /                             /\")
escreval("\/                                  /~~~~~~~~~~\                             \/")
escreval("/\                                                                           /\")
escreval("\/                                 \~~~~~~~~~~~~/                            \/")
escreval("/\                                 / E) Milhares\                            /\")
escreval("\/                                 \~~~~~~~~~~~~/                            \/")
escreval("/\                                                                           /\")
escreval("\/                            \~~~~~~~~~~~~~~~~~~~~~~/                       \/")
escreval("/\                            / F) Nenhuma das opções\                       /\")
escreval("\/                            \~~~~~~~~~~~~~~~~~~~~~~/                       \/")
escreval("/\                                                                           /\")
escreval("\/                         /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   \/")
escreval("/\                         \Escolha uma das LETRAS acima:/                   /\")
escreval("\/                         /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   \/")
escreval("/\                                                                           /\")
escreval("\/~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\/")
leia(opcao)
se (opcao <> "a") e (opcao <> "b") e (opcao <> "c") e (opcao <> "d") e (opcao <> "e") e (opcao <> "f") entao
 repita
   escreval("                          /~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   ")
   escreval("                          \ Opção não listada, repita: /                   ")
   escreval("                          /~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   ")
   leia(opcao)
  ate (opcao = "a") ou (opcao = "b") ou (opcao = "c") ou (opcao = "d") ou (opcao = "e") ou (opcao = "f")
fimse
se opcao <> "c" entao
erros[x] := erros[x] + 1
  senao
  acertos[x]:= acertos[x] + 1
  pts[x]:= pts[x] + 100
fimse
limpatela
//6
escreval("\/~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\/")
escreval("/\                                                                           /\")
escreval("\/                                ================                           \/")
escreval("/\                      6) Qual o maior animal terrestre?                    /\")
escreval("\/                                ================                           \/")
escreval("/\                                                                           /\")
escreval("\/                               /~~~~~~~~~~~~~~~~\                          \/")
escreval("/\                               \ A) Baleia Azul /                          /\")
escreval("\/                               /~~~~~~~~~~~~~~~~\                          \/")
escreval("/\                                                                           /\")
escreval("\/                               \~~~~~~~~~~~~~~~/                           \/")
escreval("/\                               / B) Dinossauro \                           /\")
escreval("\/                               \~~~~~~~~~~~~~~~/                           \/")
escreval("/\                                                                           /\")
escreval("\/                             /~~~~~~~~~~~~~~~~~~~~~~\                      \/")
escreval("/\                             \ C) Elefante africano /                      /\")
escreval("\/                             /~~~~~~~~~~~~~~~~~~~~~~\                      \/")
escreval("/\                                                                           /\")
escreval("\/                              /~~~~~~~~~~~~~~~~~~~\                        \/")
escreval("/\                              \ D) Tubarão Branco /                        /\")
escreval("\/                              /~~~~~~~~~~~~~~~~~~~\                        \/")
escreval("/\                                                                           /\")
escreval("\/                                  \~~~~~~~~~~~/                            \/")
escreval("/\                                  / E) Girafa \                            /\")
escreval("\/                                  \~~~~~~~~~~~/                            \/")
escreval("/\                                                                           /\")
escreval("\/                            \~~~~~~~~~~~~~~~~~~~~~~/                       \/")
escreval("/\                            / F) Nenhuma das opções\                       /\")
escreval("\/                            \~~~~~~~~~~~~~~~~~~~~~~/                       \/")
escreval("/\                                                                           /\")
escreval("\/                         /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   \/")
escreval("/\                         \Escolha uma das LETRAS acima:/                   /\")
escreval("\/                         /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   \/")
escreval("/\                                                                           /\")
escreval("\/~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\/")
leia(opcao)
se (opcao <> "a") e (opcao <> "b") e (opcao <> "c") e (opcao <> "d") e (opcao <> "e") e (opcao <> "f") entao
 repita
   escreval("                          /~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   ")
   escreval("                          \ Opção não listada, repita: /                   ")
   escreval("                          /~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   ")
   leia(opcao)
  ate (opcao = "a") ou (opcao = "b") ou (opcao = "c") ou (opcao = "d") ou (opcao = "e") ou (opcao = "f")
fimse
se opcao <> "a" entao
erros[x] := erros[x] + 1
  senao
  acertos[x]:= acertos[x] + 1
  pts[x]:= pts[x] + 100
fimse
limpatela
//7
escreval("\/~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\/")
escreval("/\                                                                           /\")
escreval("\/                                ================                           \/")
escreval("/\          7) Qual o livro mais vendido no mundo a seguir à Bíblia?         /\")
escreval("\/                                ================                           \/")
escreval("/\                                                                           /\")
escreval("\/                            /~~~~~~~~~~~~~~~~~~~~~~~\                      \/")
escreval("/\                            \ A) O Senhor dos Anéis /                      /\")
escreval("\/                            /~~~~~~~~~~~~~~~~~~~~~~~\                      \/")
escreval("/\                                                                           /\")
escreval("\/                               \~~~~~~~~~~~~~~~/                           \/")
escreval("/\                               / B) Dom Quixote\                           /\")
escreval("\/                               \~~~~~~~~~~~~~~~/                           \/")
escreval("/\                                                                           /\")
escreval("\/                             /~~~~~~~~~~~~~~~~~~~~~~\                      \/")
escreval("/\                             \ C) O Pequeno Príncipe/                      /\")
escreval("\/                             /~~~~~~~~~~~~~~~~~~~~~~\                      \/")
escreval("/\                                                                           /\")
escreval("\/                               /~~~~~~~~~~~~~~~~~\                         \/")
escreval("/\                               \ D) Harry Potter /                         /\")
escreval("\/                               /~~~~~~~~~~~~~~~~~\                         \/")
escreval("/\                                                                           /\")
escreval("\/                         \~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/                   \/")
escreval("/\                         / E) Um Conto de Duas Cidades \                   /\")
escreval("\/                         \~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/                   \/")
escreval("/\                                                                           /\")
escreval("\/                            \~~~~~~~~~~~~~~~~~~~~~~/                       \/")
escreval("/\                            / F) Nenhuma das opções\                       /\")
escreval("\/                            \~~~~~~~~~~~~~~~~~~~~~~/                       \/")
escreval("/\                                                                           /\")
escreval("\/                         /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   \/")
escreval("/\                         \Escolha uma das LETRAS acima:/                   /\")
escreval("\/                         /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   \/")
escreval("/\                                                                           /\")
escreval("\/~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\/")
leia(opcao)
se (opcao <> "a") e (opcao <> "b") e (opcao <> "c") e (opcao <> "d") e (opcao <> "e") e (opcao <> "f") entao
 repita
   escreval("                          /~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   ")
   escreval("                          \ Opção não listada, repita: /                   ")
   escreval("                          /~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   ")
   leia(opcao)
  ate (opcao = "a") ou (opcao = "b") ou (opcao = "c") ou (opcao = "d") ou (opcao = "e") ou (opcao = "f")
fimse
se opcao <> "b" entao
erros[x] := erros[x] + 1
  senao
  acertos[x]:= acertos[x] + 1
  pts[x]:= pts[x] + 100
fimse
limpatela
//8
escreval("\/~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\/")
escreval("/\                                                                           /\")
escreval("\/                                ================                           \/")
escreval("/\   8) Qual o nome do presidente do Brasil que ficou conhecido como Jango?  /\")
escreval("\/                                ================                           \/")
escreval("/\                                                                           /\")
escreval("\/                              /~~~~~~~~~~~~~~~~~~\                         \/")
escreval("/\                              \ A) Jânio Quadros /                         /\")
escreval("\/                              /~~~~~~~~~~~~~~~~~~\                         \/")
escreval("/\                                                                           /\")
escreval("\/                              \~~~~~~~~~~~~~~~~~~/                         \/")
escreval("/\                              / B) Jacinto Anjos \                         /\")
escreval("\/                              \~~~~~~~~~~~~~~~~~~/                         \/")
escreval("/\                                                                           /\")
escreval("\/                              /~~~~~~~~~~~~~~~~~~~\                        \/")
escreval("/\                              \ C) Getúlio Vargas /                        /\")
escreval("\/                              /~~~~~~~~~~~~~~~~~~~\                        \/")
escreval("/\                                                                           /\")
escreval("\/                              /~~~~~~~~~~~~~~~~~~~\                        \/")
escreval("/\                              \ D) João Figueiredo/                        /\")
escreval("\/                              /~~~~~~~~~~~~~~~~~~~\                        \/")
escreval("/\                                                                           /\")
escreval("\/                              \~~~~~~~~~~~~~~~~~~~/                        \/")
escreval("/\                              / E)  João Goulart  \                        /\")
escreval("\/                              \~~~~~~~~~~~~~~~~~~~/                        \/")
escreval("/\                                                                           /\")
escreval("\/                            \~~~~~~~~~~~~~~~~~~~~~~/                       \/")
escreval("/\                            / F) Nenhuma das opções\                       /\")
escreval("\/                            \~~~~~~~~~~~~~~~~~~~~~~/                       \/")
escreval("/\                                                                           /\")
escreval("\/                         /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   \/")
escreval("/\                         \Escolha uma das LETRAS acima:/                   /\")
escreval("\/                         /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   \/")
escreval("/\                                                                           /\")
escreval("\/~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\/")
leia(opcao)
se (opcao <> "a") e (opcao <> "b") e (opcao <> "c") e (opcao <> "d") e (opcao <> "e") e (opcao <> "f") entao
 repita
   escreval("                          /~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   ")
   escreval("                          \ Opção não listada, repita: /                   ")
   escreval("                          /~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   ")
   leia(opcao)
  ate (opcao = "a") ou (opcao = "b") ou (opcao = "c") ou (opcao = "d") ou (opcao = "e") ou (opcao = "f")
fimse
se opcao <> "e" entao
erros[x] := erros[x] + 1
  senao
  acertos[x]:= acertos[x] + 1
  pts[x]:= pts[x] + 100
fimse
limpatela
//9
escreval("\/~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\/")
escreval("/\                                                                           /\")
escreval("\/                                ================                           \/")
escreval("/\                            9)Qual a função da ONU?                        /\")
escreval("\/                                ================                           \/")
escreval("/\                                                                           /\")
escreval("\/                  /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\            \/")
escreval("/\                  \ A)  Zelar pela cultura em todas as nações /            /\")
escreval("\/                  /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\            \/")
escreval("/\                                                                           /\")
escreval("\/  \~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/ \/")
escreval("/\  /B) Unir as nações com o objetivo de manter a paz e a segurança mundial\ /\")
escreval("\/  \~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/ \/")
escreval("/\                                                                           /\")
escreval("\/                  /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\               \/")
escreval("/\                  \ C) Financiar países em desenvolvimento /               /\")
escreval("\/                  /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\               \/")
escreval("/\                                                                           /\")
escreval("\/  /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\ \/")
escreval("/\  \D) Regular o funcionamento do sistema financeiro a nível internacional/ /\")
escreval("\/  /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\ \/")
escreval("/\                                                                           /\")
escreval("\/              \~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/         \/")
escreval("/\              / E) Gerenciar acordos de comércio entre os países \         /\")
escreval("\/              \~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/         \/")
escreval("/\                                                                           /\")
escreval("\/                            \~~~~~~~~~~~~~~~~~~~~~~/                       \/")
escreval("/\                            / F) Nenhuma das opções\                       /\")
escreval("\/                            \~~~~~~~~~~~~~~~~~~~~~~/                       \/")
escreval("/\                                                                           /\")
escreval("\/                         /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   \/")
escreval("/\                         \Escolha uma das LETRAS acima:/                   /\")
escreval("\/                         /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   \/")
escreval("/\                                                                           /\")
escreval("\/~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\/")
leia(opcao)
se (opcao <> "a") e (opcao <> "b") e (opcao <> "c") e (opcao <> "d") e (opcao <> "e") e (opcao <> "f") entao
 repita
   escreval("                          /~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   ")
   escreval("                          \ Opção não listada, repita: /                   ")
   escreval("                          /~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   ")
   leia(opcao)
  ate (opcao = "a") ou (opcao = "b") ou (opcao = "c") ou (opcao = "d") ou (opcao = "e") ou (opcao = "f")
fimse
se opcao <> "b" entao
erros[x] := erros[x] + 1
  senao
  acertos[x]:= acertos[x] + 1
  pts[x]:= pts[x] + 100
fimse
limpatela
//10
escreval("\/~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\/")
escreval("/\                                                                           /\")
escreval("\/                                ================                           \/")
escreval("/\     10) Qual das alternativas contém apenas vacinas contra a covid-19?    /\")
escreval("\/                                ================                           \/")
escreval("/\                                                                           /\")
escreval("\/                          /~~~~~~~~~~~~~~~~~~~~~~~~~~~\                    \/")
escreval("/\                          \ A)  VIP/VOP e AstraZeneca /                    /\")
escreval("\/                          /~~~~~~~~~~~~~~~~~~~~~~~~~~~\                    \/")
escreval("/\                                                                           /\")
escreval("\/                          \~~~~~~~~~~~~~~~~~~~~~~~~~~~/                    \/")
escreval("/\                          /B) CoronaVac e AstraZeneca \                    /\")
escreval("\/                          \~~~~~~~~~~~~~~~~~~~~~~~~~~~/                    \/")
escreval("/\                                                                           /\")
escreval("\/                             /~~~~~~~~~~~~~~~~~~~~~\                       \/")
escreval("/\                             \ C) ) HPV e BioNTech /                       /\")
escreval("\/                             /~~~~~~~~~~~~~~~~~~~~~\                       \/")
escreval("/\                                                                           /\")
escreval("\/                     /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                \/")
escreval("/\                     \ D) Pentavalente (DTPa) e Sputnik V /                /\")
escreval("\/                     /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                \/")
escreval("/\                                                                           /\")
escreval("\/                          \~~~~~~~~~~~~~~~~~~~~~~~~~~/                     \/")
escreval("/\                          / E) Rotavírus e CoronaVac \                     /\")
escreval("\/                          \~~~~~~~~~~~~~~~~~~~~~~~~~~/                     \/")
escreval("/\                                                                           /\")
escreval("\/                            \~~~~~~~~~~~~~~~~~~~~~~/                       \/")
escreval("/\                            / F) Nenhuma das opções\                       /\")
escreval("\/                            \~~~~~~~~~~~~~~~~~~~~~~/                       \/")
escreval("/\                                                                           /\")
escreval("\/                         /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   \/")
escreval("/\                         \Escolha uma das LETRAS acima:/                   /\")
escreval("\/                         /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   \/")
escreval("/\                                                                           /\")
escreval("\/~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\/")
leia(opcao)
se (opcao <> "a") e (opcao <> "b") e (opcao <> "c") e (opcao <> "d") e (opcao <> "e") e (opcao <> "f") entao
 repita
   escreval("                          /~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   ")
   escreval("                          \ Opção não listada, repita: /                   ")
   escreval("                          /~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   ")
   leia(opcao)
  ate (opcao = "a") ou (opcao = "b") ou (opcao = "c") ou (opcao = "d") ou (opcao = "e") ou (opcao = "f")
fimse
se opcao <> "b" entao
erros[x] := erros[x] + 1
  senao
  acertos[x]:= acertos[x] + 1
  pts[x]:= pts[x] + 100
fimse
limpatela
fimprocedimento
//==================================JOGO=================================
//==================================PONTUACAO=================================
procedimento pontuacao
inicio
timer (5)
escreval("                                                                 ")
escreval("                 ___  ___  _  _ _____ _   _  _   ___  /\/|___    ")
escreval("                | _ \/ _ \| \| |_   _| | | |/_\ / __||/\ / _ \   ")
escreval("                |  _| (_) | .` | | | | |_| / _ | (__ /--| (_) |  ")
escreval("                |_|  \___/|_|\_| |_|  \___/_/ \_\___/_/\_\___/   ")
escreval("                                                 )_)             ")
escreval("")
escreval("               =>",nick[x]," jogador ",x," você teve o seguinte desempenho       ")
escreval("                      ______________________________________                 ")
escreval("                     |                                                       ")
escreval("                     |   Você obteve:",acertos[x]," Acertos                  ")
escreval("                     |   Você obteve:",erros[x]," Erros                      ")
escreval("                     |______________________________________                 ")
escreval("                                                                             ")
escreval("                        PONTUÇÃO TOTAL: ",pts[x]," DE 1000                   ")
escreval("                                                                             ")
escreval("                  Pressione ENTER para VERIFICAR MAIS PONTUAÇÕES             ")
leia(avancar)
pontuacoes
fimprocedimento
//==================================PONTUACAO=================================
//==================================PONTUAÇÕES GERAIS=================================
procedimento pontuacoes
inicio
limpatela
escreval("/\~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/\")
escreval("\/                                                                           \/")
escreval("/\                                 ================                          /\")
escreval("\/                                    PONTUAÇÕES                             \/")
escreval("/\                            DIGITE O NUMERO DO JOGADOR                     /\")
escreval("\/                                 ================                          \/")
escreval("/\                                                                           /\")
escreval("\/                         /~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                    \/")
escreval("/\                         \        1 - JOGADOR         /                    /\")
escreval("\/                         /~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                    \/")
escreval("/\                                                                           /\")
escreval("\/                         \~~~~~~~~~~~~~~~~~~~~~~~~~~~~/                    \/")
escreval("/\                         /        2 - JOGADOR         \                    /\")
escreval("\/                         \~~~~~~~~~~~~~~~~~~~~~~~~~~~~/                    \/")
escreval("/\                                                                           /\")
escreval("\/                         /~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                    \/")
escreval("/\                         \        3 - JOGADOR         /                    /\")
escreval("\/                         /~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                    \/")
escreval("/\                                                                           /\")
escreval("\/                         \~~~~~~~~~~~~~~~~~~~~~~~~~~~~/                    \/")
escreval("/\                         /        4 - JOGADOR         \                    /\")
escreval("\/                         /~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                    \/")
escreval("/\                                                                           /\")
escreval("\/                         /~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                    \/")
escreval("/\                         \        5 - JOGADOR         /                    /\")
escreval("\/                         /~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                    \/")
escreval("/\                                                                           /\")
escreval("\/                         \~~~~~~~~~~~~~~~~~~~~~~~~~~~~/                    \/")
escreval("/\                         /        6 - JOGADOR         \                    /\")
escreval("\/                         \~~~~~~~~~~~~~~~~~~~~~~~~~~~~/                    \/")
escreval("/\                                                                           /\")
escreval("\/                         \~~~~~~~~~~~~~~~~~~~~~~~~~~~~/                    \/")
escreval("/\                         /          7 - MENU          \                    /\")
escreval("\/                         \~~~~~~~~~~~~~~~~~~~~~~~~~~~~/                    \/")
escreval("/\                                                                           /\")
escreval("\/~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\/")
 leia (jog)
se (jog <> 1) e (jog <> 2) e (jog <> 3) e (jog <> 4) e (jog <> 5) e (jog <> 6) e (jog <> 7) entao
repita
   escreval("                   /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\            ")
   escreval("                   \    Comando inválido, Digite novamente    /            ")
   escreval("                   /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\            ")
   leia (jog)
ate (jog = 1) ou (jog = 2) ou (jog = 3) ou (jog = 4) ou (jog = 5) ou (jog = 6) ou (jog = 7)
fimse
se jog = 7 entao
menu
senao
x := jog
limpatela
pontuacao
fimprocedimento
//==================================PONTUACOES GERAIS=================================
//==================================HACK MAXIMO=================================
procedimento maximo
inicio
mudacor ("amarelo","fundos")
mudacor ("preto","frente")
timer(5)
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval ("O")
   escreval ("¯\_('-')_/¯")
limpatela
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval (" O")
   escreval ("")
   escreval ("\_('-')_/¯")
limpatela
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval ("  O")
   escreval ("")
   escreval ("")
   escreval ("_('-')_/¯")
limpatela
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval ("   O")
   escreval ("")
   escreval ("")
   escreval ("")
   escreval ("('-')_/¯")
limpatela
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval ("    O")
   escreval ("")
   escreval ("")
   escreval ("")
   escreval ("")
   escreval ("'-')_/¯")
timer(10)
limpatela
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval ("     O")
   escreval ("")
   escreval ("")
   escreval ("")
   escreval ("")
   escreval ("")
   escreval ("-')_/¯")
limpatela
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval ("      O")
   escreval ("")
   escreval ("")
   escreval ("")
   escreval ("")
   escreval ("")
   escreval ("")
   escreval ("')_/¯")
limpatela
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval ("       O")
   escreval ("")
   escreval ("")
   escreval ("")
   escreval ("")
   escreval ("")
   escreval ("")
   escreval ("")
   escreval (")_/¯")
limpatela
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval ("        O")
   escreval ("")
   escreval ("")
   escreval ("")
   escreval ("")
   escreval ("")
   escreval ("")
   escreval ("")
   escreval ("")
   escreval ("_/¯")
limpatela
escreval("")
escreval("")
escreval("")
escreval("")
escreval ("         O")
   escreval ("")
   escreval ("")
   escreval ("")
   escreval ("")
   escreval ("")
   escreval ("")
   escreval ("")
   escreval ("")
   escreval ("")
   escreval ("/¯")
limpatela
escreval("")
escreval("")
escreval("")
escreval ("          O")
   escreval ("")
   escreval ("")
   escreval ("")
   escreval ("")
   escreval ("")
   escreval ("")
   escreval ("")
   escreval ("")
   escreval ("")
   escreval ("")
   escreval ("¯")
limpatela
timer (60)
escreval("")
escreval("")
escreval ("           O")
limpatela
escreval("")
escreval ("            O")
limpatela

escreval ("             O")
limpatela

escreval ("              O")
limpatela

escreval ("")
escreval ("               O")
limpatela
escreval ("")
escreval ("")
escreval ("                O")
limpatela
escreval ("")
escreval ("")
escreval ("")
escreval ("                 O")
limpatela
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("                  O")
timer(35)
limpatela
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("                   O")
limpatela
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("                    O")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("                        \")
limpatela
timer(25)
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("                     O")
escreval ("")
escreval ("")
escreval ("")
escreval ("                        \")
limpatela
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("                      O")
escreval ("")
escreval ("")
escreval ("                        \/")
limpatela
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("                       O")
escreval ("")
escreval ("                        \/")
limpatela
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("                        O")
escreval ("                        \/")
limpatela
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
timer(60)
escreval ("                        \O/")
timer (20)
limpatela
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("                        \/")
escreval ("                         O")
limpatela
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("                        \/")
escreval ("")
escreval ("                          O")
limpatela
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("                        \/")
escreval ("")
escreval ("")
escreval ("                           O")
limpatela
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("                        \/")
escreval ("")
escreval ("")
escreval ("")
escreval ("                            O")
limpatela
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("                        \/")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("                              O")
limpatela
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("                        \/")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("                               O")
limpatela
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("                        \/")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("")
escreval ("                                O")
limpatela
escreval ("          ___   ___ ___ ___    _____         _             ")
escreval ("         |_  | |   |   |   |  |  _  |___ ___| |_ ___ ___   ")
escreval ("          _| |_| | | | | | |  |   __| . |   |  _| . |_ -|  ")
escreval ("         |_____|___|___|___|  |__|  |___|_|_|_| |___|___|  ")
escreval ("")
escreval ("                          )                  )           ")
escreval ("                       ( /(  (       (    ( /(           ")
escreval ("                       )\()) )\      )\   )\())          ")
escreval ("                      ((_)((((_)(  (((_)|((_)\           ")
escreval ("                       _((_)\ _ )\ )\___|_ ((_)          ")
escreval ("                      | || (_)_\(_((/ __| |/ /           ")
escreval ("                      | __ |/ _ \  | (__  ' <            ")
escreval ("                      |_||_/_/ \_\  \___|_|\_\           ")
escreval ("")
escreval ("      /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\       ")
escreval ("      \       Você descobriu o hack e recebeu o máximo      /       ")
escreval ("      \         de pontuação para todos os jogadores        /       ")
escreval ("      /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\       ")
escreval ("")
escreval ("      Pressione ENTER para voltar ao menu inicial")
timer (0)
para x de 1 ate 6 faca
pts[x]    := 0
acertos[x]:= 0
pts[x]    := pts[x] + 1000
acertos[x]:= acertos[x] + 10
erros[x]  := 0
nick[x]   :=""
fimpara
leia (avancar)
mudacor ("preto","fundos")
mudacor ("branco","frente")
menu
fimprocedimento
//==================================HACK MAXIMO=================================
//==================================MENU INICIAL=================================
procedimento menu
var avancar,start,ini: caracter
inicio
limpatela
timer (10)
escreval("\/~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\/")
escreval("/\                                                                         /\")
escreval("\/                               ================                          \/")
escreval("/\                                 MENU INICIAL                            /\")
escreval("\/                               ================                          \/")
escreval("/\                                                                         /\")
escreval("\/                       /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   \/")
escreval("/\                       \  1 - Inciar um novo jogo    /                   /\")
escreval("\/                       /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   \/")
escreval("/\                                                                         /\")
escreval("\/                       \~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/                   \/")
escreval("/\                       /  2 -  Verificar pontuação   \                   /\")
escreval("\/                       \~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/                   \/")
escreval("/\                                                                         /\")
escreval("\/                       /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   \/")
escreval("/\                       \  3 -    Configurações       /                   /\")
escreval("\/                       /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   \/")
escreval("/\                                                                         /\")
escreval("\/                       /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   \/")
escreval("/\                       \  4 -       Ajuda            /                   /\")
escreval("\/                       /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   \/")
escreval("/\                                                                         /\")
escreval("\/                       \~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/                   \/")
escreval("/\                       /  5 -        Sair            \                   /\")
escreval("\/                       \~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/                   \/")
escreval("/\                                                                         /\")
escreval("\/                                                                         \/")
escreval("/\                       /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   /\")
escreval("\/                       \Escolha uma das opções acima:/                   \/")
escreval("/\                       /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                   /\")
escreval("\/                                                                         \/")
escreval("/\~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/\")
escreval("")
timer (0)
leia (ini)
//INICIAR JOGO---------------
escolha ini
caso "1"
timer (5)
limpatela
   escreval("           /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\    ")
   escreval("           |Iniciando uma nova pardida, você perderá os dados da antiga|    ")
   escreval("           \~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/    ")
   escreval ("")
   escreval("                             /~~~~~~~~~~~~~~~~~~~~~~~~\                   ")
   escreval("                             | Deseja iniciar? S ou N |                   ")
   escreval("                             \~~~~~~~~~~~~~~~~~~~~~~~~/                   ")
   leia (start)
   se (start <> "s") e (start <> "n") entao
      repita
         escreval("                             /~~~~~~~~~~~~~~~~~~~~~~~~\                   ")
         escreval("                             |Comando inválido, repita|                   ")
         escreval("                             \~~~~~~~~~~~~~~~~~~~~~~~~/                   ")
         leia (start)
      ate (start = "s") ou (start = "n")
   fimse
se start = "n" entao
   menu
senao
timer (0)
para x de 1 ate 6 faca
acertos[x]:= 0
erros[x]  := 0
pts[x]    := 0
nick[x]   := ""
fimpara
timer (5)
escreval("                   /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                ")
escreval("                   | Digite a quantidade de jogadores. Máximo 6 |                ")
escreval("                   \~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/                ")
leia (qt)
se (qt <> 6) e (qt <> 5) e (qt <> 4) e (qt <> 3) e (qt <> 2) e (qt <> 1) entao
   repita
      escreval("                     /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\                ")
      escreval("                     |   Valor incompatível, digite novamente   |                ")
      escreval("                     \~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/                ")
      leia (qt)
   ate (qt = 6) ou (qt = 5) ou (qt = 4) ou (qt = 3) ou (qt = 2) ou (qt = 1)
fimse
para x de 1 ate qt faca
jogo
fimpara
pontuacoes
//INICIAR JOGO---------------
caso "2"
   timer (5)
   limpatela
   escreval ("")
   escreval ("/\~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/\")
   escreval ("\/                                                                           \/")
   escreval ("/\                               /====================\                      /\")
   escreval ("\/                               |Verificar Pontuações|                      \/")
   escreval ("/\                               \====================/                      /\")
   escreval ("\/                                                                           \/")
   escreval ("/\                          -> Para continuar aperte ENTER.                  /\")
   escreval ("\/                                                                           \/")
   escreval ("/\~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/\")
    leia(avancar)
   pontuacoes
//CONFIGURAÇOES---------------
caso "3"
   timer (5)
   limpatela
   escreval ("")
   escreval ("/\~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/\")
   escreval ("\/                                                                           \/")
   escreval ("/\                                  /=============\                          /\")
   escreval ("\/                                  |Configurações|                          \/")
   escreval ("/\                                  \=============/                          /\")
   escreval ("\/                                                                           \/")
   escreval ("/\                          -> Para continuar aperte ENTER.                  /\")
   escreval ("\/                                                                           \/")
   escreval ("/\~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/\")
   leia(avancar)
   cor
//AJUDA----------------------
caso "4"
   timer (5)
   limpatela
   escreval ("")
   escreval ("/\~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/\")
   escreval ("\/                                                                           \/")
   escreval ("/\                                  /============\                           /\")
   escreval ("\/                                  |    AJUDA   |                           \/")
   escreval ("/\                                  \============/                           /\")
   escreval ("\/                                                                           \/")
   escreval ("/\                          -> Para continuar aperte ENTER.                  /\")
   escreval ("\/~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\/")
   leia(avancar)
   ajuda
//SAIR------------------------
caso "5"
   limpatela
   timer (100)
   mudacor ("amarelo","fundos")
   mudacor ("vermelho","frente")
   escreval("")
   escreval("    (    (      *      (                   )           )   ")
   escreval("    )\ ) )\ ) (  `     )\ )             ( /( (      ( /(   ")
   escreval("   (()/((()/( )\))(   (()/(  (       (  )\()))\ )   )\())  ")
   escreval("    /(_))/(_)((_)()\   /(_)) )\      )\((_)\(()/(  ((_)\   ")
   escreval("   (_))_(_)) (_()((_) (_))_ ((_)    ((_) ((_)/(_))_  ((_)  ")
   escreval("   | |_ |_ _||  \/  |  |   \| __|  _ | |/ _ (_)) __|/ _ \  ")
   escreval("   | __| | | | |\/| |  | |) | _|  | || | (_) || (_ | (_) | ")
   escreval("   |_|  |___||_|  |_|  |___/|___|  \__/ \___/  \___|\___/  ")
   escreval("")
   escreval("               )      (   (                 (        )      ")
   escreval("         ( /(   (  )\ ))\ ) (       (    )\ )  ( /(         ")
   escreval("         )\())( )\(()/(()/( )\ )    )\  (()/(  )\())        ")
   escreval("        ((_)\ )((_)/(_)/(_)(()/( ((((_)( /(_))((_)\         ")
   escreval("          ((_((_)_(_))(_))  /(_))_)\ _ )(_))_   ((_)        ")
   escreval("         / _ \| _ | _ |_ _|(_)) __(_)_\(_|   \ / _ \        ")
   escreval("        | (_) | _ |   /| |   | (_ |/ _ \ | |) | (_) |       ")
   escreval("         \___/|___|_|_|___|   \___/_/ \_\|___/ \___/        ")
   timer (300)
   escreval("")
   escreval("")
   escreval("")
fimalgoritmo
caso "hack"
    maximo
outrocaso
   repita
      menu
   ate (ini = "1") ou (ini = "2") ou (ini = "3") ou (ini = "4") ou (ini = "5") ou (ini = "hack")
fimescolha
fimprocedimento
//==================================MENU INICIAL=================================
//
//
//
//
//
//==================================LOGO=================================
timer (10)
mudacor ("amarelo","fundos")
mudacor ("preto","frente")
escreval("\/~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\/")
escreval("/\                                                                               /\")
escreval("\/               /  ============================================== \             \/")
escreval("/\               \                                                 /             /\")
escreval("\/               /    _______           _______  _______ _________ \             \/")
escreval("/\               \   (  ___  )|\     /|(  ____ \(  ____ \\__   __/ /             /\")
escreval("\/               /   | (   ) || )   ( || (    \/| (    \/   ) (    \             \/")
escreval("/\               \   | |   | || |   | || (__    | (_____    | |    /             /\")
escreval("\/               /   | |   | || |   | ||  __)   (_____  )   | |    \             \/")
escreval("/\               \   | | /\| || |   | || (            ) |   | |    /             /\")
escreval("\/               /   | (_\ \ || (___) || (____/\/\____) |   | |    \             \/")
escreval("/\               \   (____\/_)(_______)(_______/\_______)   )_(    /             /\")
escreval("\/               /                                                 \             \/")
escreval("/\               \                                                 /             /\")
escreval("\/               /               _______ _______ __   __ _______   \             \/")
escreval("/\               \              |       |   _   |  |_|  |       |  /             /\")
escreval("\/               /              |    ___|  |_|  |       |    ___|  \             \/")
escreval("/\               \              |   | __|       |       |   |___   /             /\")
escreval("\/               /              |   ||  |       |       |    ___|  \             \/")
escreval("/\               \              |   |_| |   _   | ||_|| |   |___   /             /\")
escreval("\/               /              |_______|__| |__|_|   |_|_______|  \             \/")
escreval("/\               \                                                 /             /\")
escreval("\/               /                                                 \             \/")
escreval("/\               \                                                 /             /\")
escreval("\/               /                   Gustavo Manuel                \             \/")
escreval("/\               \ =============================================== /             /\")
escreval("\/                                                                               \/")
escreval("\/                                                                               /\")
escreval("/\                                SEJAM BEM-VINDOS!!                             \/")
escreval("\/                                                                               /\")
escreval("/\                                                                               \/")
escreval("\/                       -> Para iniciar o JOGO aperte ENTER.                    /\")
escreval("/\                                                                               \/")
escreval("\/~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/\")
leia(avancar)
mudacor ("preto","fundos")
mudacor ("branco","frente")
limpatela
//==================================LOGO=================================
menu
//
Fimalgoritmo