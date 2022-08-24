// ignore_for_file: overridden_fields, annotate_overrides

import 'package:mentoria_clean_arch/src/features/login/domain/entities/login.dart';

class LoginResponseModel extends Login {
  final String email;
  final String password;
  final String userId;
  final String token;

  LoginResponseModel({
    required this.email,
    required this.password,
    required this.userId,
    required this.token,
  }) : super(email: email, password: password);
}
