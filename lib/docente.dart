import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Rdocente extends StatelessWidget{

  Future<void> agregarDocente(String Nombre, String Apellido, String Codigo, String Correo) async {
    await FirebaseFirestore.instance.collection('tb_docentes').add({
      "Nombre": Nombre,
      "Apellido": Apellido,
      "Codigo": Codigo,
      "Correo": Correo
    });
  }
    TextEditingController NombreController = TextEditingController();
    TextEditingController ApellidoController = TextEditingController();
    TextEditingController CodigodedocenteController = TextEditingController();
    TextEditingController CorreoelectronicoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 15),
              const Text('Registro de docente',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: NombreController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('img/insignia.png',
                        width: 5,
                        height: 5,),
                    ),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    labelText: 'Datos',
                    hintText: 'Ingrese datos del docente'
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: ApellidoController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('img/insignia.png',
                        width: 5,
                        height: 5,),
                    ),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    labelText: 'Nombre',
                    hintText: 'Ingrese el Nombre del usuario'
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: CodigodedocenteController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    prefixIcon: const Icon(Icons.attach_money),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    labelText: 'Precio',
                    hintText: 'Ingrese el Apellido del usuario'
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: ApellidoController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    prefixIcon: const Icon(Icons.attach_money),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    labelText: 'Precio',
                    hintText: 'Ingrese el Apellido del usuario'
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: ApellidoController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    prefixIcon: const Icon(Icons.attach_money),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    labelText: 'Apellido',
                    hintText: 'Ingrese su apellido '
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: CodigodedocenteController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    prefixIcon: const Icon(Icons.attach_money),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    labelText: 'Codigo',
                    hintText: 'Ingrese su codigo'
                ),
              ),

              const SizedBox(height: 15),
              TextField(
                controller: CorreoelectronicoController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('img/insignia.png',
                        width: 5,
                        height: 5,),
                    ),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    labelText: 'Stock',
                    hintText: 'Ingrese el correo electronico del usuario'
                ),
              ),
              const SizedBox(height: 15),

              ElevatedButton(onPressed: () async{
                await agregarDocente(NombreController.text, ApellidoController.text, CodigodedocenteController.text, CorreoelectronicoController.text).then((_){
                  Rdocente();

                  NombreController.clear();
                  ApellidoController.clear();
                  CodigodedocenteController.clear();
                  CorreoelectronicoController.clear();
                });
              },
                child: const Text('Guardar'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
