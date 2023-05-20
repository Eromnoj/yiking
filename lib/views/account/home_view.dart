import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yiking/services/auth/auth_service.dart';
import 'package:yiking/services/auth/auth_user.dart';
import 'package:yiking/views/account/account_view.dart';
import 'package:yiking/views/account/draw_list_view.dart';
import 'package:yiking/views/account/new_draw_view.dart';
import 'package:yiking/views/account/widgets/custom_text_widget.dart';
import '../../services/auth/bloc/auth_bloc.dart';
import '../../services/auth/bloc/auth_state.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late final AuthUser? currentUser;
  int _seletedIndex = 0;
  final PageController _pageController = PageController();

  void _onItemTapped(int index) {
    _onPageSwipped(index);
    _pageController.animateToPage(
      _seletedIndex,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  void _onPageSwipped(int index) {
    setState(() {
      _seletedIndex = index;
    });
  }

  @override
  void initState() {
    currentUser = AuthService().currentUser;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: titleText(
              'Mon Carnet Yi-King',
              fontSize: 25,
            ),
          ),
          extendBody: true,
          body: PageView(
            controller: _pageController,
            onPageChanged: _onPageSwipped,
            children: const [
              NewDrawView(),
              DrawListView(),
              AccountView(),
            ],
          ),
          bottomNavigationBar: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.elliptical(80, 40),
              topRight: Radius.elliptical(80, 40),
            ),
            child: NavigationBar(
              animationDuration: const Duration(milliseconds: 300),
              destinations: const <Widget>[
                NavigationDestination(
                  icon: Icon(Icons.home),
                  label: 'Accueil',
                ),
                NavigationDestination(
                  icon: Icon(Icons.list),
                  label: 'Mes tirages',
                ),
                NavigationDestination(
                  icon: Icon(Icons.account_box),
                  label: 'Mon compte',
                ),
              ],
              onDestinationSelected: _onItemTapped,
              selectedIndex: _seletedIndex,
            ),
          ),
        );
      },
    );
  }
}
