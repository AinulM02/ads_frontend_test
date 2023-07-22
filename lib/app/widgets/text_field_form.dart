import 'package:ads_frontend_test/app/themes/app_color.dart';
import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    super.key,
    required this.hintText,
    this.inputController,
    this.label,
    this.suffix,
    this.padding,
    this.obscureText,
    this.enabled,
    this.hintStyle,
  });

  final String hintText;
  final String? label;
  final Widget? suffix;
  final TextEditingController? inputController;
  final EdgeInsetsGeometry? padding;
  final bool? obscureText;
  final bool? enabled;
  final TextStyle? hintStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label ?? '',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          TextFormField(
            enabled: enabled ?? true,
            style: TextStyle(
              fontSize: 14,
              color: AppColors.black,
              fontWeight: FontWeight.w200,
            ),
            controller: inputController,
            obscureText: obscureText ?? false,
            decoration: InputDecoration(
              suffixIcon: suffix,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 16,
              ),
              hintText: hintText,
              hintStyle: hintStyle ??
                  TextStyle(
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
        ],
      ),
    );
  }
}
