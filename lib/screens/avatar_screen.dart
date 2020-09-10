import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatars'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://as.com/meristation/imagenes/2020/09/09/noticias/1599647767_244123_1599647831_noticia_normal.jpg'),
            ),
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/jar-loading.gif'),
            ),
            CircleAvatar(
              radius: 30,
              child: Text('HP'),
              backgroundColor: Colors.teal,
              foregroundColor: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
