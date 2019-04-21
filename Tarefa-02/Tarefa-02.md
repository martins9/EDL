<h1>Trabalho sobre Linguagem Shell Script </h1>

Shell Script é uma linguagem usada em sistemas operativos baseados em distribuições GNU/Linux. Basicamente, Shell é um 
intermediário entre o Kernel e o usuário. Pois, o Shell interpreta as linhas de comando inseridas pelo o usuário, as 
executa e devolve os resultados pelas saídas padrões. 

<h2>Origens e Influências</h2>

O primeiro Shell para Unix foi criado em 1971 por Ken Thompson, cientista da computação e um dos criadores da linguagem 
de programação B, com o objetivo de trazer uma sintaxe mais compacta para redirecionamento de fluxo (< > e >>) e 
pipes (|), porém um ponto que não era contemplado era a escrita de scripts que pudessem 
ser reutilizados e, assim, ser invocados no terminal. <br>
Este feito só pôde ser realizado em 1977 com a criação do Shell Bourne criado por Stephen Bourne, cientista da
computação e um dos desenvolvedores do ALGOL68, este Shell teve como objetivo ser um interpretador de comandos  a serem 
executados de forma interativa e também permitir a criação de scripts. <p>

![TimeLine](/home/smsf/Documentos/faculdade_2019/EDL/EDL/Tarefa-02/Imagens/Timeline.png)
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
<br/> O bash foi desenvolvido dentro do projeto GNU pela Free Software Foundation, este Shel tornou-se padrão de variáveis
distribuições Linux e compatível com Bourne Shell o qual teve forte influência do mesmo.