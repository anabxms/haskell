![Banner](https://i.postimg.cc/mrvgPD4k/Blue-Dotted-Friendly-Corporate-Corporate-X-Frame-Banner-2.png)
:paperclip: _Códigos desenvolvidos para a cadeira de Programação Imperativa e Funcional da Cesar School._

![Badge](https://img.shields.io/github/last-commit/anabxms/haskell?color=pink&style=flat-square) ![Badge](https://img.shields.io/github/license/anabxms/haskell?color=pink&style=flat-square) ![Badge](https://img.shields.io/github/issues/anabxms/haskell?color=pink&style=flat-square) ![Badge](https://img.shields.io/github/stars/anabxms/haskell?color=pink&style=flat-square)
# Como utilizar

Antes de iniciar, instale a plataforma do Haskell em seu computador. Se você estiver no linux, basta copiar a seguinte linha no seu terminal:
```
$ sudo apt-get install haskell-platform
```
Caso você esteja em outro sistema operacional, tenha dúvidas, ou dificuldades, basta acessar a página oficial do [Haskell](https://www.haskell.org/platform/).

Clone este repositório:

```
$ git clone <https://github.com/anabxms/haskell>
```

Abra o **GHCI**, que é o modo interativo do Haskell 

```
$ ghci
```

Agora, você poderá carregar as funções digitando ```:l nomedoarquivo```, desde que o arquivo esteja na mesma pasta na qual o ghci foi invocado. Se você editar o script, basta executar ```:l nomedoarquivo``` novamente ou fazer ```:r``` , que é o equivalente a recarregar o script atual.
Por exemplo, caso você queira executar o programa odd_times.hs, você fará o seguinte:
```
Prelude> :l odd_times.hs
```
```
[1 of 1] Compiling Main             ( odd_times.hs, interpreted )
Ok, one module loaded.
```
```
*Main> oddTimes [1,2,2,4,5,5]
```
```
[4,1]
```
# Scripts
| Programa | Descrição | Input | Output |
| ------ | ------ | ----- | ----- |
| aplly-funcs | Recebe uma lista de funçoes e um parâmetro e retorna uma lista das funções parcialmente aplicadas | `aplicador [(+),(-),(*),(/)] 8 2` | [10.0,6.0,16.0,4.0] |
| check-sudoku | Checa se o sudoku inserido está correto, ou não | `checkSudoku [[6,2,4,5,3,9,1,8,7], [5,1,9,7,2,8,6,3,4], [8,3,7,6,1,4,2,9,5], [1,4,3,8,6,5,7,2,9], [9,5,8,2,4,7,3,6,1], [7,6,2,3,9,1,4,5,8], [3,7,1,9,5,6,8,4,2], [4,9,6,1,8,2,5,7,3], [2,8,5,4,7,3,9,1,6]]` | True |
| concat-lists | Concatena duas listas sem duplicar elementos iguais | [abcd], [abg] | [abcdg] |
| join_and_map |  Realiza a operação com cada elemento correspondente das listas e aplicar a função a partir do mymap em toda a lista resultante | `joinAndMap (+) (abs) [1..10] [-10..(-1)]` | [9,7,5,3,1,1,3,5,7,9] |
| odd_times | Recebe uma lista e retorna outra apenas com os elementos que repetem em uma quantidade ímpar de vezes | `oddTimes [1,2,3,6,1,3,6,6]` | [6,2] |
| permute | Retorna todas as permutações da lista | `permute "aba"` | ["aab","aba","baa"] |
| remove_larger_n | Remove o enésimo maior elemento de uma lista | `removeLargeN 2 [1,2,5,4,3]` | [1,2,5,3] |


![Autora](https://i.postimg.cc/zDSGf8cD/git.png)
[![Linkedin Badge](https://img.shields.io/badge/-Ana-blue?style=flat-square&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/anabxms/)](https://www.linkedin.com/in/anabxms/) 
[![Gmail Badge](https://img.shields.io/badge/-anabxms@gmail.com-c14438?style=flat-square&logo=Gmail&logoColor=white&link=mailto:anabxms@gmail.com)](mailto:anabxms@gmail.com)
