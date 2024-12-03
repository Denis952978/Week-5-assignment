import 'package:flutter/material.dart';

void main() {
  runApp(DiaryApp());
}

class DiaryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Diary App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DiaryHomePage(),
    );
  }
}

class DiaryHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diary App'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Welcome Message
            Text(
              'Welcome to Your Diary!',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            
            // ElevatedButton for Adding Diary Entry
            ElevatedButton(
              onPressed: () {
                print('Diary Entry: Create a new memory!');
              },
              child: Text('Add a Diary Entry'),
            ),
            SizedBox(height: 20),
            
            // Image of a Diary
            Image.network(
              'https://images.app.goo.gl/MwC2fWnsrgpTY93J7', // Replace with a diary-themed image URL
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
