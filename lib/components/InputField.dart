import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputField extends StatelessWidget {
  final String hint;
  final bool obscure;
  final IconData icon;
  final validator;
  final onSaved;
  final TextInputFormatter regex = FilteringTextInputFormatter(RegExp('[A-Za-z0-9]'), allow: true);

  InputField(
      {@required this.hint,
      @required this.obscure,
      @required this.icon,
      this.validator,
      this.onSaved});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        inputFormatters: [regex],
        onSaved: onSaved,
        validator: validator,
        obscureText: obscure,
        decoration: InputDecoration(prefixIcon: Icon(icon), hintText: hint,
          disabledBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          focusedErrorBorder: InputBorder.none,
        ),
      ),
    );
  }
}
