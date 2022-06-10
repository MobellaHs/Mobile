import 'package:globalsolution/models/chipsnosaquinho_input.model.dart';

import 'chipsnosaquinho_input.model.dart';



class ChipsnosaquinhoInput {
  late int id;
  late String name;
  late String email;
  late int assunto;
  late int mensagem;
 

  ChipsnosaquinholInput(
      {this.id,
      this.name,
      this.email,
      this.assunto,
      this.mensagem,
  

  ChipsnosaquinhoInput.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['name'];
    fornecedor = json['email'];
    quantidade = json['assunto'];
    peso = json['mensagem'];
  
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.nome;
    data['email'] = this.fornecedor;
    data['assunto'] = this.quantidade;
    data['mensagem'] = this.peso;
    return data;
  
  }
}
  )


  static fromJson(data) {}

  toJson() {}}