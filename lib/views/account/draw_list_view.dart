import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:yiking/services/firebase/draw/draw_structure.dart';

import '../../services/auth/auth_service.dart';
import '../../services/auth/auth_user.dart';
import '../../services/firebase/draw/draw_storage.dart';

class DrawListView extends StatefulWidget {
  const DrawListView({super.key});

  @override
  State<DrawListView> createState() => _DrawListViewState();
}

class _DrawListViewState extends State<DrawListView> {
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mes tirages'),
      ),
      body: StreamBuilder(
        stream: _draw.allDraws(userId: currentUser!.id),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.active:
              if (snapshot.hasData) {
                final draws = snapshot.data as Iterable<DrawStructure>;
                return ListView.builder(
                  itemCount: draws.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(draws.elementAt(index).question),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete_outline),
                        onPressed: () {
                          _draw.deleteNote(
                              documentId: draws.elementAt(index).documentId);
                        },
                      ),
                    );
                  },
                );
              } else {
                return const CircularProgressIndicator();
              }
            default:
              return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
