import 'package:flutter/material.dart';
import 'package:to_do/categories_screen.dart';
import 'package:to_do/home.dart';

class DrawerNavigation extends StatefulWidget {
  const DrawerNavigation({super.key});

  @override
  State<DrawerNavigation> createState() => _DrawerNavigationState();
}

class _DrawerNavigationState extends State<DrawerNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpd4mJRIUwqgE8D_Z2znANEbtiz4GhI4M8NQ&usqp=CAU"),
              ),
              accountName: Text("adhil vattavada"),
              accountEmail: Text("adhil@gmail.com"),
              decoration: BoxDecoration(color: Colors.amber),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HomePage())),
            ),
            ListTile(
              leading: const Icon(Icons.view_list),
              title: const Text("Categories"),
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => CategoriesPage())),
            )
          ],
        ),
      ),
    );
  }
}
