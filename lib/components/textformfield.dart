import 'package:easypay/utils/color_constants.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final void Function(String?)? onSaved;
  final FormFieldValidator<String>? validator;
  final bool obscureText;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;

  const CustomTextFormField(
      {Key? key,
      this.hintText,
      this.onSaved,
      this.validator,
      this.keyboardType,
      this.obscureText = false,
      this.suffixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Theme.of(context)
          .textTheme
          .headlineMedium!
          .copyWith(fontWeight: FontWeight.w400,
            fontFamily: 'Montserrat',
          ),
      onSaved: onSaved,
      cursorColor: ColorConstant.white,
      textInputAction: TextInputAction.next,
      validator: validator,
      obscureText: obscureText,
      decoration: InputDecoration(hintText: hintText, suffixIcon: suffixIcon),
      keyboardType: keyboardType,
    );
  }
}
