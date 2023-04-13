import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../services/auth/bloc/auth_bloc.dart';
import '../../../services/auth/bloc/auth_event.dart';
import '../../auth/account_view.dart';
import '../draw_list_view.dart';

Drawer drawer(BuildContext context) {
  return Drawer(
    child: ListView.builder(
      itemCount: drawerMenu(context).length,
      itemBuilder: (context, index) {
        return drawerMenu(context)[index];
      },
    ),
  );
}

List<ListTile> drawerMenu(BuildContext context) {
  List<ListTile> drawerMenu = [
    ListTile(
      title: const Text('Mes tirages'),
      trailing: const Icon(Icons.list_alt),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const DrawListView(),
          ),
        );
      },
    ),
    ListTile(
      title: const Text('Mon Comptes'),
      trailing: const Icon(Icons.account_box_rounded),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const AccountView(),
          ),
        );
      },
    ),
    ListTile(
        title: const Text('Me deconnecter'),
        trailing: const Icon(Icons.logout_outlined),
        onTap: () async {
          context.read<AuthBloc>().add(const AuthEventLogOut());
        }),
  ];

  return drawerMenu;
}
