import 'package:dio_clean_learn/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterWidgetUI extends StatelessWidget {
  const RegisterWidgetUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Register Widget'),
        TextButton(
          onPressed: () {
            BlocProvider.of<AuthBloc>(context).add(GoToLoginWidgetEvent());
          },
          child: const Text('Already have an account? Login'),
        ),
      ],
    );
  }
}
