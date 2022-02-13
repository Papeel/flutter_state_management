import 'package:estados/bloc/usuario/usuario_cubit.dart';
import 'package:estados/models/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class Pagina2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final usuarioCubit = context.read<UsuarioCubit>();
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
              onPressed: (){
                final newUser = Usuario(
                  edad: 54, 
                  nombre: 'Nelson',
                  profesiones: [
                    'FullStack',
                    'Medico'
                  ]
                );
                usuarioCubit.seleccionarUsuario(newUser);
              },
            ),
            MaterialButton(
              child: Text('Cambiar edad', style: TextStyle(color: Colors.white),),
              color: Colors.blue[100],
              onPressed: (){
                usuarioCubit.cambiarEdad(30);
              },
            ),
            MaterialButton(
              child: Text('Añadir profesión', style: TextStyle(color: Colors.white),),
              color: Colors.blue[100],
              onPressed: (){
                usuarioCubit.agregarProfesion();

              },
            ),
          ],
        )
     ),
   );
  }
}