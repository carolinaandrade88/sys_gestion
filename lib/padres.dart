import 'package:flutter/material.dart';

class PadresPage extends StatefulWidget {
  const PadresPage({super.key});

  @override
  State<PadresPage> createState() => _PadresPageState();
}

class _PadresPageState extends State<PadresPage> {


  // Controladores para los campos de texto
  TextEditingController _nombreController = TextEditingController();
  TextEditingController _apellidoController = TextEditingController();
  TextEditingController _duiController = TextEditingController();
  TextEditingController _correoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro de Padres de Familia'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _nombreController,
              decoration: InputDecoration(labelText: 'Nombre'),
            ),
            TextField(
              controller: _apellidoController,
              decoration: InputDecoration(labelText: 'Apellido'),
            ),
            TextField(
              controller: _duiController,
              decoration: InputDecoration(labelText: 'DUI'),
            ),
            TextField(
              controller: _correoController,
              decoration: InputDecoration(labelText: 'Correo Institucional'),
            ),

            SizedBox(height: 20), // Separación entre campos de texto y botón
            ElevatedButton(
              onPressed: () {
                // Acciones al hacer clic en "Registrar"
                _registrarPadreFamilia();
              },
              child: Text('Registrar'),
            ),
          ],
        ),
      ),
    );
  }

  void _registrarPadreFamilia() {
    // Aquí puedes realizar acciones para registrar al padre de familia,
    // utilizando los valores ingresados en los campos de texto.
    String nombre = _nombreController.text;
    String apellido = _apellidoController.text;
    String dui = _duiController.text;
    String correo = _correoController.text;

    // Puedes imprimir los valores o realizar otras acciones aquí.
    print('Nombre: $nombre');
    print('Apellido: $apellido');
    print('DUI: $dui');
    print('Correo Institucional: $correo');
  }
}