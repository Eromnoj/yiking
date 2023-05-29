import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yiking/services/auth/auth_service.dart';
import 'package:yiking/services/auth/auth_user.dart';
import 'package:yiking/views/account/account_view.dart';
import 'package:yiking/views/account/draw_list_view.dart';
import 'package:yiking/views/account/full_yiking_view.dart';
import 'package:yiking/views/account/new_draw_view.dart';
import 'package:yiking/services/auth/bloc/auth_bloc.dart';
import 'package:yiking/services/auth/bloc/auth_state.dart';

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
          extendBody: true,
          body: PageView(
            controller: _pageController,
            onPageChanged: _onPageSwipped,
            children: const [
              NewDrawView(),
              DrawListView(),
              FullYikingView(),
              AccountView(),
            ],
          ),
          bottomNavigationBar: CurvedNavigationBar(
            items: [
              const ImageIcon(
                AssetImage('assets/img/icons/coin_icon.png'),
                color: Colors.red,
              ),
              ImageIcon(
                const AssetImage('assets/img/icons/list_icon.png'),
                color: Colors.amber.shade900,
              ),
              ImageIcon(
                const AssetImage('assets/img/icons/yiking_icon.png'),
                color: Colors.orange.shade400,
              ),
              ImageIcon(
                const AssetImage('assets/img/icons/question_icon.png'),
                color: Colors.yellow.shade700,
              ),
            ],
            onTap: _onItemTapped,
            index: _seletedIndex,
            backgroundColor: Colors.transparent,
            color: const Color.fromARGB(255, 250, 236, 211),
            height: 50,
            animationDuration: const Duration(milliseconds: 300),
          ),
        );
      },
    );
  }
}
