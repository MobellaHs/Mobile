
void main() {
  Pessoa n1 = Pessoa("Isabella Puttini", 20);
  Pessoa n2 = Pessoa("Nicole Ribeiro", 20);
  Pessoa n3 = Pessoa("João", 20);
  Pessoa n4 = Pessoa("Ana Carolina", 23);
  Pessoa n5 = Pessoa("Lais Leme", 20);

  final pessoas = [n1, n2, n3, n4, n5];

  for (Pessoa p in pessoas) {
    print(" Aluno: ${p.nome}, ${p.idade} anos");
  }
}

class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);

  String toString() {
    return "$nome, $idade anos";
  }
}
