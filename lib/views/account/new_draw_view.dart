import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yiking/routes/constants_routes.dart';

import '../../services/auth/auth_service.dart';
import '../../services/auth/auth_user.dart';
import '../../services/auth/bloc/auth_bloc.dart';
import '../../services/auth/bloc/auth_state.dart';
import '../../services/firebase/draw/draw_storage.dart';

class NewDrawView extends StatefulWidget {
  const NewDrawView({super.key});

  @override
  State<NewDrawView> createState() => _NewDrawViewState();
}

class _NewDrawViewState extends State<NewDrawView> {
  late final DrawStorage drawStorage;
  late final AuthUser? currentUser;

  @override
  void initState() {
    drawStorage = DrawStorage();
    currentUser = AuthService().currentUser;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(makeAYiKingDrawRoute);
                },
                child: const Text('Effectuer un tirage avec l\'application'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(insertAYiKingDrawRoute);
                },
                child: const Text('Entrer un tirage manuellement'),
              ),
            ],
          ),
        );
      },
    );
  }
}
