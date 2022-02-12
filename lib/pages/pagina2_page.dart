import 'package:estados/models/user.dart';
import 'package:estados/services/usuario_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Pagina2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final usuarioService = Provider.of<UsuarioServices>(context, listen: true);

    return Scaffold(
      appBar: AppBar(
        title: Text(usuarioService.usuario?.nombre ?? 'Página2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              child: Text('Establecer botón', style: TextStyle(color: Colors.white),),
              color: Colors.blue[100],
              onPressed: (){
                final newUser = Usuario(
                  edad: 35, 
                  nombre: 'Juan',
                  profesiones: ['Fullstack developer', 'Medico']
                );
                usuarioService.usuario = newUser;
              },
            ),
            MaterialButton(
              child: Text('Cambiar edad', style: TextStyle(color: Colors.white),),
              color: Colors.blue[100],
              onPressed: () => usuarioService.cambiarEdad(35),
            ),
            MaterialButton(
              child: Text('Añadir profesión', style: TextStyle(color: Colors.white),),
              color: Colors.blue[100],
              onPressed: (){
                usuarioService.agregarProfesion();
              },
            ),
          ],
        )
     ),
   );
  }
}