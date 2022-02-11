import 'dart:async';

import 'package:estados/models/user.dart';

class _UsuarioService {
  Usuario? _usuario;
  StreamController<Usuario> _usuarioStreamController = StreamController<Usuario>.broadcast();



  Usuario? get usuario => this._usuario;
  bool get existeUsuario => this.usuario != null;
  Stream<Usuario> get usuarioStream => _usuarioStreamController.stream;
  
  void cargarUsuario ( Usuario user){
    this._usuario = user;
    this._usuarioStreamController.add(user);
  }

  void cambiarEdad(int edad){
    if (this._usuario == null) return;
    this._usuario!.edad = edad;
    this._usuarioStreamController.add(this._usuario!);

  }

  void dispose () {
    this._usuarioStreamController.close();
  }

}

final usuarioService = _UsuarioService();