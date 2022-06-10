import 'package:flutter/material.dart';
import 'package:globalsolution/screen/themes/app_theme.dart';


class ConsultCard extends StatelessWidget {
  final String name;
  final String email;
  
  var children;
  

  ConsultCard({Key? key, required this.name, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
        Row(
          children: <Widget>[
            cardIcon(),
            SizedBox(
              width: 10,
            ),
            cardName(name),
            Spacer(),
            // cryptoChange(),
          ],
        ),
      children [
        Row(
          children: <Widget>[
            cardIcon(),
            SizedBox(
              width: 10,
            ),
            cardName(name),
            Spacer(),
          ]
        );
      ];
        );
     
   
  }

  Widget cardIcon() {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Align(
          alignment: Alignment.centerLeft,
          child: Icon(
            Icons.agriculture_sharp,
            color: primaryColor,
            size: 40,
          )),
    );
  }

  Widget cardName(String name) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        name,
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
      ),
    );
  }

  Widget cardQuantityValue(int quantidade) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Row(
          children: [
            Text(
              "Quantidade: ",
              style: TextStyle(
                color: Colors.green,
                fontSize: 20,
              ),
            ),
            Text(
              quantidade.toString(),
              style: TextStyle(
                color: Colors.green,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
