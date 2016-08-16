# Ordenação 02
leia mais [APA 20161](http://leobezerra.ci.ufpb.br/disciplinas/APA/2016-1/)
>Em quais situações o insertion sort, o merge sort, o quick sort e o heap sort apresentam sua melhor complexidade? Forneça exemplos para cada algoritmo.

## Insertion Sort
* Melhor caso *O(n)*

Obtemos o melhor caso quando o array já estiver ordenado, por exemplo, passo (f) da figura abaixo.

![alt text](http://www.java2novice.com/images/insertion-sort.png "insertion")

## Quick Sort

* Melhor caso *O(n log n)* 

Obtemos a melhor performance quando as partições tiverem tamanho iguais (quantidade que estiver a direita do pivô ser igual a da esquerda). 

![alt text](http://i.stack.imgur.com/iKFO7.png "quick")

## Merge Sort

* Todos os casos *O(n log n)*

Para qualquer entrada, o merge quebra o array recursivamente até chegar ficar com 1 elemento.

![alt text](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/Merge_sort_algorithm_diagram.svg/300px-Merge_sort_algorithm_diagram.svg.png "merge")

## Heap Sort

* Todos os casos *O(n log n)*

Assim como merge, independente da entrada. É utilizada a estrutura Heap para ordenar, a cada elemento que sai dessa estrutura é preciso verificar suas propriedades.

![alt text](http://4.bp.blogspot.com/_9pcz7CKFHp0/TQoY1AY67mI/AAAAAAAAAA4/uu6ELIktG2I/s1600/heap.png "heap")
