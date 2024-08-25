import 'package:flutter/material.dart';

class itesms extends StatefulWidget {
  final data;
  const itesms({super.key, this.data});

  @override
  State<itesms> createState() => _itesmsState();
}

class _itesmsState extends State<itesms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[200],
        ),
        body: ListView(
          children: [
            Column(
              children: [
                Image.asset(widget.data['image']),
                Container(
                  height: 20,
                ),
                Text(widget.data['name']),
                Container(
                  height: 20,
                ),
                Text(widget.data['bio']),
                Container(
                  height: 20,
                ),
                Text(widget.data['price']),
              ],
            )
          ],
        ));
  }
}
