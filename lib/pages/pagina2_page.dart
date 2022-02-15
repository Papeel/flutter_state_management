import 'package:estados/bloc/user/user_bloc.dart';
import 'package:estados/models/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class Pagina2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final userBloc = BlocProvider.of<UserBloc>(context, listen: true);

    return Scaffold(
      appBar: AppBar(
        title: Text(userBloc.state.user?.nombre ?? 'Página2'),
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
                  edad: 55, 
                  nombre: 'Nelson', 
                  profesiones: ['Medico', 'Enfermero']
                );
                userBloc.add(ActivateUser(newUser));
              },
            ),
            MaterialButton(
              child: Text('Cambiar edad', style: TextStyle(color: Colors.white),),
              color: Colors.blue[100],
              onPressed: (){
                userBloc.add(ChangeUserAge(25));
              },
            ),
            MaterialButton(
              child: Text('Añadir profesión', style: TextStyle(color: Colors.white),),
              color: Colors.blue[100],
              onPressed: (){
                userBloc.add(AddProfession('Profesion'));
              },
            ),
          ],
        )
     ),
   );
  }
}