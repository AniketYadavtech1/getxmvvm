import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginViewModel  extends GetxController{


  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController();

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode= FocusNode().obs;
  



}