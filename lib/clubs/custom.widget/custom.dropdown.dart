import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomDropDown extends ConsumerWidget {
  const CustomDropDown({
    super.key,
    required this.items,
    required this.onChanged,
    required this.value,
    this.width,
    this.hint,
    this.height,
    this.useLabelText = false,
    this.labelText,
    this.useValidator = true,
    this.validatorText,
    this.useSearchableDropdown = true,
  });
  final List<String> items;
  final void Function(String?) onChanged;
  final String? value;
  final double? width;
  final String? hint;
  final double? height;
  final bool? useLabelText;
  final String? labelText;
  final bool? useValidator;
  final String? validatorText;
  final bool? useSearchableDropdown;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: width ?? 300,
      height: height ?? 55,
      child:
          useSearchableDropdown == true
              ? DropdownSearch<String>(
                autoValidateMode: AutovalidateMode.onUserInteraction,
                validator:
                    useValidator == true
                        ? (value) {
                          if (value == null || value.isEmpty) {
                            return validatorText ?? "This field can't be empty";
                          }
                          return null;
                        }
                        : null,
                selectedItem:
                    items.contains(value)
                        ? labelText != null
                            ? "$labelText$value"
                            : value
                        : null,
                items: items,
                onChanged: onChanged,
                popupProps: const PopupProps.menu(
                  searchDelay: Duration(seconds: 0),
                  searchFieldProps: TextFieldProps(
                    autofocus: true,
                    decoration: InputDecoration(
                      hintText: "Search...",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                  showSearchBox: true,
                  fit: FlexFit.loose,
                  constraints: BoxConstraints(maxHeight: 300),
                ),

                dropdownDecoratorProps: DropDownDecoratorProps(
                  dropdownSearchDecoration: InputDecoration(
                    hintText: hint ?? 'Hint Text',
                    hintStyle: const TextStyle(fontWeight: FontWeight.normal),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    errorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.red),
                    ),
                    errorText: validatorText,
                    errorStyle: const TextStyle(height: 0),
                  ),
                ),
              )
              : DropdownButtonFormField<String>(
                focusColor: Colors.transparent,
                // padding: const EdgeInsets.only(left: 4),
                menuMaxHeight: 400,
                isExpanded: true,
                value: items.contains(value) ? value : null,
                icon: const Icon(Icons.keyboard_arrow_down),
                items:
                    items.map((String itemValue) {
                      return DropdownMenuItem(
                        value: itemValue,
                        child:
                            useLabelText == false
                                ? Text(itemValue)
                                : Text("$labelText$itemValue"),
                      );
                    }).toList(),
                onChanged: onChanged,
                hint: Text(hint ?? 'Hint Text'),
                validator:
                    useValidator == true
                        ? (value) {
                          if (value == null || value.isEmpty) {
                            return validatorText ?? "This field can't be empty";
                          }
                          return null;
                        }
                        : null,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                ),
              ),
    );
  }
}
