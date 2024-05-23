import 'package:dio_clean_learn/core/common/widgets/custom_button.dart';
import 'package:dio_clean_learn/core/common/widgets/snak_bar.dart';
import 'package:dio_clean_learn/core/constants/app_sizes.dart';
import 'package:dio_clean_learn/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    final usernameController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    void submit() {
      final username = usernameController.text;
      final email = emailController.text;
      final password = passwordController.text;

      print('Username: $username, Email: $email, Password: $password');
    }

    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: usernameController,
            decoration: const InputDecoration(
              labelText: 'Username',
            ),
            onEditingComplete: () => FocusScope.of(context).nextFocus(),
          ),
          gapH8,
          TextField(
            controller: emailController,
            decoration: const InputDecoration(
              labelText: 'Email',
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
                label: 'Register',
                onPressed: submit,
                icon: const Icon(Icons.login, color: Colors.white),
                textColor: Colors.white,
                isLoading: state is AuthLoading ? true : false,
              );
            },
          ),
        ],
      ),
    );
  }
}
