import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'package:get/get.dart';
import 'package:sample_project/app/resources/app_styles.dart';
import '../controllers/auth_controller.dart';

class AuthView extends GetView<AuthController> {
  String email = '', password = '';

  final _formKey = GlobalKey<FormState>();

  void _onTap({bool register = false}) async {
    final formData = _formKey.currentState!;
    if (!formData.validate()) return;

    formData.save();
    await controller.auth(email: email, password: password, register: register);
  }

  final emailValidator = MultiValidator([
    RequiredValidator(errorText: 'enter a valid email address'),
    EmailValidator(errorText: 'enter a valid email address'),
  ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login to your account'),
        centerTitle: true,
      ),
      body: ListView(children: [
        Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                const _ErrorMessageWidget(),
                const Text(
                  'Email',
                  style: AppStyles.textStyle,
                ),
                const SizedBox(height: 5),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  keyboardType: TextInputType.emailAddress,
                  decoration: AppStyles.textFieldDecorator,
                  onSaved: (newValue) => email = newValue!,
                  validator: emailValidator,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Password',
                  style: AppStyles.textStyle,
                ),
                const SizedBox(height: 5),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  onSaved: (newValue) => password = newValue!,
                  decoration: AppStyles.textFieldDecorator,
                  obscureText: true,
                  validator: RequiredValidator(errorText: 'enter a password'),
                ),
                const SizedBox(height: 25),
                Obx(() {
                  final value = controller.isAuthProgress.value;

                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          if (!value) _onTap(register: false);
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFF01B4E4)),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          textStyle: MaterialStateProperty.all(
                            const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                          padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 8,
                            ),
                          ),
                        ),
                        child: value == false
                            ? Text('Login')
                            : const SizedBox(
                                width: 15,
                                height: 15,
                                child:
                                    CircularProgressIndicator(strokeWidth: 2),
                              ),
                      ),
                      TextButton(
                        style: AppStyles.linkButton,
                        onPressed: () {
                          if (!value) _onTap(register: true);
                        },
                        child: value == false
                            ? Text('Register')
                            : const SizedBox(
                                width: 15,
                                height: 15,
                                child:
                                    CircularProgressIndicator(strokeWidth: 2),
                              ),
                      ),
                    ],
                  );
                }),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class _ErrorMessageWidget extends GetView<AuthController> {
  const _ErrorMessageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Obx(
        () => Center(
          child: Text(
            controller.errorMessage.value ?? '',
            style: const TextStyle(
              fontSize: 17,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
