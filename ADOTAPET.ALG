Algoritmo "AdotaPet"

tipo
   Animal = registro
      nome: caractere
      especie: caractere
      sexo: caractere
      idade: caractere
      vacina: caractere
      castrado: caractere
      adocao: caractere
   fimregistro

   Adotante = registro
      nome: caractere
      nascimento: caractere
      cell: caractere
      documento: caractere
      endereco: caractere
   fimregistro

Var
   encontrou, disponivel, adotado, existeAdotado: logico
   opcao, pesquisa, N1, N2: caractere
   I, quantidade, opcaoEdicao, opcaoEdicao2: inteiro

   animal: vetor[1..100] de Animal
   adotante: vetor[1..100] de Adotante

procedimento cabecalho()
inicio
   escreval("=======================")
   escreval("   A D O T A   P E T   ")
   escreval("=======================")
fimprocedimento

procedimento menu()
inicio
   escreval("        M E N U        ")
   escreval("-----------------------")
   escreval("1 - Cadastrar animal")
   escreval("2 - Listar animal")
   escreval("3 - Procurar animal")
   escreval("4 - Mostrar disponíveis")
   escreval("5 - Marcar como adotado")
   escreval("6 - Listar adotados")
   escreval("0 - Sair")
   escreval()
fimprocedimento

