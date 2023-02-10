import 'package:flutter/material.dart';

class Quiz1 extends StatefulWidget {
  const Quiz1({Key? key}) : super(key: key);

  @override
  _Quiz1State createState() => _Quiz1State();
}

class _Quiz1State extends State<Quiz1> {
  TextEditingController n1 = TextEditingController();
  TextEditingController n2 = TextEditingController();
  TextEditingController n3 = TextEditingController();
  List<dynamic> x = [];
  List<dynamic> checkx = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz1'),
      ),
      body: Column(
        children: [
          TextField(
            controller: n1,
            decoration: InputDecoration(hintText: 'Number1'),
          ),
          TextField(
            controller: n2,
            decoration: InputDecoration(hintText: 'Number2'),
          ),
          TextField(
            controller: n3,
            decoration: InputDecoration(hintText: 'Number3'),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  x.clear();
                  x.add(n1.text);
                  x.add(n2.text);
                  x.add(n3.text);
                  n1.clear();
                  n2.clear();
                  n3.clear();
                });
              },
              child: Text('Compute')),
          Text("Even = ${check(x)[0]} and Odd = ${check(x)[1]}"),
        ],
      ),
    );
  }

  List check(List x) {
    int c = 0, z = 0;
    List count = [];
    for (int i = 0; i < x.length; i++) {
      if (int.tryParse(x[i])! % 2 == 0) {
        c++;
      } else if (int.tryParse(x[i])! % 2 != 0) {
        z++;
      }
    }
    count.add(c.toString());
    count.add(z.toString());
    return count;
  }
}
