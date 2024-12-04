import 'package:flutter/material.dart';
import 'package:instagram_clone_app/screens/custom_widget/text_field.dart';
import 'package:instagram_clone_app/utils/constants/colors.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _userName = TextEditingController();
    final TextEditingController _password = TextEditingController();
    final TextEditingController _email = TextEditingController();

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Create a account",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(
                height: 30,
              ),
              CTextField(
                controller: _userName,
                text: "Username",
              ),
              const SizedBox(
                height: 10,
              ),
              CTextField(
                controller: _email,
                text: "Enter your email",
              ),
              const SizedBox(
                height: 10,
              ),
              CTextField(
                controller: _password,
                text: "Create a password",
                ispass: true,
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: CColors.blueColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      "Login",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
