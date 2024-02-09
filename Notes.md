## Mixins

É comum o uso de herança para evitar a reescrita de código

A herança é uma forma de uma **classe** obter atributos e métodos de outra **classe**, evitando a duplicidade e melhorando o reaproveitamento de código.

A principal vantagem dos mixins é a capacidade de adicionar comportamentos adicionais a uma classe sem precisar criar uma hierarquia de herança complexa. 

*PROBLEMA:* Imagine que queremos adicionar um método que é comum a diversas classes que herdam de Pessoa, mas nem todas. A primeira opção seria desenvolver estes métodos apenas nas classes que iriam utilizá-las, porém, desta forma, há a duplicidade de código, já que mais de uma classe irá utilizar o mesmo método.

*RESOLUÇÃO:* Para evitar isso, podemos usar o **Mixin**.

Basicamente, os Mixins são recursos presentes no Dart que nos permitem adicionar um conjunto de “características” a uma classe sem a necessidade de utilizar uma herança.

Classe pai:
```dart
abstract class Pessoa {
  String _nome;
  int _idade;
  String _sexo;
  String _email;

  Pessoa(String nome, int idade, String sexo, String email) {
    this._nome = nome;
    this._idade = idade;
    this._sexo = sexo;
    this._email = email;
  }

// getters e setters
// métodos
}
```

Classe filha:
```dart
class Funcionario extends Pessoa {
  String _cargo;

  Funcionario(String nome, int idade, String sexo, String email, String cargo)
      : this._cargo = cargo,
        super(nome, idade, sexo, email);

// getters e setters
// métodos
}
```
Imagine que também tenha as classes cliente e fornecedor
E que queremos criar o metodo Abastecer() que vai fazer o Funcionario e o fornecedor abastecer uma pratileira.
O cliente não deve ter este metodo então não é legal declarar ele na classe pai, então temos que fazer o mixin.


```dart
mixin Abastecer {
  void abastecer() {
    print("Prateleira abstecida");
  }
}
```
Por ser uma classe especial, os mixins não precisam de construtores.
E para utilizar basta utilizar a classe + with + os mixins

Quando usar mixins?
Quando não queremos criar uma classe especial para um caso especifico, podemos utilizar o mixin,
por exemplo, se quisessemos criar uma Palette para a prateleira, seria um caso especial que só precisa ser utilizado em um caso,
então podemos criar um mixin para isso



## Padrão Observer



## O que é um Map?



## O que é o Provider em dart?



## O que são generics?


## O que é um MOCK?


## Notifylisteners e ChangeNotifier


## routes e navigators
MaterialAPP possui o atributo Routes para montar as rotas
Se a rota principal for /, você pode substituir o atributo home pela rota

Navigator é uma classe nativa do flutter
TODO: Pegar a documentação




## Globalkey


## o que é future?

## O que é uma abstract class?



*DICA:* criar constantes para nomes para evitar problemas com strings 