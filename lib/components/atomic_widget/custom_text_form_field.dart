import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;

  const CustomTextFormField({
    Key? key,
    required this.hintText,
    required this.controller,
  }) : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
        hintText: widget.hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      validator: validatorMethod,
    );
  }

  String? validatorMethod(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter a value";
    }
    return null;
  }

  @override
  void dispose() {
    super.dispose();
    widget.controller.dispose();
  }
}