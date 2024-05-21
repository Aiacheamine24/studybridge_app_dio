import 'package:dio_clean_learn/core/constants/app_sizes.dart';
import 'package:dio_clean_learn/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:dio_clean_learn/features/auth/presentation/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginWidgetUI extends StatelessWidget {
  const LoginWidgetUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Welcome back to Study Bridge',
            style: Theme.of(context).textTheme.displaySmall),
        gapH20,
        const LoginForm(),
        TextButton(
          onPressed: () {
            BlocProvider.of<AuthBloc>(context).add(GoToRegisterWidgetEvent());
          },
          child: const Text('Don\'t have an account? Register'),
        ),
      ],
    );
  }
}
