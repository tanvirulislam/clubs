import 'package:flutter/material.dart';

double datePickerWidth = 300;
double datePickerHeight = 300;

Future<DateTime?> showCustomDatePickerForHistory(
  DateTime? stateDateTime,
  BuildContext context,
  Offset position,
) async {
  final Size screenSize = MediaQuery.of(context).size;

  // Calculate initial center positions
  double left = position.dx - (datePickerWidth / 2);
  double top = position.dy - (datePickerHeight / 2);

  // Adjust horizontal position if overflow
  if (left + datePickerWidth > screenSize.width) {
    left = screenSize.width - datePickerWidth - 10;
  }
  // Adjust vertical position if overflow
  if (top + datePickerHeight > screenSize.height) {
    top = screenSize.height - datePickerHeight - 10;
  }
  // Add check for top overflow
  if (top < 0) {
    top = 10;
  }

  DateTime? pickedDate = await showDialog(
    barrierDismissible: true,
    context: context,
    builder: (context) {
      return Stack(
        children: [
          Positioned(
            left: left,
            top: top,
            child: Material(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: SizedBox(
                width: 300,
                height: 300,
                child: CalendarDatePicker(
                  firstDate: DateTime(1950),
                  initialDate: stateDateTime ?? DateTime.now(),
                  lastDate: DateTime(2100),
                  onDateChanged: (DateTime date) {
                    Navigator.pop(context, date);
                  },
                ),
              ),
            ),
          ),
        ],
      );
    },
  );
  return pickedDate;
}
