// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FormContainerWidget extends StatefulWidget {
  final TextEditingController? controller;
  final Key? fieldKey;
  final bool? isPasswordField;
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmitted;
  final TextInputType? inputType;

  const FormContainerWidget(
      {this.controller,
      this.fieldKey,
      this.helperText,
      this.hintText,
      this.inputType,
      this.isPasswordField,
      this.labelText,
      this.onFieldSubmitted,
      this.onSaved,
      this.validator,
      super.key});

  @override
  State<FormContainerWidget> createState() => __FormContainerStateState();
}

class __FormContainerStateState extends State<FormContainerWidget> {
  bool _obsureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(.35),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        style: const TextStyle(color: Colors.blue),
        controller: widget.controller,
        keyboardType: widget.inputType,
        key: widget.fieldKey,
        obscureText: widget.isPasswordField == true ? _obsureText : false,
        onSaved: widget.validator,
        onFieldSubmitted: widget.onFieldSubmitted,
        decoration: InputDecoration(
            border: InputBorder.none,
            filled: true,
            hintText: widget.hintText,
            hintStyle: const TextStyle(color: Colors.black45),
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  _obsureText = !_obsureText;
                });
              },
              child: widget.isPasswordField == true
                  ? Icon(
                      _obsureText ? Icons.visibility_off : Icons.visibility,
                      color: _obsureText == false ? Colors.red : Colors.grey,
                    )
                  : const Text(""),
            )
            ),
      ),
    );
  }
}
