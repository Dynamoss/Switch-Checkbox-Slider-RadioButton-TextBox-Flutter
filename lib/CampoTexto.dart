import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  @override
  _CampoTextoState createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {

    TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Entrada de Dados"),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(32),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Digite um valor"
                ),
                //enabled: true,
                //maxLength: 2,
                //maxLengthEnforced: true,
                /*style: TextStyle(
                  fontSize: 25,
                  color: Colors.green
                ),*/
                //obscureText: true,
                /*onChanged: (String e) {
                  print("valor digitado:" + e);
                },*/
                onSubmitted: (String e ){
                  print("valor digitado:" + e);
                },
                controller: _textEditingController,
              ),
            ),
            RaisedButton(
              child: Text("Salvar"),
              color: Colors.lightGreen,
              onPressed: (){
                  print("valor digitado:" + _textEditingController.text);

              },
            )
          ],
        ));
  }
}
