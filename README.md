# Sistema-em-Chip em FPGA com processador softcore NIOS II.

# Executando o Quartus na máquina virtual:

1. Abrir e instalar a máquina virtual disponível em:
  https://arquivos.ufsc.br/d/110cf1439c/files/?p=/QuartusII_EPOS_KDE_Ubuntu1404_32b.ova
  
2. Incluir e executar a máquina virtual conforme configurações:

3. Abrir o terminal da máquina virtual:
  $ cd cd /usr/local/altera/13.0sp1/quartus/bin/    		-- entrar no diretório do Quartus
  $ ls                                              		-- listar todos os aquivos da pasta
  $ ./quartus                                      		-- executar o quartus


# Incluindo projeto no Git Hub:

1. Abrir o Terminal e clonar o reposirório base:

	$ cd ~/			(ir para a pasta home)
	$ mkdir dojo		(incluir uma pasta chamada dojo)
	$ cd dojo		(entrar na pasta dojo)
	
	$ git clone https://github.com/CodingDojoSE/**********

	(não feche o terminal - você vai precisar dele no passo 3)
	
	

2. Mover a pasta do projeto para a pasta do repositório clonado

	- Abra o gerenciador de arquivos do Linux, encontre a pasta do seu projeto

	- Certifique-se de que nessa pasta existe:
	
		Um arquivo README.md		(inclua aqui os participantes e os passos da resolução)

		Arquivos do seu projeto		(preferenciamente em zip)
	
	- Certifique-se de que a pasta do seu projeto siga o nome padrão:

		resolucaoNUMERODOCOMPUTADOR	(exemplo: resolucao66)

	- Copie a pasta do seu projeto para a pasta onde o repositírio foi Clonado. Deve estar em:

		home > dojo > NomeDoRepositorio
		
		

3. Execute os passos para inclusão no Git Hub (a partir de $ cd ~/dojo)

	$ cd NomeDoRepositorio	(que foi clonado no passo 1)

	$ git config --global user.name "Seu nome no Git Hub"
	
	$ git config --global user.email "Seu email no Git Hub"
	
	$ git pull		(sempre faça um $ git pull antes de commitar algo)
	
	$ git status
	
	$ git add --all
	
	$ git commit -m ' coloque sua mensagem de commit aqui'
	
	$ git push
		informe seu usuário
		informe sua senha 

		
