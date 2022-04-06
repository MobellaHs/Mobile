void main() {
 Pessoa n1 = Pessoa("Ana Carolina", 23, "F");
  Pessoa n2 = Pessoa("Nicole Ribeiro", 20, "F");
  Pessoa n3 = Pessoa("João", 20, "M");
  Pessoa n4 = Pessoa("Isabella", 20, "F");
  Pessoa n5 = Pessoa("Lais Lemes", 20, "F");

  final pessoas = [n1, n2, n3, n4, n5];

  for (Pessoa p in pessoas) {
    if (p.genero == "F") {
      print(" Aluno: ${p.nome}, ${p.idade} anos, gênero feminino");
    }
  }
}

class Pessoa {
  String nome;
  int idade;
  String genero;

  Pessoa(this.nome, this.idade, this.genero);
}
