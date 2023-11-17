class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selección de Usuario'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '¿Cómo quieres iniciar sesión?',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20), // Separación entre texto y botones
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DocentesPage()),
                );
                print('Seleccionaste Docentes');
              },
              child: Text('Docentes'),
            ),
            SizedBox(height: 20), // Separación entre botones
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PadresPage()),
                );
                print('Seleccionaste Padres de Familia');
              },
              child: Text('Padres de Familia'),
            ),
          ],
        ),
      ),
    );
  }
}
