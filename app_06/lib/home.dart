import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _userNumberController = TextEditingController();

  String _textoResultado = "";

  void _matchValues() {
    int? userNumber = int.tryParse(_userNumberController.text);
    int randomNumber = Random().nextInt(11);

    if (userNumber == null) {
      _textoResultado = 'Valor inválido. Digite um valor válido';
    } else if (userNumber < 0 || userNumber > 10) {
      _textoResultado = 'Valor inválido. Digite um valor entre 0 e 10';
    } else if (userNumber == randomNumber) {
      _textoResultado =
          'Parabéns! Você acertou! O número sorteado foi $randomNumber';
    } else {
      _textoResultado =
          'Que pena. Você errou! O número sorteado foi $randomNumber';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App 06 - Jogo do Número Aleatório'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Image.network(
                'https://th.bing.com/th/id/R.924edd6859d4f3e88740cf1a6aa4bdf1?rik=VcN6hgpOA4GC6Q&riu=http%3a%2f%2fwallsdesk.com%2fwp-content%2fuploads%2f2016%2f02%2fpictures-of-disneyland.jpg&ehk=Ums8LK%2bkkIcnz6ZUY0Sc1fvW1DTuJP%2fDGdj2mjRChfw%3d&risl=&pid=ImgRaw&r=0',
                height: 200,
                width: 200,
              ),
            ),
            TextField(
              controller: _userNumberController,
              decoration: InputDecoration(
                labelText: 'Digite um número entre 0 e 10',
              ),
              keyboardType: TextInputType.number,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: RaisedButton(
                color: Colors.pinkAccent,
                textColor: Colors.white,
                padding: EdgeInsets.all(15),
                child: const Text('Descobrir'),
                onPressed: () {
                  _matchValues();
                  setState(() {});
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                _textoResultado,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
