import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

    @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
   TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();

 String infoResultado = "Classificação";

void _calcularMultiplicacao() {
    setState(() {
        double peso = double.parse(pesoController.text) ; 
      double altura = double.parse(alturaController.text);

      double pesoIdeal = peso/(altura * altura);

       if(pesoIdeal >= 18.5 && pesoIdeal <= 24.9){
    
    print('Peso ideal');
    
  }else{
    
    print('Peso não ideal');
  }
  

      infoResultado = 'Resultado: $pesoIdeal';
    });
  }
  void _calcularMC() {

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _titulo(),
      backgroundColor: Colors.white,
      body: _corpo(),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("Cálculo de IMC"),
      centerTitle: true,
      backgroundColor: Colors.green,
    );
  }
  _corpo() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _botao(),
          _texto(infoResultado),
        ],
      ),
    );
  }

  _campo(labelTitulo, objController) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: labelTitulo, labelStyle: TextStyle(color: Colors.green)),
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.green, fontSize: 25.0),
      controller: objController,
    );
  }


  _texto(tesxtoParaExibir) {
    return Text(
      tesxtoParaExibir,
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.red, fontSize: 25.0),
    );
  }
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
