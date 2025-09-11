import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("QWERTY!!!"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(14, 238, 12, 213),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            child: Stack(
              children: [
            
                Image.network(
"https://upload.wikimedia.org/wikipedia/commons/4/47/PNG_transparency_demonstration_1.png",                  width: 500,
                  height: 500,
                  fit: BoxFit.cover,
                ),

                Positioned(
                  bottom: 10,
                  right: 10,
                  child: FloatingActionButton(
                    mini: true, // маленькая
                    onPressed: () {
                      print("Кнопка возле картинки нажата!");
                    },
                    child: const Icon(Icons.add),
                  ),
                ),
              ],
            ),
          ),

          const Spacer(),

          Container(
            padding: const EdgeInsets.all(10),
            color: Colors.grey.shade200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.home, size: 30),
                Icon(Icons.search, size: 30),
                Icon(Icons.favorite, size: 30),
                Icon(Icons.person, size: 30),
                Icon(Icons.settings, size: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
