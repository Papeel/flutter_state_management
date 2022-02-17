import 'package:estados/controllers/usuario_controller.dart';
import 'package:estados/models/user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Pagina2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final usuarioCtrl = Get.find<UsuarioController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              child: const Text('Establecer botón', style: TextStyle(color: Colors.white),),
              color: Colors.blue[100],
              onPressed: (){
                usuarioCtrl.cargarUsuario(Usuario(nombre: 'Fernando', edad: 35));
                Get.snackbar(
                  'Message', 
                  'Se ha creado un usuario',
                  backgroundColor: Colors.white,
                  boxShadows: [
                    const BoxShadow(
                      color: Colors.black,
                      blurRadius: 10
                    )
                  ]
                  
                );
              },
            ),
            MaterialButton(
              child: const Text('Cambiar edad', style: TextStyle(color: Colors.white),),
              color: Colors.blue[100],
              onPressed: (){
                usuarioCtrl.cambiarEdad(55);
              },
            ),
            MaterialButton(
              child: const Text('Añadir profesión', style: TextStyle(color: Colors.white),),
              color: Colors.blue[100],
              onPressed: (){
                usuarioCtrl.agregarProfesion('Profesion #${usuarioCtrl.profesionesCount + 1}');
              },
            ),
            MaterialButton(
              child: const Text('Cambiar tema', style: TextStyle(color: Colors.white),),
              color: Colors.blue[100],
              onPressed: (){
                Get.changeTheme(Get.isDarkMode ? ThemeData.light() :  ThemeData.dark());
              },
            ),
          ],
        )
     ),
   );
  }
}