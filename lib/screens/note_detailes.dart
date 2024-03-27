import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NoteDetailes extends StatefulWidget {
  const NoteDetailes({super.key});

  @override
  State<NoteDetailes> createState() => _NoteDetailesState();
}

class _NoteDetailesState extends State<NoteDetailes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('Edit Note'),
      ),
      body: Padding(
          padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
          child: ListView(
            children: <Widget>[
              ListTile(
                title: DropdownButton(
                  items: null,
                  onChanged: null,
                ),
              )
            ],
          )),
    );
  }
}
