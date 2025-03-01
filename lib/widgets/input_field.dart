import 'package:flutter/material.dart';

import '../configs/colors/app_colors.dart';

class InputFields extends StatelessWidget {
  final bool? obtext;
  final String? text;
  final TextInputAction? action;
  final IconData? data;
  const InputFields({super.key,this.obtext,this.text,this.action,this.data});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obtext!,
      textInputAction: action!,
      decoration: InputDecoration(
        labelText: text,
        filled: true,
        fillColor: AppColors.button,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        prefixIcon: Icon(data, color: AppColors.primary),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: Colors.transparent), // Removes blue border
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: AppColors.primary, width: 2.0), // Custom focus color
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
