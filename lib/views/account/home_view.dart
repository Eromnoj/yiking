import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yiking/services/auth/auth_service.dart';
import 'package:yiking/services/auth/auth_user.dart';
import 'package:yiking/services/firebase/draw/draw_storage.dart';
import 'package:yiking/views/account/widgets/custom_text_widget.dart';
import 'package:yiking/views/account/widgets/widget_list.dart';
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
  late int _seletedIndex;

  void _onItemTapped(int index) {
    setState(() {
      _seletedIndex = index;
    });
  }

  @override
  void initState() {
    _draw = DrawStorage();
    currentUser = AuthService().currentUser;
    _seletedIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: titleText('Mon Carnet Yi-King', fontSize: 35),
          ),
          body:
              widgetList(context, _draw, currentUser!).elementAt(_seletedIndex),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Accueil',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.list),
                label: 'Mes tirages',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_box),
                label: 'Mon compte',
              ),
            ],
            currentIndex: _seletedIndex,
            onTap: _onItemTapped,
          ),
        );
      },
    );
  }
}
