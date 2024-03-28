import 'package:flutter/material.dart';

class NoteDetailes extends StatefulWidget {
  const NoteDetailes({super.key});

  @override
  State<NoteDetailes> createState() => _NoteDetailesState();
}

class _NoteDetailesState extends State<NoteDetailes> {
  static var _priorities = ['High', 'Low'];
  TextEditingController titilecontroller = TextEditingController();
  TextEditingController discriptioncontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    TextStyle? textStyle = Theme.of(context).textTheme.titleLarge;
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
                  items: _priorities.map((String dropDownStringItem) {
                    return DropdownMenuItem<String>(
                      value: dropDownStringItem,
                      child: Text(dropDownStringItem),
                    );
                  }).toList(),
                  style: textStyle,
                  value: 'Low',
                  onChanged: (valueSelectedByUser) {
                    setState(() {
                      print('user selected ${valueSelectedByUser}');
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                child: TextField(
                  controller: titilecontroller,
                  style: textStyle,
                  onChanged: (value) {
                    print('soething changed in ttitle');
                  },
                  decoration: InputDecoration(
                    labelText: 'tittle',
                    labelStyle: textStyle,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                child: TextField(
                  controller: discriptioncontroller,
                  style: textStyle,
                  onChanged: (value) {
                    print('soething changed in discription');
                  },
                  decoration: InputDecoration(
                    labelText: 'discription',
                    labelStyle: textStyle,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                print('seved ');
                              });
                            },
                            child: const Text('Save'))),
                    SizedBox(width: 10),
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                print('Delete ');
                              });
                            },
                            child: const Text('Delete'))),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
