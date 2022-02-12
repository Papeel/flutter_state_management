import 'package:estados/models/user.dart';
import 'package:flutter/cupertino.dart';

class UsuarioServices with ChangeNotifier{
  Usuario? _usuario;

  Usuario? get usuario => this._usuario;
  bool get existeUsuario => this._usuario != null;

  void set usuario(Usuario? user){
    this._usuario = user;
    notifyListeners();
  }

  void cambiarEdad(int edad){
    if(this.existeUsuario){
      this._usuario!.edad = edad;
      notifyListeners();
    }
  }

  void removerUsuario(){
    if(this.existeUsuario){
      this._usuario = null;
      notifyListeners();
    }
  }

  void agregarProfesion(){
    if(this.existeUsuario){
      this._usuario!.profesiones.add('Profesión: ${this._usuario!.profesiones.length + 1}');
      notifyListeners();
    }
  }
  


}