import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarjetas - Cards'),
      ),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: Card(
            margin: EdgeInsets.all(20),
            elevation: 20,
            borderOnForeground: true,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Column(
                        children: [
                          FadeInImage(
                            placeholder:
                                AssetImage('assets/images/jar-loading.gif'),
                            image: NetworkImage(
                                'https://as.com/meristation/imagenes/2020/09/09/noticias/1599647767_244123_1599647831_noticia_normal.jpg'),
                          ),
                          Container(
                            height: 25,
                          )
                        ],
                      ),
                      Positioned(
                        bottom: 0,
                        right: 20,
                        child: FloatingActionButton(
                          backgroundColor: Colors.red,
                          onPressed: () {},
                          child: Icon(Icons.add),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Card Title', style: TextStyle(fontSize: 30)),
                        Text(
                          'I am a very simple card. I am good at containing small bits of information. I am convenient because I require little markup to use effectively.'
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
