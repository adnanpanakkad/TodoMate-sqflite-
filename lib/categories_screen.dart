import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:to_do/home.dart';
import 'package:to_do/models/category.dart';
import 'package:to_do/services/category_services.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  final _categoryNameController = TextEditingController();
  final _categoryDescriptionController = TextEditingController();

  final _category = Categorys();
  final _categoryServices = CategoryServices();

  _showFormDialoge(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (pram) {
          return AlertDialog(
            actions: <Widget>[
              ElevatedButton(
                  onPressed: () {
                    _category.name = _categoryNameController.text;
                    _category.description = _categoryDescriptionController.text;
                    _categoryServices.saveCategory(_category);
                  },
                  child: const Text(
                    "save",
                  )),
              ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    "cancel",
                  )),
            ],
            title: const Text('Categories form'),
            content: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: _categoryNameController,
                    decoration: const InputDecoration(
                      hintText: "Write a Category",
                      labelText: "category",
                    ),
                  ),
                  TextField(
                    controller: _categoryDescriptionController,
                    decoration: const InputDecoration(
                      hintText: "Write a description",
                      labelText: "description",
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Categories"),
        backgroundColor: Colors.blue,
        leading: ElevatedButton(
            style: ElevatedButton.styleFrom(
                elevation: 0.0, backgroundColor: Colors.blue),
            onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const HomePage())),
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
      ),
      body: const Center(child: Text("welcoe to categorie page")),
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {
          _showFormDialoge(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
