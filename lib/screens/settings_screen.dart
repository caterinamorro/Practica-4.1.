import 'package:flutter/material.dart';
import 'package:preferences_app/providers/theme_provider.dart';
import 'package:preferences_app/widgets/widgets.dart';
import 'package:provider/provider.dart';

import '../preferences/preferences.dart';

class SettingsScreen extends StatefulWidget {
    static const String routerName = 'settings';

  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
/*
  bool _isDarkMode = false;
  int _genere = 1;
  String _nom = 'Jaume Camps';
  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Afegir producte'),
        backgroundColor: Color.fromARGB(255, 254, 197, 187),
      ),
      drawer: const SideMenu(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  initialValue: Preferences.nom,
                  onChanged: (value){
                    Preferences.nom = value;
                    setState(() {});
                  },
                  decoration: InputDecoration(
                    labelText: 'Producte Nou'
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}