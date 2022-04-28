import 'package:flutter/material.dart';
import '/pages/Pessoal.dart';
import '/pages/Formacao.dart';
import '/pages/Experiencia.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentPage = 0;

  final telas = [
    Center(child: Text('Tela Home')),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _titulo(),
        backgroundColor: Colors.white,
        body: telas[_currentPage],
        drawer: Drawer(
            child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.pink,
              ),
              accountName: Text('Isabella Puttini'),
              accountEmail: Text('FIAP - RM87624'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpt.wikipedia.org%2Fwiki%2FDua_Lipa&psig=AOvVaw1KXsthK67C9b0xyURVo8k5&ust=1651185421731000&source=images&cd=vfe&ved=0CAkQjRxqFwoTCNiyxpantfcCFQAAAAAdAAAAABAD'),
              ),
            ),
            ListTile(
              title: Text('Home'),
              subtitle: Text('Tela inicial'),
              trailing: Icon(Icons.home),
              onTap: () {
                setState(() {
                  _currentPage = 0;
                });
              },
            ),
            ListTile(
              //leading: Icon(Icons.star),
              title: Text('Pessoal'),
              subtitle: Text('Informações Pessoais'),
              trailing: Icon(Icons.account_box_outlined),
              onTap: () {
                setState(() {
                  _currentPage = 1;
                });
              },
            ),
            ListTile(
              //leading: Icon(Icons.star),
              title: Text('Formação'),
              subtitle: Text('Formação Acadêmica e Cursos'),
              trailing: Icon(Icons.grade_outlined),
              onTap: () {
                setState(() {
                  _currentPage = 2;
                });
              },
            ),
            ListTile(
              //leading: Icon(Icons.star),
              title: Text('Experiências'),
              subtitle: Text('Experiências Profissionais'),
              trailing: Icon(Icons.lightbulb_outline),
              onTap: () {
                setState(() {
                  _currentPage = 3;
                });
              },
            ),
          ],
        )),
      ),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("App 12 - Meu Perfil com Drawer Navigation"),
      centerTitle: true,
      backgroundColor: Colors.pink,
    );
  }
}
