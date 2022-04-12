import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:pattern_mobx/components/home/model/user_model.dart';
part 'home_view_model.g.dart';

class HomeViewModel = _HomeViewModelBase with _$HomeViewModel;

abstract class _HomeViewModelBase with Store {
  @observable
  UserModel user = UserModel(
    name: "",
    email: "",
  );
  @observable
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @observable
  TextEditingController nameController = TextEditingController();
  @observable
  TextEditingController emailController = TextEditingController();

  @action
  submitButtonOnPressed() {
    bool? val = formKey.currentState?.validate();
    if (val == true) {
      formKey.currentState?.save();
      user = UserModel(
        name: nameController.text,
        email: emailController.text,
      );
    }
  }
}