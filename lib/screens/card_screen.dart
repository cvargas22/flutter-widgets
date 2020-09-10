import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarjetas - Cards'),
      ),
      body: Center(
        child: Card(
          child: Column(
            children: [
              FadeInImage(
                placeholder: AssetImage('assets/images/jar-loading.gif'),
                image: NetworkImage('https://as.com/meristation/imagenes/2020/09/09/noticias/1599647767_244123_1599647831_noticia_normal.jpg'),
              ),
              Row(
                children: [
                  Expanded(child: SizedBox()),
                  FloatingActionButton(
                    backgroundColor: Colors.red,
                    onPressed: (){},
                    child: Icon(Icons.add),
                  ),
                  SizedBox(width: 10)
                ],
              ),
              Text('Card Title', style: TextStyle(fontSize: 30))
            ],
          ),
        ),
      ),
    );
  }
}