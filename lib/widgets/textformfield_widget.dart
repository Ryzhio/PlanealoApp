import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextInputType? keyboardType;
  final String? hintText;
  final int? maxLines;
  final String? initialValue;
  final Function(String)? onChanged;

  const CustomTextFormField(
      {super.key,
      this.initialValue,
      this.keyboardType,
      this.hintText,
      this.maxLines = 1,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      borderRadius: BorderRadius.circular(15),
      elevation: 20,
      color: const Color.fromARGB(66, 158, 158, 158),
      child: TextFormField(
        onChanged: onChanged!,
        initialValue: initialValue,
        maxLines: maxLines,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          hintText: hintText,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 2, color: Colors.white),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 2, color: Colors.white),
            borderRadius: BorderRadius.circular(15),
          ),
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.all(15),
        ),
      ),
    );
  }
}
