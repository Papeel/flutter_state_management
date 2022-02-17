import 'package:estados/controllers/usuario_controller.dart';
import 'package:estados/models/user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Pagina1Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final usuariCtrl = Get.put(UsuarioController());

    return Scaffold(
      appBar: AppBar(
        title: Text('Página1'),
      ),
      body: Obx( 
        ()=> usuariCtrl.existeUsuario.value
            ? InformacionUsuario(usuario: usuariCtrl.usuario.value,)
            : NoInfo()
      ) ,
      floatingActionButton: FloatingActionButton(
       child: Icon(Icons.add),
       //onPressed: () => Navigator.pushNamed(context, 'pagina2')
       onPressed: () => Get.toNamed('pagina2', arguments: {
         'nombre': 'fernando',
         'edad': 55
       }),
     ),
   );
  }
}

class NoInfo extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: const Center(child: Text('No hay usuario'),),
    );
  }
}

class InformacionUsuario extends StatelessWidget {

  final Usuario usuario;
  
  const InformacionUsuario({
    Key? key, required this.usuario,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment:  CrossAxisAlignment.start,
        children: [
          const Text('General', style: TextStyle( fontSize: 18, fontWeight: FontWeight.bold),),
          const Divider(),
          ListTile(title: Text('Nombre: ${usuario.nombre}'),),
          ListTile(title: Text('Edad: ${usuario.edad}'),),

          const Text('Profesiones', style: TextStyle( fontSize: 18, fontWeight: FontWeight.bold),),
          const Divider(),
          ...usuario.profesiones.map((e) => ListTile(title: Text(e),))
        ],
      )
    );
  }
}