import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yiking/services/firebase/draw/draw_structure.dart';

import '../../services/auth/bloc/auth_bloc.dart';
import '../../services/auth/bloc/auth_state.dart';

class UniqueDrawView extends StatefulWidget {
  const UniqueDrawView({super.key});

  @override
  State<UniqueDrawView> createState() => _UniqueDrawViewState();
}

class _UniqueDrawViewState extends State<UniqueDrawView> {
  @override
  Widget build(BuildContext context) {
    final modalRoute = ModalRoute.of(context);
    DrawStructure? draw;
    if (modalRoute != null) {
      draw = modalRoute.settings.arguments as DrawStructure;
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mon tirage'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(draw?.question ?? 'Pas de questions'),
          ],
        ),
      ),
    );
  }
}
