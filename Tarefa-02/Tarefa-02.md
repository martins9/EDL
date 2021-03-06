<h1>Trabalho sobre Linguagem Shell Script </h1>

Shell Script é uma linguagem usada em sistemas operativos baseados em distribuições GNU/Linux. Basicamente, Shell é um 
intermediário entre o Kernel e o usuário, pois o Shell interpreta as linhas de comando inseridas pelo o usuário, as 
executa e devolve os resultados pelas saídas padrões. 

<h2>Origens e Influências</h2>

O primeiro Shell para Unix foi criado em 1971 por Ken Thompson, cientista da computação e um dos criadores da linguagem 
de programação B, com o objetivo de trazer uma sintaxe mais compacta para redirecionamento de fluxo (< > e >>) e 
pipes (|), porém um ponto que não era contemplado era a escrita de scripts que pudessem 
ser reutilizados e, assim, ser invocados no terminal. <br>
Este feito só pôde ser realizado em 1977 com a criação do Shell Bourne criado por Stephen Bourne, cientista da
computação e um dos desenvolvedores do ALGOL68, este Shell teve como objetivo ser um interpretador de comandos  a serem 
executados de forma interativa e também permitir a criação de scripts. <p>

![Timeline](https://github.com/martins9/EDL/blob/master/Tarefa-02/Imagens/Timeline.png)
<br>Time line dos Shell's desde 1977

Após a criação de Shell Bourne houve a criação de outros que tiveram a sua influência. Abaixo alguns exemplos de Shells
inflênciados pela criação por Shell Bourn:

1. Shell Korn (ksh)
<br/> Foi desenvolvido por David Korn, programador americano, na Bell Labs no início dos anos de 1980's.
O Korn Shell foi baseado em Bourne Shell e inclui muitos recursos do shell C, este trouxe consigo algumas 
funcionalidades como:
    - Command History: Comando que recupera comandos já digitados e, assim, reexecutá-los.
    - Command aliasing: Comando que permite a substituição de uma palavra(comando)  por uma string.
2. C Sheel (csh)
<br/> Foi desenvolvido por Bill Joy, engenheiro da computação americano e co-fundador da Sun Microsystems, no final dos
anos de 1970's na sua pós-graduação. A sua sintaxe foi desenvolvida e baseada segundo a linguagem de programação Ansi C
e como todos os outros Shell's era permitido: variáveis, estruturas de controle, iteração e etc.
Porém, a diferença dos outros seria o estilo em programa e as interações que se assemelhavam com a estrutura da linguagem 
de programação C.

3. Bash
<br/> O bash foi desenvolvido dentro do projeto GNU pela Free Software Foundation e lançado a primeira vez em 1989. 
Tornou-se padrão de varias distribuições Linux e compatível com Bourne Shell o qual teve forte influência do mesmo. Este 
Shell ao longo do tempo trouxe consigo vários recursos de outros Shell's como _piping_, _globbing_, iteração e tantos 
outros.

 
<h2>Arquitetura do Shell e Classificação da Linguagem Script</h2>
<h3> Arquitetura do Shell</h3> 
Basicamente a arquitetura do Shell é dividido em: Shell, Aplicações, Biblioteca de Funções Padrão, Kernel e Hardware. 
Conforme é demonstrado na imagem abaixo: <br/>
        
![Arquitetura](https://github.com/martins9/EDL/blob/master/Tarefa-02/Imagens/Arquitetura.png)
<br> Esquematização da Arquitetura do Shell

Abaixo a explicação dos componentes envolvidos na arquitetura do Shell:<br/>

1. **Shell** <br/>
A camada Shell é uma interface que interage com o usuário e, assim, ele recebe e interpreta os comandos passados.
Por exemplo, qunado um usuário passa comando "ls" (list), então o shell interpreta o comando, busca o arquivo respectivo
ao comando e inicia a sua execução e ao final retorna a resposta da execução do comando. Sem esquecer que ao iniciar o 
comando ele está gerando um processo.<br/>

2. **Aplicações** <br/>
A camada das aplicações é onde se hospedam as aplicações que há interação de forma com a inteface como: editores de 
texto, browser de navegação web, editores de mídias e etc. <br/>

3. **Biblioteca de Funções Padrão** <br/>
Esta camada tem por objetivo guardar as principais funções do Linux para interação com o usuário assim como as funções: 
open, read, write e close, por exemplo.

4. **Kernel**<br/>
Esta camada tem como objetivo fazer o intermédio entre as aplicações e o hardware o qual a distribuição Linux está
instalado. O Kernel tem algumas funcionalidades principais como: detectar o hardware que ele possui, gerenciar os 
processos, gerenciar a memória, gerenciar os dispositivos periféricos, ou seja, ele tem a função de fazer a inteface
entre o hardware e sofware sendo o organizador delas.

5. **Hardware**<br/>
É a camada onde a distribuição Linux será executada/instalada, ou seja, o conjunto de dispositivos físicos que hospedam 
e dão surporte para que o sistema seja executado.

-   <h3> Classificação da Linguagem Script</h3>
A linguagem Shell Script se encaixa em dois paradigmas que são:
1. Imperativo, pois permite o uso de estruturas de repetição, estruturas condicionais, mudança de comportamento das 
variáveis.
2. Procedural, pois no Shell Script permite-se a chamada de funções/procedimentos já estabelecidos pelo Shell a qualquer
hora da execução de um programa respeitando a sintaxe do mesmo. Logo, também permite-se a criação de novas funções que 
podem ser reusadas por outros programas formando-se assim uma biblioteca.

<h2>Exemplos de código em Shell Script</h2>

<h3>Variáveis</h3>
Sheell Script tem tipagem dinâmica, ou seja, não necessita da declaração dos tipos de dados, portanto os tipos são 
definidas na compilação ou execução dos programas. Abaixo a imagem exemplificando: 

![Variaves](https://github.com/martins9/EDL/blob/master/Tarefa-02/Imagens/Variaveis.png)
<br> Exemplificação de tipagem dinâmica <br> no Shell Script

<h3>Operações</h3>
As operações básicas são nativas da linguagem, porém quando se quer trabalhar com pontos 
flutuantes, então deve-se usar uma linguagem chamada BC que sustenta essas operações.
Abaixo a imagem exemplificando:

![OperacoesBasicas](https://github.com/martins9/EDL/blob/master/Tarefa-02/Imagens/OperacoesBasicas.png)
<br> Exemplificação de operações básicas usando duas <br>
formas diferentes uma usando o comando "expr" <br>
_expression_ e a outra que é usando atribuição

<h3>Controles de Fluxos</h3>
O Shell Sript possui controle de fluxo também como qualquer outra linguagem, porém como toda linguagem 
possui peculiaridades como, por exemplo, as condicionais dentro dos _IF's_ são definidas por letras
conforme pode ser ver abaixo: <br>
- -eq : (equal) Igual à <br>
- -ne : (not equal) Diferente de <br>
- -lt : (less than) Menor que <br>
- -gt : (greater than) Maior que <br>
- -le : (less or egual) Menor ou igual à <br>
- -ge : (greater or equal) Maior ou igual à <br><br>

![ControlesFluxos](https://github.com/martins9/EDL/blob/master/Tarefa-02/Imagens/Controle_Fluxo_1.png)
<br>Exemplificação de Controle de Fluxo

O controle de fluxo especificamente no Shell Script possui outras opções como:
- n : String existe e não é vazia (apenas um operador)
- -z : String existe e é vazia (apenas um operador)
- -s : Arquivo existe, não vazio (apenas um operador)
- -f : Arquivo existe, não é um diretório (apenas um operador)
- -d : Diretório existe (apenas um operador)
- -w : Arquivo, com permissão de escrita (apenas um operador)
- -r : Arquivo, com permissão de leitura (apenas um operador)
- -x : Arquivo, com parmissão de execução  -x  (apenas um operador)

![ControlesFluxos](https://github.com/martins9/EDL/blob/master/Tarefa-02/Imagens/Controle_Fluxo_2.png)
<br>Exemplificação de Controle de Fluxo

<h3>Estrutura de Repetição</h3>
Shell Script possui estrutura de repetições também como qualquer outra linguagem, ou seja, ela 
possui os estruturas conhecidas como: for, while e particularmente conhecida Until.

![EstruturaRepeticao](https://github.com/martins9/EDL/blob/master/Tarefa-02/Imagens/Estrutura_Repeticao.png)
<br>Exemplificação de Estrutura de Repetição

<h3>Funcionalidade</h3>
No ambiente Linux há uma ferramenta muito poderosa chamada Pipe, esta tem como objetivo encadear 
vários comandos em que o Stdout torna-se Stdin de outro comando, porém se houver algum erro ao
longo do encadeamento dos comandos, então o mesmo é encaminhando para o Stderr como mostra a imagem abaixo:

![Pipeline](https://github.com/martins9/EDL/blob/master/Tarefa-02/Imagens/Pipeline.png)
<br>Exemplificação da operações de Pipeline

Em um Pipeline todos os processos são criados ao mesmo tempo e os dados percorrem de forma sequencial 
da direita para esquerda. Quando um comando é executado, então o seu dado será guardado em buffer (write)
e quando o outro comando é executado, então o dado é lido do buffer que estava armazenado (read).
Se um o buffer estiver cheio no momento da escrita, então o processo é bloqueado até o mesmo 
ser esvaziado (flush).
 
<h3>Expressividade</h3> 
<h4>Pipeline no Shell</h4>
Como dito acima o pipeline é um encadeamento de comandos que ajudam a realizar um determinado objetivo. 
Abaixo um exemplo de código de pipeline. 

![PShell](https://github.com/martins9/EDL/blob/master/Tarefa-02/Imagens/PipelineShell.png)

No exemplo acima mostra um código de pipeline composta por dois comandos que são:
1. **ls -R**: listar os conteúdos de diretórios e subdiretórios recursivamente.
2. **grep ^jira-softw**: extrair do primeiro resultado, somente, os resultados que combinarem 
com o padrão de começar com a string "jira-softw", então será printado no sdtout do sistema, 
nesse caso o shell.

Abaixo é realizado a funcionalidade **Pipe na Linguagem Python** utilizando o mesmo exemplo da 
**Linguagem Shell Script**
![PShell](https://github.com/martins9/EDL/blob/master/Tarefa-02/Imagens/PipelineShell1.png)
 
Abaixo é realizado a funcionalidade **Pipe na Linguagem Java** utilizando o mesmo exemplo da 
**Linguagem Shell Script**:
![JShell](https://github.com/martins9/EDL/blob/master/Tarefa-02/Imagens/PipelineShell2.png)

<h4>Análise Comparativa</h4>

1. **Em Python** <br>
Na Linguagem Python pode ser usado o módulo _subprocess_ que tem por objetivo criar e gerenciar novos
processos que utilizam o Shell conectando o _input/output/error_ assim podendo resolver os casos mais 
comuns. Agora, nos casos que a manipulação de processos  (pai-filho), então usa-se a classe _Popen_ 
que tem flexibilidade maior do que as outras classes. No exemplo acima, para estabelecer o Pipe como feito 
em Shell Script foi utilizado esta classe:
- subprocess.Popen(): A classe recebe vários argumentos como: _Stdin, Stdout e Stderr_, estes specificam a 
entrada padrão do programa executado, a saída padrão e os identificadores padrão de arquivos de erro, 
respectivamente. Outro argumento passado para o stdout é o subprocess.Pipe que indica que um novo canal 
deve ser criado para o processo filho.
- subprocess.communicate(): Realiza a comunicação entre processos pai-filho realizando o envio de dados 
para o stdin e a leitura de dados do stderr-stdout.
   
2. **Em Java** <br>
Na Linguagem Java temos uma classe chamada _ProcessBuilder_ que é uma classe auxiliar da classe _Process_ 
que possui métodos para criar e configurar processos de um sistema operacional. Um desses métodos que 
essa classe possui e que usamos no exemplo acima é método **start()** que inicia um novo processo com os
atributos que da instância da classe. 
No mesmo exemplo acima, pode ser observado que canalizamos a entrada e saída de dados com as classes: 
_InputStream_ que tem por objetivo realizar a leitura de um ou sequência de bytes a partir de alguma fonte.
_BufferedReader_ que tem por objetivo ler um bloco de bytes vindo de qualquer tipo de entrada.

Pode ser observado que enquanto a funcionalidade PIPE que vem como padrão em sistemas operativos 
baseados em Unix e, assim, pode ser usada como recurso nas linguages baseadas em Unix sem auxílio 
de outros recursos. 
Agora, em outras linguagens como Python e Java, como nos exemplos dados, quando se quer utilizar a funcionalidade
(Pipe), então deve-se lançar mão dos recursos que a linguagem disponibiliza. No caso, da linguagem Python os 
são o módulo subprocess que possui classes e métodos que criam e gerenciam os processos oriundo dos comandos 
Shell. Ela faz uma inteface e alguns casos tem algumas funções do Shell implementas, sendo assim dispensando 
a chamada ao Shell do sistema. Porém, se tiver necessidade de chamar o Shell do sistema pode ser feito passando
como argumento nas devidas classes **Shell=True**, porém por questão de segurança não é aconselhado para
evitar **injeção de Shell**. <br>
No caso, da linguagem Java também existe uma classe que realiza a execução dos comandos Shell, cria processos
e os gerencia, todavia no caso do Java há um detalhe por quê no Java o mesmo não sabe como interpretar  o caso
do Pipe, por isso ele literalmente chama o Shell e passa os comandos como argumentos para o Shell executar e 
recebe seu retorno.
Por fim, podemos obervar que Python em comparação a Java realiza todo o trabalho de realizar uma camada e implementar
uma forma de usar a funcionalidade Pipe ao contrário de Java. Agora, comparando com Shell Script foi visto que essa
funcionalidade é intrínseca e pode ser utilizada sem nenhum recurso a mais, porém em relação a Python teve que ser 
implementado um módulo (característica da linguagem Python) com classes e métodos para que manipulem a criação e
gerencia de processos e a transferência de dados entre os mesmos, por isso Shell Script é mais expressivo do que 
Python nesse caso.

<h3>Bibliografia</h3>
1. The Python Standard Library. Disponível em: https://docs.python.org/3.4/library/subprocess.html. Acesso em: 26 ago. 2019. <br>
2. What is subprocess in Python?. Disponível em: https://www.quora.com/What-is-subprocess-in-Python. Acesso em: 30 ago. 2019. <br>
3. Understanding Java Process and Java ProcessBuilder em: https://www.developer.com/java/data/understanding-java-process-and-java-processbuilder.html.
 Acesso: 30 ago. 2019.
