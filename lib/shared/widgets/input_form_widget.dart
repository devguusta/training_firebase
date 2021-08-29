import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:firebase1/utils/constants/app_colors.dart';

class InputForm extends StatelessWidget {
  final String hintText;
  final String labelText;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String?>? onSaved;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscureText;
  final VoidCallback? onEditingComplete;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final FocusNode? focusNode;
  final Widget? suffixIcon;
  final Widget? icon;
  final Widget? suffix;
  final String? initialValue;
  final bool? enabled;
  final Icon? prefixIcon;
  const InputForm({
    Key? key,
    required this.hintText,
    required this.labelText,
    this.validator,
    this.onChanged,
    this.onSaved,
    this.controller,
    this.keyboardType,
    this.obscureText = false,
    this.onEditingComplete,
    this.textInputAction,
    this.inputFormatters,
    this.focusNode,
    this.suffixIcon,
    this.icon,
    this.suffix,
    this.initialValue,
    this.enabled,
    this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 48.0),
      child: TextFormField(
        initialValue: initialValue,
        enabled: enabled,
        onChanged: onChanged,
        onSaved: onSaved,
        obscureText: obscureText,
        keyboardType: keyboardType,
        validator: validator,
        controller: controller,
        focusNode: focusNode,
        
        textInputAction: textInputAction,
        onEditingComplete: onEditingComplete,
        inputFormatters: inputFormatters,
        decoration: InputDecoration(
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.kPurple),
          ),
          focusColor: AppColors.kPurple,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          icon:  icon,
          suffix: suffix,
          hintText: hintText,
          hintStyle: const TextStyle(
            fontFamily: "Roboto",
            fontWeight: FontWeight.w400,
            fontSize: 16,
            letterSpacing: 0.15,
          ),
          labelText: labelText,
          labelStyle: const TextStyle(
            fontFamily: "Roboto",
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: Color.fromRGBO(52, 48, 144, 1),
            letterSpacing: 0.15,
          ),
        ),
      ),
    );
  }
}
