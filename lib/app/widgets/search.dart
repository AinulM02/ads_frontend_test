import 'package:ads_frontend_test/app/themes/app_color.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
    required this.hintText,
    required this.inputController,
    this.suffix,
    this.padding,
    this.obscureText,
    this.prefix,
  });

  final String hintText;
  final Widget? suffix;
  final Widget? prefix;
  final TextEditingController inputController;
  final EdgeInsetsGeometry? padding;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextFormField(
        style: TextStyle(
          fontSize: 14,
          color: AppColors.black,
          fontWeight: FontWeight.w200,
        ),
        controller: inputController,
        obscureText: obscureText ?? false,
        decoration: InputDecoration(
          suffixIcon: suffix,
          prefixIcon: prefix,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 14,
            vertical: 16,
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: AppColors.grey.withOpacity(0.5),
          ),
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(14)),
            borderSide: BorderSide(color: AppColors.transparant),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(14)),
            borderSide: BorderSide(color: AppColors.transparant),
          ),
        ),
      ),
    );
  }
}
