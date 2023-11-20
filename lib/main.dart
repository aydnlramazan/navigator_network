import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "title",
      home: Scaffold(
        appBar: AppBar(
          title: Text("DAĞ"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.separated(
            separatorBuilder: (context, index) =>
                SizedBox(height: 8), // Boşluk ekleniyor
            itemCount: 3,
            itemBuilder: (context, index) {
              return Image.network(
                "https://images.pexels.com/photos/12762122/pexels-photo-12762122.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              );
            },
          ),
        ),
      ),
    );
  }
}
