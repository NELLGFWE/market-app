import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: ListView(
            children: [
              Row(
                children: [
                  Expanded(
                      child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: const Icon(Icons.search),
                        hintText: 'بحث',
                        fillColor: Colors.grey[200],
                        filled: true),
                  )),
                  const Icon(Icons.menu)
                ],
              ),
              Container(height: 30),
              Text(
                'categres',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Container(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(100)),
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.laptop,
                          size: 50,
                        ),
                      ),
                      Text('laptop')
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(100)),
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.phone,
                          size: 50,
                        ),
                      ),
                      Text('phone')
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(100)),
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.gamepad,
                          size: 50,
                        ),
                      ),
                      Text('game')
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(100)),
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.motorcycle,
                          size: 50,
                        ),
                      ),
                      Text('motor')
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(100)),
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.golf_course,
                          size: 50,
                        ),
                      ),
                      Text('course')
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(100)),
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.gif_outlined,
                          size: 50,
                        ),
                      ),
                      Text('gift')
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(100)),
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.car_rental,
                          size: 50,
                        ),
                      ),
                      Text('car')
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
