import 'package:flutter/material.dart';

class LearnFlutterpage extends StatefulWidget {
  const LearnFlutterpage({super.key});

  @override
  State<LearnFlutterpage> createState() => _LearnFlutterpageState();
}

class _LearnFlutterpageState extends State<LearnFlutterpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learn Flutter"),
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: Column(
        children: [
          Image.asset('images/bakugo.jpg'),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.black,
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            color: Colors.blueGrey,
            width: double.infinity,   //make it to full width
            child: const Center(
              child:  Text(
                "this is a text",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
