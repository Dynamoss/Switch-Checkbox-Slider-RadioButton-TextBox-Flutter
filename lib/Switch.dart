import 'package:flutter/material.dart';

class SwitchButton extends StatefulWidget {
  @override
  _SwitchButtonState createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {

  bool _escolhaUsuario = false;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de Dados"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            

              SwitchListTile(
                
                title: Text("Receber Notificações?"),
              value: _escolhaUsuario,
              onChanged: (bool valor){

                setState(() {
                  _escolhaUsuario = valor;
                });

              },
            ),



            
              RaisedButton(
              child: Text(
                "Salvar",
                style: TextStyle(
                  fontSize: 20
                
                ),
              ),
              onPressed:(){
                    if(_escolhaUsuario){

                      print("escolha: Ativar Notificações");
                    }else{
                      print("escolha: Não ativar Notificações");
                    }
                 
                   //print("Resultado: " + _escolhaUsuario.toString());

              },
            )






            /*
            Switch(
              value: _escolhaUsuario,
              onChanged: (bool valor){

                setState(() {
                  _escolhaUsuario = valor;
                });

              },
            ),
           Text("Receber Notificações?")
            */

          ],
        ),
      ),
    );
  }
}