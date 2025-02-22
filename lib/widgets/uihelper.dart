import 'package:flutter/material.dart';

class UiHelper {
  /// A reusable custom text button with blue text.
  static Widget customTextButton({
    required String text,
    required VoidCallback onPressed,
    required String buttonname,
    // required Null Function() callback,
  }) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 12,
          color: Color(0XFF3797EF),
        ),
      ),
    );
  }

  /// A reusable custom elevated button with blue background.
  static Widget customElevatedButton({
    required String buttonText,
    required VoidCallback onPressed,
  }) {
    return SizedBox(
      height: 50,
      width: 343,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0XFF3797EF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        child: Text(
          buttonText,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  /// A reusable custom text field.
  static Widget customTextField({
    required TextEditingController controller,
    required String hintText,
    required bool obscureText,
    required TextInputType keyboardType,
    //required String text, required bool tohide,
  }) {
    return Container(
      height: 50,
      width: 343,
      decoration: BoxDecoration(
        color: const Color(0XFF121212),
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.white24),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: TextField(
          controller: controller,
          obscureText: obscureText,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }

  /// A reusable custom image loader.
  static Widget customImage(
    { required String imgurl}) {
    return Image.asset(
      imgurl,
      fit: BoxFit.contain,
      errorBuilder: (context, error, stackTrace) {
        return const Icon(
          Icons.error,
          color: Colors.red,
          size: 50,
        );
      },
    );
  }

  // static customButton({required Null Function() callback, required String buttonname}) {}
}
