import 'package:flutter/material.dart';
import 'package:lab_test_2_teach/myapp.dart';

class Recive extends StatelessWidget {
  Recive({Key? key, required this.data}) : super(key: key);
  var data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Column(
        children: [
          Container(
            child: Text('${data['name']} ${data['description']}'),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => MyApp()));
              },
              child: Text('back'))
        ],
      ),
    );
  }
}
