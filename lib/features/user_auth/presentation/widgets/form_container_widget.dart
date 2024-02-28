// ignore_for_file: non_constant_identifier_names, prefer_const_constructors_in_immutables, prefer_final_fields, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class FormContainerWidget extends StatefulWidget {
  final TextEditingController? controller;
  final Key? fieldKey;
  final bool? isPasswordField;
  final String? hintText;
  final String? labelText;
  final String? hyperText;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? OnFieldSubmitted;
  final TextInputType? inputType;
  final Icon? icon;

  FormContainerWidget(
      {super.key,
      this.controller,
      this.fieldKey,
      this.isPasswordField,
      this.hintText,
      this.labelText,
      this.hyperText,
      this.onSaved,
      this.validator,
      this.OnFieldSubmitted,
      this.inputType,
      this.icon});

  @override
  State<FormContainerWidget> createState() => _FormContainerWidgetState();
}

class _FormContainerWidgetState extends State<FormContainerWidget> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(17.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
                blurRadius: 1.5,
                spreadRadius: 1,
                color: Colors.black26,
                offset: Offset(4, 4))
          ]),
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: TextFormField(
              controller: widget.controller,
              keyboardType: widget.inputType,
              key: widget.fieldKey,
              obscureText:
                  widget.isPasswordField == true ? _obscureText : false,
              onSaved: widget.onSaved,
              validator: widget.validator,
              onFieldSubmitted: widget.OnFieldSubmitted,
              style: TextStyle(fontSize: 15),
              decoration: InputDecoration(
                  hintText: widget.hintText,
                  icon: widget.icon,
                  suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      child: widget.isPasswordField == true
                          ? Icon(
                              _obscureText
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: _obscureText == false
                                  ? Color.fromARGB(255, 7, 33, 54)
                                  : Colors.grey[200])
                          : Text("")),
                  border: OutlineInputBorder(borderSide: BorderSide.none)))),
    );
  }
}
