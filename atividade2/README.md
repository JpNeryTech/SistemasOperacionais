# Respostas Atividade 2: 

## Gerenciador de Processos
**Questão 1:** Explique o que ocorre quando um processo passa do estado Pronto para Executando.  
Quando um processo sai do estado Pronto e vai para Executando, ele estava esperando na fila e finalmente foi escolhido para usar a CPU. O sistema pausa o processo que estava rodando antes e coloca o novo processo para rodar.

## Escalonador de Processos
**Questão 2:** Qual algoritmo apresentou menor tempo médio de espera?  
O SJF (Shortest Job First) tem o menor tempo médio de espera, porque sempre escolhe primeiro os processos mais curtos.

**Questão 3:** No Round Robin, como o quantum influencia no desempenho do sistema?  
O quantum define quanto tempo cada processo pode usar a CPU antes de passar para o próximo. Se for muito pequeno, há muitas trocas e a CPU perde tempo e se for muito grande, o sistema se comporta como FIFO, fazendo processos curtos esperarem demais.

## Paginação
**Questão 4:** Explique o que é uma falta de página e como o sistema operacional a trata.  
Falta de página é quando o processo pede algo que não está na RAM. O sistema operacional busca essa informação no disco e coloca na memória para que o programa continue rodando.

**Questão 5:** Compare a execução de um processo com paginação e sem paginação. Quais vantagens você observou?  
Com paginação, o sistema consegue rodar programas maiores que a memória disponível, carregando apenas as partes em uso. Sem paginação o processo precisa caber inteiro na RAM. A vantagem da paginação é melhor aproveitamento da memória e possibilidade de rodar programas grandes mesmo em computadores com pouca RAM.
