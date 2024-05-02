import 'package:flutter/material.dart';

class SearchTripsPage extends StatefulWidget {
  const SearchTripsPage({Key? key}) : super(key: key);

  @override
  _SearchTripsPageState createState() => _SearchTripsPageState();
}

class _SearchTripsPageState extends State<SearchTripsPage> {
  late TextEditingController _searchController;
  bool _searchClicked = false;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SEARCH'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/people.jpg'),
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
                          controller: _searchController,
                          decoration: InputDecoration(
                            hintText: _searchClicked ? 'Xavier Alomaliza' : 'Ingrese su búsqueda',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _searchClicked = !_searchClicked;
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
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  _buildRoundButton(),
                  SizedBox(height: 10),
                  _buildRoundButton(),
                  SizedBox(height: 10),
                  _buildRoundButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRoundButton() {
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
