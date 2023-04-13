import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yiking/services/auth/auth_service.dart';
import 'package:yiking/services/auth/auth_user.dart';
import 'package:yiking/services/auth/bloc/auth_event.dart';
import 'package:yiking/services/firebase/draw/draw_storage.dart';
import 'package:yiking/views/account/draw_list_view.dart';
import 'package:yiking/views/account/widgets/drawer_menu.dart';
import 'package:yiking/views/auth/account_view.dart';
import '../../services/auth/bloc/auth_bloc.dart';
import '../../services/auth/bloc/auth_state.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late final DrawStorage _draw;
  late final AuthUser? currentUser;

  @override
  void initState() {
    _draw = DrawStorage();
    currentUser = AuthService().currentUser;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Mon Compte'),
          ),
          drawer: drawer(context),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    await _draw.createNewDraw(
                        userId: currentUser!.id,
                        date: DateTime.now(),
                        question: 'Est-ce que je dois tester ?',
                        draw: [6, 7, 8, 6, 9, 9]);
                  },
                  child: const Text('Effectuer un tirage avec l\'application'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Entrer un tirage manuellement'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
