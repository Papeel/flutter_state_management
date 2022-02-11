import 'package:flutter/material.dart';


class Pagina2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              child: Text('Establecer botón', style: TextStyle(color: Colors.white),),
              color: Colors.blue[100],
              onPressed: (){},
            ),
            MaterialButton(
              child: Text('Cambiar edad', style: TextStyle(color: Colors.white),),
              color: Colors.blue[100],
              onPressed: (){},
            ),
            MaterialButton(
              child: Text('Añadir profesión', style: TextStyle(color: Colors.white),),
              color: Colors.blue[100],
              onPressed: (){},
            ),
          ],
        )
     ),
   );
  }
}