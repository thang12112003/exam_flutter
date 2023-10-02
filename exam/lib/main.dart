import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text('Hi Guy!'),
          actions: <Widget>[
            SizedBox(width: 10),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey[200],
                  filled: true,
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search your destination',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      minimumSize :const Size(120, 80),
                      primary: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: () {},
                    icon: Icon(Icons.hotel),
                    label: Text('Hotels'),
                  ),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      minimumSize :const Size(120, 80),
                      primary: Colors.pink,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: () {},
                    icon: Icon(Icons.flight),
                    label: Text('Flights'),
                  ),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      minimumSize :const Size(120, 80),
                      primary: Colors.teal,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: () {},
                    icon: Icon(Icons.all_out),
                    label: Text('All'),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Text('Popular Destinations',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
              SizedBox(height: 15),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  children: <Widget>[
                    _buildDestinationCard('Hoi An', 'assets/anh1.jpeg'),
                    _buildDestinationCard('Sai Gon', 'assets/anh2.jpeg'),
                    _buildDestinationCard('Hoi An', 'assets/anh3.jpeg'),
                    _buildDestinationCard('Sai Gon', 'assets/anh4.jpeg'),
                    _buildDestinationCard('Hoi An', 'assets/anh5.jpeg'),
                    _buildDestinationCard('Sai Gon', 'assets/anh1.jpeg'),
                    _buildDestinationCard('Hoi An', 'assets/anh2.jpeg'),
                    _buildDestinationCard('Sai Gon', 'assets/anh3.jpeg'),
                    _buildDestinationCard('Hoi An', 'assets/anh4.jpeg'),
                    _buildDestinationCard('Sai Gon', 'assets/anh5.jpeg'),
                    // ...
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.work),
              label: 'work',
            ),

          ],
        ),
      ),
    );
  }

  Widget _buildDestinationCard(String title, String imagePath) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
