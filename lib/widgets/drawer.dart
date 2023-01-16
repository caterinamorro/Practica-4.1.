import 'package:flutter/material.dart';
import 'package:preferences_app/screens/screens.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 254, 197, 187),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 229, 217)
            )
          , child: null,),
          ListTile(
            leading: const Icon(Icons.shopping_basket),
            title: Text('Llista de la compra'),
            onTap: (){
              Navigator.pushReplacementNamed(context, HomeScreen.routerName);

            },
          ),
          ListTile(
            leading: const Icon(Icons.add_circle),
            title: Text('Afegir productes'),
            onTap: (){
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, SettingsScreen.routerName);
            },
          ),

        ],
      ),
    );
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Container(),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/menu-img.jpg'),
          fit: BoxFit.cover
        )
      ),
    );
  }
}