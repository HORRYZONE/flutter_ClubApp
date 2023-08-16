import 'package:flutter/material.dart';

class LearnFlutterpage extends StatefulWidget {
  const LearnFlutterpage({super.key});

  @override
  State<LearnFlutterpage> createState() => _LearnFlutterpageState();
}

class _LearnFlutterpageState extends State<LearnFlutterpage> {
  bool isSwitch = false; //must be before build so that it not loop overwrite
  bool? isCheckbox = false;
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
        actions: [
          IconButton(
              onPressed: () {
                debugPrint('action');
              },
              icon: Icon(Icons.info_outline)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
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
              width: double.infinity, //make it to full width
              child: const Center(
                child: Text(
                  "this is a text",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: isSwitch
                      ? Colors.green
                      : Colors
                          .blue, //if isSwitch true (?), then color green. else(:) color blue
                ),
                onPressed: () {
                  debugPrint('Elevated btn');
                },
                child: Text('elevate btn')),
            OutlinedButton(
                onPressed: () {
                  debugPrint('Outline btn');
                },
                child: const Text('Outline btn')),
            TextButton(
                onPressed: () {
                  debugPrint('Text Button');
                },
                child: const Text('text button')),
            GestureDetector(
              behavior:
                  HitTestBehavior.opaque, //anywhere inside the row can trigger
              onTap: () {
                debugPrint('this is the row');
              },
              child: const Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceEvenly, //center it on x axis
                children: [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                  Text('Row widget'),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            Switch(
                value: isSwitch,
                onChanged: (bool newBool) {
                  setState(() {
                    isSwitch = newBool;
                  });
                }),
            Checkbox(
                value: isCheckbox,
                onChanged: (bool? newBool) {
                  //the newBool need to be nullable
                  setState(() {
                    isCheckbox = newBool;
                  });
                }),
            Image.network(
                'https://logos-world.net/wp-content/uploads/2023/03/Dead-Kennedys-Emblem.png')
          ],
        ),
      ),
    );
  }
}
