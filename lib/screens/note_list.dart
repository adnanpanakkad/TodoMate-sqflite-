import 'package:flutter/material.dart';
import 'package:to_do/screens/note_detailes.dart';

class NoteListScreen extends StatefulWidget {
  const NoteListScreen({super.key});

  @override
  State<NoteListScreen> createState() => _NoteListScreenState();
}

int count = 0;

class _NoteListScreenState extends State<NoteListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('Notes'),
      ),
      body: getNoteListView(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => NoteDetailes()));
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }

  ListView getNoteListView() {
    TextStyle? titleStyle = Theme.of(context).textTheme.bodySmall;
    return ListView.builder(
        itemCount: count,
        itemBuilder: (BuildContext context, int position) {
          return Card(
            color: Colors.white,
            elevation: 0.0,
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.amber,
                child: Icon(Icons.arrow_forward),
              ),
              title: Text(
                'Dummy title',
                style: titleStyle,
              ),
              subtitle: const Text('Dummy sub title'),
              trailing: const Icon(Icons.delete),
              onTap: () {
                debugPrint('listtile tapped');
              },
            ),
          );
        });
  }
}
