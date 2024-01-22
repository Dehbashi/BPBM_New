import 'package:flutter/material.dart';

class UserSignInTextForm extends StatefulWidget {
  // const UserSignInTextForm({super.key});
  final String labelText;
  String? Function(String?)? validator;
  final TextInputType? keyboardType;
  IconData? icon;
  final void Function(String?)? onSaved;

  UserSignInTextForm({
    required this.keyboardType,
    required this.labelText,
    required this.validator,
    required this.onSaved,
    this.icon,
  });

  @override
  State<UserSignInTextForm> createState() => _UserSignInTextFormState();
}

class _UserSignInTextFormState extends State<UserSignInTextForm> {
  TextEditingController _controller = TextEditingController();
  String? errorText;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void clearTextField() {
    setState(() {
      _controller.text = '';
      errorText = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    String? Function(String?)? validator = widget.validator;
    return Container(
      child: TextFormField(
        onSaved: widget.onSaved,
        keyboardType: widget.keyboardType,
        validator: validator,
        style: TextStyle(
          color: Color(0xFF037E85),
          fontSize: 20,
          fontFamily: 'iranSans',
        ),
        textAlign: TextAlign.right,
        decoration: InputDecoration(
          hintText: widget.labelText,
          hintStyle: TextStyle(
            color: Colors.grey,
          ),
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          prefixIcon: widget.icon != null ? Icon(widget.icon) : null,
          suffixIcon: Tooltip(
            message: 'پاکسازی شماره',
            child: GestureDetector(
              onTap: clearTextField,
              child: Icon(
                widget.icon,
                color: Color(0xFF5E6E6D),
                size: 34,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
