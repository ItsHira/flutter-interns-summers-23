import 'package:flutter/material.dart';

class S3Home extends StatelessWidget {
  const S3Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo App'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: Column(
          children: [
            for (int i = 0; i < 5; i++)
              ListTile(
                leading: Checkbox(
                  value: i.isEven,
                  onChanged: (value) {},
                ),
                title: Text(
                  'Prepare for flutter interns lecture',
                  style: TextStyle(
                    decoration: i.isEven ? TextDecoration.lineThrough : null,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
