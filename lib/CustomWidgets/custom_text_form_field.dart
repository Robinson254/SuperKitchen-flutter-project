import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  String? Function(String?)? validator;
  bool? obsecureText;
  String? hintText;
  String? label;
  TextStyle? labelStyle;
  InputBorder? inputBorder;
  Widget? suffixIcon;
  bool? filled;
  Color? fillColor;
  CustomTextFormField({super.key, this.validator, this.hintText, this.label, this.labelStyle, this.obsecureText, required this.controller, this.inputBorder, this.suffixIcon, this.fillColor, this.filled});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.1,
      ),
      child: TextFormField(
        validator: validator,
        controller: controller,
        obscureText: obsecureText ?? false,
        decoration: InputDecoration(
          hintText: hintText ?? "",
          label: Text(
            label ?? "",
            style: const TextStyle(
              color: Color.fromARGB(255, 180, 146, 97),
              fontSize: 12,
            ),
          ),
          border: inputBorder ?? const UnderlineInputBorder(),
          suffixIcon: suffixIcon,
          fillColor: fillColor ?? Colors.transparent,
          filled: filled ?? false,
          contentPadding: const EdgeInsets.only(
            left: 20,
          ),
          hintStyle: const TextStyle(
            fontSize: 14,
            color: Color.fromARGB(255, 180, 146, 97)
          )
        ),
      ),
    );
  }
}