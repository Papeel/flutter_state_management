import 'package:estados/models/user.dart';
import 'package:get/get.dart';

class UsuarioController extends GetxController{
  var existeUsuario = false.obs;
  var usuario =  Usuario().obs;


  int get profesionesCount{
    if(this.existeUsuario.value){
      return this.usuario.value.profesiones.length;
    }
    return 0;
  }
  void cargarUsuario(Usuario pUsuario){
    this.existeUsuario.value = true;
    this.usuario.value = pUsuario;
  }

  void cambiarEdad(int pEdad){
    if(this.existeUsuario.value){
      this.usuario.update((val) {
        val!.edad = pEdad;
      });
    }
  }


  void agregarProfesion( String profesion ){
    if(this.existeUsuario.value){
      this.usuario.update((val) {
        val!.profesiones = [...val.profesiones, profesion];
      });
    }
  }
}