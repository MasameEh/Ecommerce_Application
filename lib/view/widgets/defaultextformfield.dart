import 'package:ecommerce_app/core/constant/colors.dart';
import 'package:flutter/material.dart';

class DefaultTextFormField extends StatelessWidget {
  final String label;
  final String? hint;
  final IconData? suffix;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final VoidCallback? suffixPressed;
  final TextInputType type;
  final bool? isPassword;
  final double height;
  final bool readOnly;
  final Function(String)? onSubmit;

  const DefaultTextFormField({
    super.key,
    required this.label,
    required this.type,
    this.hint,
    this.controller,
    this.validator,
    this.isPassword,
    this.suffix,
    this.suffixPressed,
    this.height = 60,
    this.readOnly = false,
    this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword ?? false,
      controller: controller,
      readOnly: readOnly,
      autofocus: false,
      cursorHeight: 20,
      cursorColor: Colors.grey[500],
      validator: validator,
      onFieldSubmitted: onSubmit,
      keyboardType: type,
      scrollPhysics: const AlwaysScrollableScrollPhysics(),
      minLines: type == TextInputType.multiline ? 1 : null,
      maxLines: type == TextInputType.multiline ? 8 : 1,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: hint,
        contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
        hintStyle: const TextStyle(color: AppColor.grey, fontSize: 12),
        label: Text(label, style: TextStyle(color: Colors.grey[500]),),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
              color: Colors.grey[500]!,
          )
        ),
        enabledBorder:OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: Colors.grey[500]!,
            )
        ),

        suffixIcon: suffix != null
            ? IconButton(
                onPressed: suffixPressed,
                icon: Icon(
                  suffix,
                  color: AppColor.grey,
                  size: 20,
                ),
              )
            : null,
      ),
    );
  }
}
