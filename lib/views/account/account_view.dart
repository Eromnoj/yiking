import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yiking/extensions/buildcontext/loc.dart';
import 'package:yiking/services/auth/bloc/auth_event.dart';
import 'package:yiking/utilities/dialogs/confirm_delete_account_dialig.dart';
import 'package:yiking/views/widgets/custom_sliver_widget.dart';
import 'package:yiking/views/auth/login_view.dart';
import '../../services/auth/bloc/auth_bloc.dart';
import '../../services/auth/bloc/auth_state.dart';

class AccountView extends StatefulWidget {
  const AccountView({super.key});

  @override
  State<AccountView> createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state is AuthStateLoggedOut) {
          return const LoginView();
        } else if (state is AuthEventDeleteUser) {
          return const LoginView();
        } else {
          return CustomScrollView(
            slivers: [
              customAppBarSliver(context.loc.myAppScreenTitle, context),
              SliverToBoxAdapter(
                child: Center(
                  child: Column(children: [
                    Text(context.loc.deleteAccountQuestion),
                    ElevatedButton(
                      onPressed: () async {
                        await deleteAccountDialog(context);
                      },
                      child: Text(context.loc.deleteButton),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        context.read<AuthBloc>().add(const AuthEventLogOut());
                      },
                      child: Text(context.loc.logOutButton),
                    ),
                  ]),
                ),
              ),
            ],
          );
        }
      },
    );
  }
}
