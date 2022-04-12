library home_screen;

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pattern_mobx/components/atomic_widget/custom_text_form_field.dart';
import 'package:pattern_mobx/components/home/view_model/home_view_model.dart';
import 'package:pattern_mobx/locator.dart';

part 'widget/form_widget.dart';
part 'widget/submit_button_widget.dart';

class HomeScreen extends StatelessWidget {
  final HomeViewModel _homeViewModel = locator<HomeViewModel>();

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FormWidget(),
            const SizedBox(height: 12),
            SubmitButtonWidget(),
            const SizedBox(height: 24),
            Observer(builder: (_) {
              return Text("User Name : ${_homeViewModel.user.name}\n"
                  "User Mail : ${_homeViewModel.user.email} ");
            })
          ],
        ));
  }
}