procedimento cadastroAnimal()
inicio
   escreval("CADASTRO")
   escreval("-----------------------")
   escreval()

   repita
      escreva("1 - Nome do animal: ")
      leia(animal[quantidade].nome)

      se (animal[quantidade].nome = "") entao
         escreval("Nome não pode ficar em branco!")
      fimse

   ate (animal[quantidade].nome <> "")

   repita
      escreva("2 - Espécie: ")
      leia(animal[quantidade].especie)

      se (animal[quantidade].especie = "") entao
         escreval("Espécie não pode ficar em branco!")
      fimse

   ate (animal[quantidade].especie <> "")

   repita
      escreva("3 - Sexo: ")
      leia(animal[quantidade].sexo)

      se (animal[quantidade].sexo = "") entao
         escreval("Sexo não pode ficar em branco!")
      fimse

   ate (animal[quantidade].sexo <> "")

   repita
      escreva("4 - Idade: ")
      leia(animal[quantidade].idade)

      se (animal[quantidade].idade = "") entao
         escreval()
         escreval("Idade não pode ficar em branco!")
      fimse

   ate (animal[quantidade].idade <> "")

   escreval()
   escreval("Responda com Sim ou Não")
   escreval()

   repita
      escreva("5 - Vacinado [S/N]: ")
      leia(animal[quantidade].vacina)

      se (animal[quantidade].vacina <> "sim") e (animal[quantidade].vacina <> "Sim") e (animal[quantidade].vacina <> "SIM") e (animal[quantidade].vacina <> "s") e (animal[quantidade].vacina <> "S") e (animal[quantidade].vacina <> "nao") e (animal[quantidade].vacina <> "Nao") e (animal[quantidade].vacina <> "NAO") e (animal[quantidade].vacina <> "n") e (animal[quantidade].vacina <> "N") e (animal[quantidade].vacina <> "") e (animal[quantidade].vacina <> "não") e (animal[quantidade].vacina <> "Não") e (animal[quantidade].vacina <> "NÃO") entao
         escreval()
         escreval("Digite uma resposta válida: sim ou não")
         escreval()
      fimse

   ate (animal[quantidade].vacina = "sim") ou (animal[quantidade].vacina = "Sim") ou (animal[quantidade].vacina = "SIM") ou (animal[quantidade].vacina = "s") ou (animal[quantidade].vacina = "S") ou (animal[quantidade].vacina = "nao") ou (animal[quantidade].vacina = "Nao") ou (animal[quantidade].vacina = "NAO") ou (animal[quantidade].vacina = "n") ou (animal[quantidade].vacina = "N") ou (animal[quantidade].vacina = "não") ou (animal[quantidade].vacina = "Não") ou (animal[quantidade].vacina = "NÃO")

   repita
      escreva("6 - Castrado [S/N]: ")
      leia(animal[quantidade].castrado)

      se (animal[quantidade].castrado <> "sim") e (animal[quantidade].castrado <> "Sim") e (animal[quantidade].castrado <> "SIM") e (animal[quantidade].castrado <> "s") e (animal[quantidade].castrado <> "S") e (animal[quantidade].castrado <> "nao") e (animal[quantidade].castrado <> "Nao") e (animal[quantidade].castrado <> "NAO") e (animal[quantidade].castrado <> "n") e (animal[quantidade].castrado <> "N") e (animal[quantidade].castrado <> "") e (animal[quantidade].castrado <> "não") e (animal[quantidade].castrado <> "Não") e (animal[quantidade].castrado <> "NÃO") entao
         escreval()
         escreval("Digite uma resposta válida: sim ou não")
         escreval()
      fimse

   ate (animal[quantidade].castrado = "sim") ou (animal[quantidade].castrado = "Sim") ou (animal[quantidade].castrado = "SIM") ou (animal[quantidade].castrado = "s") ou (animal[quantidade].castrado = "S") ou (animal[quantidade].castrado = "nao") ou (animal[quantidade].castrado = "Nao") ou (animal[quantidade].castrado = "NAO") ou (animal[quantidade].castrado = "n") ou (animal[quantidade].castrado = "N") ou (animal[quantidade].castrado = "não") ou (animal[quantidade].castrado = "Não") ou (animal[quantidade].castrado = "NÃO")

   repita
      escreva("7 - Disponível para adoção [S/N]: ")
      leia(animal[quantidade].adocao)

      se (animal[quantidade].adocao <> "sim") e (animal[quantidade].adocao <> "Sim") e (animal[quantidade].adocao <> "SIM") e (animal[quantidade].adocao <> "s") e (animal[quantidade].adocao <> "S") e (animal[quantidade].adocao <> "nao") e (animal[quantidade].adocao <> "Nao") e (animal[quantidade].adocao <> "NAO") e (animal[quantidade].adocao <> "n") e (animal[quantidade].adocao <> "N") e (animal[quantidade].adocao <> "não") e (animal[quantidade].adocao <> "Não") e (animal[quantidade].adocao <> "NÃO") e (animal[quantidade].adocao <> "") entao
         escreval()
         escreval("Digite uma resposta válida: sim ou não")
         escreval()
      fimse

   ate (animal[quantidade].adocao = "sim") ou (animal[quantidade].adocao = "Sim") ou (animal[quantidade].adocao = "SIM") ou (animal[quantidade].adocao = "s") ou (animal[quantidade].adocao = "S") ou (animal[quantidade].adocao = "nao") ou (animal[quantidade].adocao = "Nao") ou (animal[quantidade].adocao = "NAO") ou (animal[quantidade].adocao = "n") ou (animal[quantidade].adocao = "N") ou (animal[quantidade].adocao = "não") ou (animal[quantidade].adocao = "Não") ou (animal[quantidade].adocao = "NÃO")

   limpatela

   repita

      escreval("Registro do animal")
      escreval("--------------------")
      escreval("1 - Nome do animal: ", animal[quantidade].nome)
      escreval("2 - Espécie: ", animal[quantidade].especie)
      escreval("3 - Sexo: ", animal[quantidade].sexo)
      escreval("4 - Idade: ", animal[quantidade].idade)
      escreval("5 - Vacinado [S/N]: ", animal[quantidade].vacina)
      escreval("6 - Castrado [S/N]: ", animal[quantidade].castrado)
      escreval("7 - Disponível para adoção [S/N]: ", animal[quantidade].adocao)
      escreval()
      escreva("Digite o número do campo para editar, ou 0 para confirmar: ")
      leia(opcaoEdicao)

      limpatela

      escolha (opcaoEdicao)

         caso 1
            escreva("1 - Nome do animal: ")
            leia(animal[quantidade].nome)

         caso 2
            escreva("2 - Espécie: ")
            leia(animal[quantidade].especie)

         caso 3
            escreva("3 - Sexo: ")
            leia(animal[quantidade].sexo)

         caso 4
            escreva("4 - Idade: ")
            leia(animal[quantidade].idade)

         caso 5
            escreva("5 - Vacinado [S/N]: ")
            leia(animal[quantidade].vacina)

         caso 6
            escreva("6 - Castrado [S/N]: ")
            leia(animal[quantidade].castrado)

         caso 7
            escreva("7 - Disponível para adoção [S/N]: ")
            leia(animal[quantidade].adocao)

         caso 0
            escreva("0 - Confirmar")

      fimescolha

   ate (opcaoEdicao = 0)

   limpatela

