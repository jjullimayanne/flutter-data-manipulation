import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  const CampoTexto({Key? key}) : super(key: key);

  @override
  _CampoTextoState createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(32),
            child: TextField(
              ///keyboardType: TextInputType.text,
              ///  ///keyboardType: TextInputType.emailAddress
              //keyboardType: TextInputType.datetime,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Digite um valor"),
              //enabled: true,
              //maxLength: 2,
              ///maxLengthEnforced: false,
              style: TextStyle(
                fontSize: 20,
                color: Colors.redAccent,
              ),

              /// obscureText: true,
              /*
             onChanged: (String texto ) => {
               print('Valor digitado ' + texto)
             },
             */
              onSubmitted: (String texto) => {print(texto)},
            ),
          ),
        ],
      ),
    );
  }
}
