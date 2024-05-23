import 'package:dio_clean_learn/core/common/widgets/custom_button.dart';
import 'package:dio_clean_learn/core/common/widgets/snak_bar.dart';
import 'package:dio_clean_learn/core/constants/app_sizes.dart';
import 'package:dio_clean_learn/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final identifierController = TextEditingController();
    final passwordController = TextEditingController();

    void submit() {
      final identifier = identifierController.text;
      final password = passwordController.text;

      if (identifier.isEmpty || password.isEmpty) {
        customSnackBar(context,
            message: 'Please fill all fields', type: 'error');
      } else {
        context
            .read<AuthBloc>()
            .add(LoginEvent(identifier: identifier, password: password));
      }
    }

    return Padding(
      padding: const EdgeInsets.all(Sizes.p32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: identifierController,
            decoration: const InputDecoration(
              labelText: 'Email or Username',
            ),
            onEditingComplete: () => FocusScope.of(context).nextFocus(),
          ),
          gapH8,
          TextField(
            controller: passwordController,
            decoration: const InputDecoration(
              labelText: 'Password',
            ),
            obscureText: true,
            onEditingComplete: submit,
          ),
          gapH16,
          BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              // if (state is AuthError) {
              //   customSnackBar(context,
              //       message: state.message, type: state.type);
              // }
            },
            builder: (context, state) {
              return CustomButton(
                label: 'Login',
                onPressed: submit,
                icon: const Icon(Icons.login, color: Colors.white),
                textColor: Colors.white,
                isLoading: state is AuthLoading,
              );
            },
          ),
        ],
      ),
    );
  }
}
