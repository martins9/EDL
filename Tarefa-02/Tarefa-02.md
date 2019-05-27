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
-   <h3> Arquitetura do Shell</h3> 
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
Abaixo imagens demonstrações essas operações.

![OperacoesBasicas](https://github.com/martins9/EDL/blob/master/Tarefa-02/Imagens/OperacoesBasicas.png)
<br> Exemplificação de operações básicas <br>
usando duas formas diferentes uma usando <br>
o comando "expr" _expression_ e a outra que <br>
é usando atribuição

<h3>Funcionalidade</h3>
No ambiente Linux há uma ferramenta muito poderosa chamada __*Pipe*__, esta tem como objetivo encadear 
vários comandos em que o _Stdout_ torna-se _Stdin_ de outro comando, porém se houver algum erro ao
longo do encadeamento dos comandos, então o mesmo é encaminhando para o _Stderr_ como mostra a imagem abaixo:
![Pipeline](/home/smsf/Documentos/faculdade_2019/EDL/EDL/Tarefa-02/Imagens/Pipeline.png)
<br> Exemplificação da operações de Pipeline

<br>
<br>Em um Pipeline todos os processos são criados ao mesmo tempo e os dados percorrem de forma sequencial 
da direita para esquerda. Quando um comando é executado, então o seu dado será guardado em buffer (write)
e quando o outro comando é executado então é lido o buffer o dado que estava armazenado (read).
Se um o buffer estiver cheio no momento da escrita, então o processo é bloqueado até o mesmo 
ser esvaziado (flush).
 
<h3> Expressividade</h3> 
<h4> Pipeline no Shell</h4>
Abaixo será

