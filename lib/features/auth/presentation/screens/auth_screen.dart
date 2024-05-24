import 'package:dio_clean_learn/core/common/widgets/snak_bar.dart';
import 'package:dio_clean_learn/core/constants/app_sizes.dart';
import 'package:dio_clean_learn/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:dio_clean_learn/features/auth/presentation/widgets/login_widget.dart';
import 'package:dio_clean_learn/features/auth/presentation/widgets/register_widget.dart';
import 'package:dio_clean_learn/features/auth/presentation/widgets/side_image.dart';
import 'package:dio_clean_learn/features/auth/presentation/widgets/title_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AuthScreen extends StatelessWidget {
  /// Default screen key name
  static const String screenName = '/authentification';
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        body: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SideImage(),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const TitleDecoration(),
                  gapH32,
                  // LOGIC FOR SELETED WIDGET HERE
                  BlocConsumer<AuthBloc, AuthState>(
                    listener: (context, state) {
                      if (state is AuthSuccess) {
                        context.go('/home');
                      } else if (state is AuthError) {
                        customSnackBar(context,
                            message: state.message, type: 'error');
                      }
                    },
                    builder: (context, state) {
                      if (state is RegisterWidget) {
                        return const RegisterWidgetUI();
                      } else {
                        return const LoginWidgetUI();
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
