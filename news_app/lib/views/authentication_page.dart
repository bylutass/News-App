import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/authentication_controller.dart';

class AuthenticationPage extends GetView<AuthenticationController> {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('AuthenticationPage')),
        body: const SafeArea(child: Text('AuthenticatorController')));
  }
}
