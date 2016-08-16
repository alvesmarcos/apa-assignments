# Ordenação 02
leia mais [APA 20161](http://leobezerra.ci.ufpb.br/disciplinas/APA/2016-1/)
>Em quais situações o insertion sort, o merge sort, o quick sort e o heap sort apresentam sua melhor complexidade? Forneça exemplos para cada algoritmo.

## Insertion Sort

Melhor caso *O(n)* quando o array já se encontra ordenado.

|  0 |  1 |  2 |  3 |  4 |  5 |
| -- | -- | -- | -- | -- | -- |
|  3 |  5 |  7 |  9 | 17 | 21 |

## Quick Sort

Melhor caso *O(n log n)* quando as partições feitas de acordo com pivô (maior ou menor) tiverem tamanho parcialmente iguais. 

## Merge Sort

*O(n log n)* para todos casos, esse algoritmo particiona o array até chegar ao caso base (1), independente do array está ou não ordenado. Como não há nenhuma comparação temos que o tamanho da árvore é *log n*

## Heap Sort
 