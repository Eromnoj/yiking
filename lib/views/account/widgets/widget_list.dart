import 'package:flutter/material.dart';
import 'package:yiking/services/auth/auth_user.dart';
import 'package:yiking/services/firebase/draw/draw_storage.dart';
import 'package:yiking/views/account/account_view.dart';
import 'package:yiking/views/account/draw_list_view.dart';
import 'package:yiking/views/account/new_draw_view.dart';

List<Widget> widgetList(
    BuildContext context, DrawStorage drawStorage, AuthUser currentUser) {
  return [
    const NewDrawView(),
    const DrawListView(),
    const AccountView(),
  ];
}
