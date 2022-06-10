import 'package:flutter/material.dart';
import 'package:globalsolution/screen/widgets/input-ligth.widget.dart';

import '../widgets/button-dark.widget.dart';
import 'home.page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFCFF),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 166, 253, 169),
        elevation: 0.4,
        title: Text("Fale Conosco"),
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
              label: "Seu nome",
              keyboard: TextInputType.emailAddress,
              password: false,
              capitalization: TextCapitalization.none,
              controller: null,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
              bottom: 30,
            ),
            child: BPInputLight(
              label: "Seu email",
              keyboard: TextInputType.text,
              password: true,
              capitalization: TextCapitalization.none,
              controller: null,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
              bottom: 10,
            ),
            child: BPButtonDark(
              label: "Enviar",
              callback: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
