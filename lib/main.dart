import 'package:flutter/material.dart';
import 'package:t1/deteals.dart';

List cataloge = [
  {"icon": (Icons.laptop), "title": "laptop"},
  {"icon": (Icons.phone), "title": "phone"},
  {"icon": (Icons.gamepad), "title": "game"},
  {"icon": (Icons.motorcycle), "title": "motor"},
  {"icon": (Icons.golf_course), "title": "golf"},
  {"icon": (Icons.card_giftcard), "title": "gift"},
  {"icon": (Icons.car_rental), "title": "car"}
];
List pro = [
  {
    "image": "images/img1.jpg",
    "name": "hetphone",
    "bio": "best hetphone",
    "price": "20\$"
  },
  {
    "image": "images/img2.jpg",
    "name": "keybord",
    "bio": "best keybord",
    "price": "20\$"
  },
  {
    "image": "images/img3.jpg",
    "name": "mouse",
    "bio": "best mouse",
    "price": "20\$"
  },
  {
    "image": "images/img4.jpg",
    "name": "chier",
    "bio": "best chear",
    "price": "20\$"
  },
  {
    "image": "images/img5.jpg",
    "name": "hetphone",
    "bio": "best hetphone",
    "price": "20\$"
  },
  {
    "image": "images/img6.jpg",
    "name": "hetphone",
    "bio": "best hetphone",
    "price": "20\$"
  },
  {
    "image": "images/img7.jpg",
    "name": "hetphone",
    "bio": "best hetphone",
    "price": "20\$"
  },
  {
    "image": "images/img8.jpg",
    "name": "hetphone",
    "bio": "best hetphone",
    "price": "20\$"
  },
  {
    "image": "images/img9.jpg",
    "name": "hetphone",
    "bio": "best hetphone",
    "price": "20\$"
  },
  {
    "image": "images/img10.jpg",
    "name": "hetphone",
    "bio": "best hetphone",
    "price": "20\$"
  },
  {
    "image": "images/img1.jpg",
    "name": "hetphone",
    "bio": "best hetphone",
    "price": "20\$"
  },
  {
    "image": "images/img2.jpg",
    "name": "keybord",
    "bio": "best keybord",
    "price": "20\$"
  },
  {
    "image": "images/img3.jpg",
    "name": "mouse",
    "bio": "best mouse",
    "price": "20\$"
  },
  {
    "image": "images/img4.jpg",
    "name": "chier",
    "bio": "best chear",
    "price": "20\$"
  },
  {
    "image": "images/img5.jpg",
    "name": "hetphone",
    "bio": "best hetphone",
    "price": "20\$"
  },
  {
    "image": "images/img6.jpg",
    "name": "hetphone",
    "bio": "best hetphone",
    "price": "20\$"
  },
  {
    "image": "images/img7.jpg",
    "name": "hetphone",
    "bio": "best hetphone",
    "price": "20\$"
  },
  {
    "image": "images/img8.jpg",
    "name": "hetphone",
    "bio": "best hetphone",
    "price": "20\$"
  },
  {
    "image": "images/img9.jpg",
    "name": "hetphone",
    "bio": "best hetphone",
    "price": "20\$"
  },
  {
    "image": "images/img10.jpg",
    "name": "hetphone",
    "bio": "best hetphone",
    "price": "20\$"
  },
];

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
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.badge), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ]),
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
              const Text(
                'categres',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Container(height: 20),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  itemCount: (cataloge.length),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          height: 50,
                          width: 50,
                          child: Icon(cataloge[index]['icon']),
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(100)),
                          padding: EdgeInsets.all(10),
                        ),
                        Text(cataloge[index]["title"])
                      ],
                    );
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),
              const Text(
                'best selling',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Container(
                height: 20,
              ),
              GridView.builder(
                itemCount: pro.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisExtent: 175),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => itesms(data: pro[index])));
                    },
                    child: Card(
                      child: Column(
                        children: [
                          Container(
                            child: Image.asset(pro[index]['image']),
                          ),
                          Text(pro[index]['name']),
                          Text(pro[index]['bio']),
                          Text(pro[index]['price']),
                        ],
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
