import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.blueGrey[100],
            appBar: AppBar(
              title: const Text("My Movie List"),
            ),
            body: Movie()));
  }
}

class Movie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        width: 500,
        height: 100,
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(10),
        child: Row(children: [
          Column(children: [
            Image.asset(
              'images/avengers.jpeg',
              height: 80,
              width: 70,
              fit: BoxFit.contain,
            ),
          ]),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Avengers Infinity War"),
              SizedBox(height: 10),
              Text("2018"),
              SizedBox(height: 10),
              Text("Sci-Fi"),
              SizedBox(height: 10),
            ],
          ),
          const Spacer(),
          Container(
            alignment: AlignmentDirectional(2, 1),
            height: 150,
            width: 150,
            //color: Colors.amber,
            child: NumberToLargeStars(6),
          ),
        ]));
  }
}

class NumberToLargeStars extends StatelessWidget {
  final int number;

  NumberToLargeStars(this.number);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        number,
        (index) => const Icon(
          Icons.star,
          size: 25.0, // Adjust the size as needed
          color: Colors.yellow, // You can change the color too
        ),
      ),
    );
  }
}
