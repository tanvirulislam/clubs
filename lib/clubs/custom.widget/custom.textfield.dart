import 'package:flutter/material.dart';
import 'package:flutter/services.dart'
    show
        FilteringTextInputFormatter,
        LengthLimitingTextInputFormatter,
        TextInputFormatter;

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.onChanged,
    this.initialValue,
    this.height,
    this.width,
    this.label,
    this.suffixIcon,
    this.onTapIcon,
    this.controller,
    this.useController = false,
    this.useValidator = true,
    this.validatorText,
    this.digitOnly = false,
    this.keyboardType = TextInputType.text,
    this.inputFormatters,
    this.readOnly = false,
    this.onTap,
    this.validator,
    this.maxLine,
    this.useSuffixIcon = false,
  });
  final void Function(String)? onChanged;

  final String? initialValue;
  final double? height;
  final double? width;
  final String? label;
  final IconData? suffixIcon;
  final void Function()? onTapIcon;
  final TextEditingController? controller;
  final bool? useController;
  final bool? useValidator;
  final String? validatorText;
  final bool? digitOnly;
  final TextInputType keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final bool readOnly;
  final void Function()? onTap;
  final String? Function(String?)? validator;
  final int? maxLine;
  final bool useSuffixIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: height ?? 55,
      width: width ?? 300,
      child:
          useController == false
              ? TextFormField(
                maxLines: maxLine,
                onTap: onTap,
                readOnly: readOnly,
                keyboardType: keyboardType,
                initialValue: initialValue,
                inputFormatters:
                    inputFormatters ??
                    (digitOnly == true
                        ? [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(20),
                        ]
                        : null),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  errorBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  label: Text(label ?? ''),
                  errorStyle: const TextStyle(height: 0),
                  suffixIcon:
                      useSuffixIcon == true
                          ? IconButton(
                            onPressed: onTapIcon,
                            icon: Icon(suffixIcon),
                          )
                          : null,
                ),
                onChanged: onChanged,
                validator:
                    useValidator == true
                        ? validator ??
                            (value) {
                              if (value == null || value.isEmpty) {
                                return validatorText ??
                                    "This field can't be empty";
                              }
                              return null;
                            }
                        : null,
                textInputAction: TextInputAction.next,
              )
              : TextFormField(
                maxLines: maxLine,
                onTap: onTap,
                readOnly: readOnly,
                keyboardType: keyboardType,
                controller: controller,
                inputFormatters:
                    inputFormatters ??
                    (digitOnly == true
                        ? [FilteringTextInputFormatter.digitsOnly]
                        : null),
                decoration: InputDecoration(
                  errorBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  label: Text(label ?? 'Label text'),
                  errorStyle: const TextStyle(height: 0),
                  suffixIcon:
                      useSuffixIcon == true
                          ? IconButton(
                            onPressed: onTapIcon,
                            icon: Icon(suffixIcon),
                          )
                          : null,
                ),
                onChanged: onChanged,
                validator:
                    useValidator == true
                        ? validator ??
                            (value) {
                              if (value == null || value.isEmpty) {
                                return validatorText ??
                                    "This field can't be empty";
                              }
                              return null;
                            }
                        : null,
                textInputAction: TextInputAction.next,
              ),
    );
  }
}
