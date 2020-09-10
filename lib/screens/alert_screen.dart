import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Alertas')),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () => abrirAlert(context),
          child: Text('Abrir Alert'),
        ),
      ),
    );
  }
  void abrirAlert(BuildContext context){
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text('Alerta'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Esto es una alerta'),
              FlutterLogo(size: 80.0,)
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Cancelar'),
              onPressed: () => Navigator.pop(context),
            ),
            FlatButton(
              child: Text('Ok'),
              onPressed: () => Navigator.pop(context),
            )
          ],
          //content: ,

        );
      }

    );
  }
}