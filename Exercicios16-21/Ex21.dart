
void main() {
  ContaCorrente conta1 = ContaCorrente("Paula", 1980);
  ContaCorrente conta2 = ContaCorrente("Mario", 1979);
  ContaCorrente conta3 = ContaCorrente("Rodrigo", 1980);

  final ContaCorrentes = [conta1, conta2, conta3];

  print("Lista: $ContaCorrentes, length: ${ContaCorrentes.length}");

  for (ContaCorrente c in ContaCorrentes) {
    print(c.dadosContaCorrente());
  }
}

class Conta {
  String nome;

  Conta(this.nome);

  String dadosContaCorrente() {
    return nome;
  }
}

class ContaCorrente extends Conta {
  int ano;

  ContaCorrente(nome, this.ano) : super(nome);

  String toString() {
    return "$nome - $ano";
  }

  @override
  String dadosContaCorrente() {
    return "Cliente: $nome  Abertura da conta: $ano";
  }
}
