import 'package:club/clubs/context.dart';
import 'package:club/clubs/custom.widget/custom.textfield.dart';
import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';

class CountryCodeSelector extends StatelessWidget {
  final String? selectedCountryCode;
  final Function(CountryCode) onCountryChanged;
  final String initialSelection;

  const CountryCodeSelector({
    super.key,
    this.selectedCountryCode,
    required this.onCountryChanged,
    this.initialSelection = 'BD',
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: context.isMobileWidth
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Club Cell Phone',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffF2F2F7)),
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey.shade50,
                      ),
                      child: CountryCodePicker(
                        onChanged: onCountryChanged,
                        initialSelection: initialSelection,
                        favorite: ['+880', 'BD'],
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        flagWidth: 24,
                        hideMainText: false,
                        showFlag: true,
                        showFlagMain: true,
                        flagDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        searchDecoration: InputDecoration(
                          hintText: 'Search country',
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        dialogSize: Size(
                          350,
                          MediaQuery.of(context).size.height * 0.6,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: CustomTextField(
                        label: context.isMobileWidth
                            ? 'Phone'
                            : 'Enter Club Cell Phone',
                        onChanged: (p0) {},
                        useController: false,
                        useValidator: false,
                        digitOnly: true,
                        keyboardType: TextInputType.phone,
                      ),
                    ),
                  ],
                ),
              ],
            )
          : Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    'Club Cell Phone',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffF2F2F7)),
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey.shade50,
                        ),
                        child: CountryCodePicker(
                          onChanged: onCountryChanged,
                          initialSelection: initialSelection,
                          favorite: ['+880', 'BD'],
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                          flagWidth: 24,
                          hideMainText: false,
                          showFlag: true,
                          showFlagMain: true,
                          flagDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          searchDecoration: InputDecoration(
                            hintText: 'Search country',
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          dialogSize: Size(
                            350,
                            MediaQuery.of(context).size.height * 0.6,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: CustomTextField(
                          label: context.isMobileWidth
                              ? 'Phone'
                              : 'Enter Club Cell Phone',
                          onChanged: (p0) {},
                          useController: false,
                          useValidator: false,
                          digitOnly: true,
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