fimprocedimento

procedimento cadastroAdotante()
inicio
      escreval("CADASTRO DO ADOTANTE")
      escreval("---------------------------------")
      escreval("cadastro de controle obrigatório!")
      escreval("---------------------------------")
      escreval()

        repita
          escreva("1 - Nome: ")
          leia(adotante[I].nome)

            se (adotante[I].nome = "") entao
              escreval("Nome não pode ficar em branco!")
            fimse

        ate(adotante[I].nome <> "")

         repita
          escreva("2 - Data de nascimento: ")
          leia(adotante[I].nascimento)

            se (adotante[I].nascimento = "") entao
              escreval("Data de nascimento não pode ficar em branco!")
            fimse

        ate(adotante[I].nascimento <> "")

        repita
          escreva("3 - Número de contato: ")
          leia(adotante[I].cell)

            se (adotante[I].cell = "") entao
              escreval("Número de contato não pode ficar em branco!")
            fimse

        ate(adotante[I].cell <> "")

        repita
          escreva("4 - Documento [RG/CPF]: ")
          leia(adotante[I].documento)

            se (adotante[I].documento = "") entao
              escreval("Documento não pode ficar em branco!")
            fimse

        ate(adotante[I].documento <> "")

        repita
          escreva("5 - Endereço: ")
          leia(adotante[I].endereco)

            se (adotante[I].endereco = "") entao
              escreval("Endereço não pode ficar em branco!")
            fimse

        ate(adotante[I].endereco <> "")

        limpatela

        repita

           escreval("Registro do adotante")
           escreval("--------------------")
           escreval("1 - Nome: ", adotante[I].nome)
           escreval("2 - Data de nascimento: ", adotante[I].nascimento)
           escreval("3 - Número de contato: ", adotante[I].cell)
           escreval("4 - Documento [RG/CPF]: ", adotante[I].documento)
           escreval("5 - Endereço: ", adotante[I].endereco)
           escreval()
           escreva("Digite o número do campo para editar, ou 0 para confirmar: ")
           leia(opcaoEdicao2)

           limpatela

           escolha (opcaoEdicao2)

              caso 1
                 escreva("1 - Nome: ")
                 leia(adotante[I].nome)

              caso 2
                 escreva("2 - Data de nascimento: ")
                 leia(adotante[I].nascimento)

              caso 3
                 escreva("3 - Número de contato: ")
                 leia(adotante[I].cell)

              caso 4
                 escreva("4 - Documento [RG/CPF]: ")
                 leia(adotante[I].documento)

              caso 5
                 escreva("5 - Endereço: ")
                 leia(adotante[I].endereco)

              caso 0
                 escreva("0 - Confirmar")

           fimescolha

        ate (opcaoEdicao2 = 0)

        limpatela

        escreval("Adotante registrado com sucesso!")
        escreval()

fimprocedimento

procedimento infoAnimal()
inicio
   escreval("Nome: ", animal[I].nome)
   escreval("Espécie: ", animal[I].especie)
   escreval("Sexo: ", animal[I].sexo)
   escreval("Idade: ", animal[I].idade)
   escreval("Vacinado [S/N]: ", animal[I].vacina)
   escreval("Castrado [S/N]: ", animal[I].castrado)
   escreval("Disponível [S/N]: ", animal[I].adocao)
fimprocedimento

procedimento infoAdotante()
inicio
   escreval("Nome do adotante: ", adotante[I].nome)
   escreval("Data de nascimento: ", adotante[I].nascimento)
   escreval("Contato: ", adotante[I].cell)
   escreval("Documento: ", adotante[I].documento)
   escreval("Endereço: ", adotante[I].endereco)
fimprocedimento

