import 'package:estados/models/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'usuario_state.dart';

class UsuarioCubit extends Cubit<UsuarioState> {
  UsuarioCubit() : super(UsuarioInitial());

  void seleccionarUsuario(Usuario user){
    emit(UsuarioActivo(user));
  }

  void cambiarEdad(int edad){
    final currentState = state;
    if( currentState is UsuarioActivo){
      final newUser = currentState.usuario.copyWith(edad: 30);
      emit(UsuarioActivo(newUser));
    }
  }

  void agregarProfesion(){
    final currentState = state;
    if( currentState is UsuarioActivo){
      final newProfesiones = [
        ...currentState.usuario.profesiones,
        'Profesion ${currentState.usuario.profesiones.length + 1}'
      ];
      final newUser = currentState.usuario.copyWith(profesiones: newProfesiones);
      emit(UsuarioActivo(newUser));
    }
  }

  void borrarUsuario(){
    emit(UsuarioInitial());
  }
}