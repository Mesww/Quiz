import 'dart:ffi';

import 'package:flutter/material.dart';

class Quiz2Sec4 extends StatefulWidget {
  const Quiz2Sec4({Key? key}) : super(key: key);

  @override
  _Quiz2Sec4State createState() => _Quiz2Sec4State();
}

class _Quiz2Sec4State extends State<Quiz2Sec4> {
  List<Map> todo = [
    {'title': 'shopping', 'description': '7/5/2023'},
    {'title': 'party', 'description': '20/5/2023'},
    {'title': 'exam', 'description': '5/5/2023'}
  ];
  List<Map> done = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TODO'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Text(
            'Todo List',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 200,
            width: double.infinity,
            child: ListView.builder(
                itemCount: todo.length,
                itemBuilder: (BuildContext context, int index) {
                  final item = todo[index];
                  return Card(
                    child: ListTile(
                      title: Text(item['title']),
                      subtitle: Text('Due: ${item['description']}'),
                      trailing: IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          setState(() {
                            done.add(item);
                            todo.remove(item);
                          });
                        },
                      ),
                    ),
                  );
                }),
          ),
          Divider(
            color: Colors.grey,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Done',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 200,
            width: double.infinity,
            child: ListView.builder(
                itemCount: done.length,
                itemBuilder: (BuildContext context, int index) {
                  final itemdone = done[index];
                  return Card(
                    child: ListTile(
                      title: Text(itemdone['title']),
                      subtitle: Text('Due: ${itemdone['description']}'),
                      trailing: IconButton(
                        onPressed: () {
                          setState(() {
                            todo.add(itemdone);
                            done.remove(itemdone);
                          });
                        },
                        icon: Icon(Icons.remove),
                      ),
                    ),
                  );
                }),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Summary(
                              todo: todo,
                              done: done,
                            )));
              },
              child: Text('Submit'))
        ],
      ),
    );
  }
}

class Summary extends StatelessWidget {
  Summary({Key? key, required this.todo, required this.done}) : super(key: key);
  List<Map> todo;
  List<Map> done;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Summarry'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(children: [
            Text('Todo = ${todo.length} items'),
            Text('Done = ${done.length} items')
          ]),
        ),
      ),
    );
  }
}
