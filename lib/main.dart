import 'package:flutter/material.dart';
import 'routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      initialRoute: '/',
      routes: routes,
    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/detail');
          },
          child: Text('Go to Detail Page'),
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
      )
    );
  }
}

class SourcePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Asal')
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DestinationPage()
            ),
          );
        },
        child: Hero(
          tag: 'avatarTag',
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/avatar.png'),
            radius: 50,
          ),
        ),
      ),
    );
  }
}

class DestinationPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Tujuan')
      ),
      body: Center(
        child: Hero(
          tag: 'avatarTag',
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/avatar.png'),
            radius: 150,
          ),
        ),
      ),
    );
  }
}
            
