import 'package:flutter/material.dart';
import 'package:todo/component/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade100,
      appBar: AppBar(
        backgroundColor: Colors.purple.shade300,
        title: Text(
          'To DO best',
          style: TextStyle(
              color: Colors.grey.shade900, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ToDoTile(
            taskName: 'Make tutorial',
            taskCompleted: true,
            onChange: (p0) {},
          ),
          ToDoTile(
            taskName: 'Make tutorial',
            taskCompleted: false,
            onChange: (value) {},
          ),
        ],
      ),
    );
  }
}
