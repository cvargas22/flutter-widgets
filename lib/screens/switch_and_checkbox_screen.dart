import 'package:flutter/material.dart';

class SwitchAndCheckboxScreen extends StatefulWidget {
  @override
  _SwitchAndCheckboxScreenState createState() => _SwitchAndCheckboxScreenState();
}

class _SwitchAndCheckboxScreenState extends State<SwitchAndCheckboxScreen> {
  bool valorSwitch = false;
  bool valorCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switchs and Checkboxes'),
      ),
      body: Center(
        child: Column(
          children: [
            Switch(
              value: valorSwitch,
              onChanged: (bool valor){
                setState(() {
                  valorSwitch = valor;
                });  
              },
            ),
            Checkbox(
              value: valorCheck,
              onChanged: (bool valor){
                setState(() {
                  valorCheck = valor;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}