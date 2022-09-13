import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/custom_color.dart';
import '../../utils/custom_style.dart';
import '../../utils/dimensions.dart';

class TextInputField extends StatelessWidget {
  const TextInputField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.keyboardType,
  }) : super(key: key);
  final TextEditingController controller;
  final String hintText;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      controller: controller,
      style: CustomStyle.inputTextStyle,
      keyboardType: keyboardType,
      textInputAction: TextInputAction.next,
      onSaved: (value) => controller.text = value!,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: hintText,
        hintStyle: CustomStyle.hintTextStyle,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 20.w,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dimensions.radius * 0.5),
          borderSide: const BorderSide(
            width: 2,
            color: Colors.white,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dimensions.radius * 0.5),
          borderSide: const BorderSide(
            width: 2,
            color: Colors.white,
          ),
        ),
        fillColor: CustomColor.primaryColor.withOpacity(0.2),
        filled: true,
      ),
    );
  }
}
