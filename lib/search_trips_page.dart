import 'package:flutter/material.dart';

class SearchTripsPage extends StatefulWidget {
  const SearchTripsPage({Key? key}) : super(key: key);

  @override
  _SXAL_Search createState() => _SXAL_Search();
}

class _SXAL_Search extends State<SearchTripsPage> {
  late TextEditingController _SXAL_Controlador;
  bool _SXAL_ClicEnSearch = false;

  @override
  void initState() {
    super.initState();
    _SXAL_Controlador = TextEditingController();
  }

  @override
  void dispose() {
    _SXAL_Controlador.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext contexto) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SEARCH'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue.shade200, Colors.lightBlue.shade100],
          ),
          image: DecorationImage(
            image: AssetImage('assets/images/people.jpg'), // Fondo con Imagen 
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                            controller: _SXAL_Controlador,
                            decoration: InputDecoration(
                            hintText: _SXAL_ClicEnSearch ? 'Xavier Alomaliza' : 'Ingrese su búsqueda',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _SXAL_ClicEnSearch = !_SXAL_ClicEnSearch;
                          });
                        },
                        child: Icon(Icons.search),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 20), 
              child: SizedBox(
                height: 200, // altura del contenedor 
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    _SXAL_Botones(),
                    SizedBox(height: 10),
                    _SXAL_Botones(),
                    SizedBox(height: 10),
                    _SXAL_Botones(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _SXAL_Botones() {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.blue, Colors.lightBlueAccent],
        ),
      ),
      child: Icon(Icons.add, color: Colors.white),
    );
  }
}
