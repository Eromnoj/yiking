import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yijing/extensions/buildcontext/loc.dart';
import 'package:yijing/services/auth/bloc/auth_event.dart';
import 'package:yijing/styles/path/background_clipper.dart';
import 'package:yijing/utilities/dialogs/confirm_delete_account_dialig.dart';
import 'package:yijing/views/widgets/custom_sliver_widget.dart';
import 'package:yijing/views/auth/login_view.dart';
import 'package:yijing/views/widgets/custom_text_widget.dart';
import '../../services/auth/bloc/auth_bloc.dart';
import '../../services/auth/bloc/auth_state.dart';

class AccountView extends StatefulWidget {
  const AccountView({super.key});

  @override
  State<AccountView> createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  final Uri url = Uri.parse('https://jomoreschi.fr/yiking');
  Future<void> _launchUrl() async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

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
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          ClipPath(
                            clipper: BackgroundClipperLineTitle(),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: MediaQuery.of(context).size.height / 12,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.amber,
                                    Colors.red,
                                  ],
                                ),
                              ),
                            ),
                          ),
                          titleText(
                            context.loc.yijingExplanationTitle,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: contentText(context.loc.yijingExplanationContent),
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          ClipPath(
                            clipper: BackgroundClipperLineTitle(),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: MediaQuery.of(context).size.height / 12,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.amber,
                                    Colors.red,
                                  ],
                                ),
                              ),
                            ),
                          ),
                          titleText(
                            context.loc.yijingHowToTitle,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: contentText(context.loc.yijingHowToContent),
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          ClipPath(
                            clipper: BackgroundClipperLineTitle(),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: MediaQuery.of(context).size.height / 12,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.amber,
                                    Colors.red,
                                  ],
                                ),
                              ),
                            ),
                          ),
                          titleText(
                            context.loc.yijingNoteTitle,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: contentText(context.loc.yijingNoteContent),
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Center(
                  child: Column(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          ClipPath(
                            clipper: BackgroundClipperLineTitle(),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: MediaQuery.of(context).size.height / 12,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.amber,
                                    Colors.red,
                                  ],
                                ),
                              ),
                            ),
                          ),
                          titleText(
                            context.loc.yijingManageTitle,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: _launchUrl,
                        child: contentText(context.loc.termsPrivacyLink,
                            textAlign: TextAlign.center),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            contentText(context.loc.deleteAccountQuestion),
                            ElevatedButton(
                              onPressed: () async {
                                await deleteAccountDialog(context);
                              },
                              child: Text(context.loc.deleteButton),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            contentText(context.loc.logOutQuestion),
                            ElevatedButton(
                              onPressed: () async {
                                context
                                    .read<AuthBloc>()
                                    .add(const AuthEventLogOut());
                              },
                              child: Text(context.loc.logOutButton),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        }
      },
    );
  }
}
