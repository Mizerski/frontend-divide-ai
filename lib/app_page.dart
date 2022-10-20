import 'package:divideai/app_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppPage extends StatefulWidget {
  const AppPage({super.key});

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  final store = Modular.get<AppStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Divide Ai'),
      ),
      backgroundColor: const Color(0xffffffff),
      body: Center(
        child: Observer(builder: (_) {
          return Text(store.counter.toString());
        }),
      ),
      floatingActionButton: FloatingActionButton(
        child: const FaIcon(FontAwesomeIcons.penToSquare),
        onPressed: () {
          store.increment();
        },
      ),
    );
  }
}