Inicio
   opcao <- "-1"
   quantidade <- 0

   enquanto (opcao <> "0") faca
      cabecalho()
      menu()

      escreval()
      escreva("Digite a opção que deseja: ")
      leia(opcao)
      limpatela

      escolha (opcao)

         caso "1"

            se (quantidade = 100) entao

               escreval("Limite de animais atingido!")

            senao

               quantidade <- quantidade +1
               cabecalho()
               cadastroAnimal()
               escreval()
               escreval("Animal Cadastrado!")

               escreval()
               escreva("Pressione ENTER para voltar ao menu...")
               leia(N1)

               limpatela

            fimse

         caso "2"

            cabecalho()
            escreval("LISTA DE ANIMAIS")
            escreval("-----------------------")

            para I de 1 ate quantidade faca

               infoAnimal()
               escreval("-----------------------")
               escreval()

            fimpara

            escreval()
            escreva("Pressione ENTER para voltar ao menu...")
            leia(N1)

            limpatela

         caso "3"

            cabecalho()
            escreval("PESQUISA")
            escreval("-----------------------")
            escreva("Nome do animal: ")
            leia(pesquisa)
            encontrou <- falso

            para I de 1 ate quantidade faca

              se (pesquisa = animal[I].nome) entao
                  escreval()
                  escreval("-----------------------")
                  escreval(" DADOS DO ANIMAL")
                  escreval("-----------------------")
                  infoAnimal()

                  encontrou <- verdadeiro

                  interrompa

               fimse

            fimpara

            se encontrou = falso entao

               escreval()
               escreval("Animal não encontrado.")

            fimse

            escreval()
            escreva("Pressione ENTER para voltar ao menu...")
            leia(N1)

            limpatela

         caso "4"

            cabecalho()
            escreval("DISPONÍVEIS")
            escreval("-----------------------")
            disponivel <- falso

            para I de 1 ate quantidade faca

               se (animal[I].adocao = "S") ou (animal[I].adocao = "s") ou (animal[I].adocao = "SIM") ou (animal[I].adocao = "Sim") ou (animal[I].adocao = "sim") entao

                  infoAnimal()
                  escreval("-----------------------")

                  disponivel <- verdadeiro

               fimse

            fimpara

            se disponivel = falso entao

               escreval()
               escreval("Nenhum animal disponível para adoção.")

            fimse

            escreval()
            escreva("Pressione ENTER para voltar ao menu...")
            leia(N1)
            limpatela

         caso "5"

            cabecalho()
            escreval("CONFIRMAR ADOÇÃO")
            escreval("-----------------------")
            escreva("Nome do animal: ")
            leia(N2)
            adotado <- falso
            encontrou <- falso

            para I de 1 ate quantidade faca

              se (N2 = animal[I].nome) entao

                encontrou <- verdadeiro

                se (animal[I].adocao = "N") ou (animal[I].adocao = "n") ou (animal[I].adocao = "não") ou (animal[I].adocao = "Não") ou (animal[I].adocao = "NAO") ou (animal[I].adocao = "NÃO") entao

                  escreval()
                  escreval("Esse animal está indisponível para adoção.")
                  interrompa

                senao

                  animal[I].adocao <- "N"
                  adotado <- verdadeiro
                  escreval()
                  escreval("Adoção alterada com sucesso!")
                  escreval()
                  escreval("Novo status: ", animal[I].adocao)
                  escreval()
                  escreval("----------------------------")
                  cadastroAdotante()

                  interrompa

                fimse

              fimse

           fimpara

              se (adotado = falso) e (encontrou = falso) entao

                escreval()
                escreval("Animal não encontrado.")

              fimse

            escreval()
            escreva("Pressione ENTER para voltar ao menu...")
            leia(N1)
            limpatela

         caso "6"

            cabecalho()
            escreval("ADOTADOS")
            escreval("-----------------------")
            existeAdotado <- falso

            para I de 1 ate quantidade faca

               se (animal[I].adocao = "N") ou (animal[I].adocao = "n") ou (animal[I].adocao = "não") ou (animal[I].adocao = "Não") ou (animal[I].adocao = "NAO") ou (animal[I].adocao = "NÃO") entao

                  escreval()
                  escreval("ANIMAL")
                  escreval("-----------------------")
                  infoAnimal()
                  escreval()
                  escreval("=======================")
                  escreval("ADOTANTE")
                  escreval("-----------------------")
                  infoAdotante()

                  existeAdotado <- verdadeiro

               fimse

            fimpara

            se existeAdotado = falso entao

               escreval()
               escreval("Nenhum animal adotado ainda.")

            fimse

            escreval()
            escreva("Pressione ENTER para voltar ao menu...")
            leia(N1)
            limpatela

         caso "0"
            limpatela

            escreval("Fim da execução.")

         outrocaso
            escreval("Opção inválida!")

      fimescolha

   fimenquanto

Fimalgoritmo
