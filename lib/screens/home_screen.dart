import 'package:flutter/material.dart';
import 'package:preferences_app/widgets/widgets.dart';

import '../preferences/preferences.dart';

class HomeScreen extends StatelessWidget {
  static const String routerName = 'home';

  static List<String> _eliments = ['Macarrons', 'Platans', 'Peres'];

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Llista de la compra'),
          backgroundColor: Color.fromARGB(255, 254, 197, 187),
        ),
        drawer: const SideMenu(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: MyStatefulWidget(),
         
         
        ));
  }
}

class LabeledCheckbox extends StatelessWidget {

  const LabeledCheckbox({
    //super.key,
    required this.label,
    required this.padding,
    required this.value,
    required this.onChanged,
  });

  final String label;
  final EdgeInsets padding;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Padding(
        padding: padding,
        child: Row(
          children: <Widget>[
            Expanded(child: Text(label)),
            Checkbox(
              value: value,
              onChanged: (bool? newValue) {
                onChanged(newValue!);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {

  @override
  Widget build(BuildContext context) {
    return LabeledCheckbox(
      label: Preferences.nom,
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      value: Preferences.isEmpty,
      onChanged: (bool newValue) {
        setState(() {
          Preferences.isEmpty = newValue;
        });
      },
    );
  }
}

