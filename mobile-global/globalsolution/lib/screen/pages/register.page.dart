import 'package:flutter/material.dart';

import '../../models/chipsnosaquinho_input.model.dart';
import '../../services/api.service.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var apiService = ApiService();

  TextEditingController _nameController = new TextEditingController();

  TextEditingController _emailController = new TextEditingController();

  TextEditingController _assuntoController = new TextEditingController();

  TextEditingController _mensagemController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFCFF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.4,
        title: Text("Cadastrar"),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
              bottom: 10,
            ),
            child: BPInputLight(
              label: "Nome do produto",
              keyboard: TextInputType.text,
              password: false,
              controller: this._nameController,
              capitalization: TextCapitalization.none,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
              bottom: 10,
            ),
            child: BPInputLight(
              label: "Fornecedor do produto",
              keyboard: TextInputType.text,
              password: false,
              controller: this._assuntoController,
              capitalization: TextCapitalization.none,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
              bottom: 10,
            ),
            child: BPInputLight(
              label: "Quantidade do produto",
              keyboard: TextInputType.text,
              password: false,
              controller: this._mensagemController,
              capitalization: TextCapitalization.none,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
              bottom: 10,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
              bottom: 10,
            ),
            child: BPButtonDark(
              label: "Cadastrar produto",
              callback: register(),
            ),
          ),
        ],
      ),
    );
  }

  register() {
    var data = new ChipsnosaquinhoInput();

    if (this._nameController.text != null || this._nameController.text == "") {
      data.name = this._nameController.text;
    }

    if (this._emailController.text != null ||
        this._emailController.text == "") {
      data.email = this._emailController.text;
    }

    if (this._assuntoController.text != null ||
        this._assuntoController.text == "") {
      data.assunto = int?.tryParse(this._assuntoController.text)!;
    }

    this.apiService.postInsumos(data);
  }

  BPInputLight(
      {required String label,
      required TextInputType keyboard,
      required bool password,
      required TextEditingController controller,
      required TextCapitalization capitalization}) {}

  BPButtonDark({required String label, required callback}) {}
}
