import 'package:flutter/material.dart';

class GridviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gridview'),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (context, int index) {
                return Card(
                  color: index.isOdd?Colors.blueGrey:Colors.cyanAccent,
                  borderOnForeground: true,
                  child: Column(
                    children: [
                      Text(
                        'Titulo',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text('Contenido'),
                      FlatButton(
                        color: Colors.teal,
                        onPressed: () {},
                        child: Text('Aceptar'),
                      )
                    ],
                  ),
                );
              },
              itemCount: 10,
            ),
          )
          // Expanded(
          //   child: GridView.count(
          //     crossAxisCount: 2,//numero de columnas del gridview
          //     mainAxisSpacing: 10,
          //     crossAxisSpacing: 10,
          //     padding: EdgeInsets.all(10),
          //     children: [
          //       Card(
          //         color: Colors.blueGrey,
          //         borderOnForeground: true,
          //         child: Column(
          //           children: [
          //             Text('Titulo', style: TextStyle(fontSize: 16),),
          //             Text('Contenido'),
          //             FlatButton(
          //               color: Colors.teal,
          //               onPressed: (){},
          //               child: Text('Aceptar'),
          //             )
          //           ],
          //         ),
          //       ),
          //       Card(
          //         color: Colors.blueGrey,
          //         child: Column(
          //           children: [
          //             Text('Titulo', style: TextStyle(fontSize: 16),),
          //             Text('Contenido'),
          //             FlatButton(
          //               color: Colors.teal,
          //               onPressed: (){},
          //               child: Text('Aceptar'),
          //             )
          //           ],
          //         ),
          //       ),
          //       Card(
          //         color: Colors.blueGrey,
          //         child: Column(
          //           children: [
          //             Text('Titulo', style: TextStyle(fontSize: 16),),
          //             Text('Contenido'),
          //             FlatButton(
          //               color: Colors.teal,
          //               onPressed: (){},
          //               child: Text('Aceptar'),
          //             )
          //           ],
          //         ),
          //       ),
          //       Card(
          //         color: Colors.blueGrey,
          //         child: Column(
          //           children: [
          //             Text('Titulo', style: TextStyle(fontSize: 16),),
          //             Text('Contenido'),
          //             FlatButton(
          //               color: Colors.teal,
          //               onPressed: (){},
          //               child: Text('Aceptar'),
          //             )
          //           ],
          //         ),
          //       )
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
