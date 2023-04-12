import 'package:amana_task/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    Key? key,
    required this.controller,
    required this.inputType,
    this.isPassword = false,
    this.validate,
    required this.hint,
    required this.prefixIcon,
  }) : super(key: key);
  final TextEditingController controller;
  final bool isPassword;
  final TextInputType inputType;
  final String hint;
  final String prefixIcon;
  final String? Function(String?)? validate;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _obscureText = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 1,
      textAlignVertical: TextAlignVertical.center,
      controller: widget.controller,
      validator: widget.validate,
      keyboardType: widget.inputType,
      obscureText: widget.isPassword == true ? !_obscureText : false,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 16),
      decoration: InputDecoration(
        hintText: widget.hint,
        prefixIcon: Align(
          widthFactor: 1.0,
          heightFactor: 1.0,
          child: SvgPicture.asset(
            widget.prefixIcon,
          ),
        ),
        suffixIcon: widget.isPassword == true
            ? IconButton(
                onPressed: () {
                  setState(
                    () {
                      _obscureText = !_obscureText;
                    },
                  );
                },
                icon: Icon(
                  _obscureText == true
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                  color: _obscureText == true
                      ? AppColors.darkGrey
                      : AppColors.primary,
                ),
              )
            : null,
      ),
    );
  }
}
