import 'package:flutter/material.dart';
import 'package:sehamate/core/utils/extensions.dart';

class CustomDatepicker extends StatefulWidget {
  final Function(DateTime date) onChanged;
  const CustomDatepicker({super.key, required this.onChanged});

  @override
  State<CustomDatepicker> createState() => _CustomDatepickerState();
}

class _CustomDatepickerState extends State<CustomDatepicker> {
  final DateTime now = DateTime.now();
  DateTime? selectedDate;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        selectedDate = await showDatePicker(
          context: context,
          initialDate: selectedDate ?? now,
          currentDate: selectedDate ?? now,
          firstDate: now,
          lastDate: DateTime(now.year + 10),
        );
        if (selectedDate == null) return;
        widget.onChanged(selectedDate!);
        setState(() {});
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 13),
        width: double.maxFinite,
        decoration: BoxDecoration(
          border: Border.all(color: context.colors.primary.withValues(alpha: 0.5)),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Text(
              selectedDate != null ? selectedDate!.formate() : "Select Date",
              style: TextStyle(
                color: context.colors.primary.withValues(
                  alpha: selectedDate != null ? 1 : 0.5,
                ),
                fontFamily: "",
                fontSize: 15,
              ),
            ),
            Spacer(),
            Icon(Icons.calendar_month, color: context.colors.primary.withValues(alpha: 0.5)),
          ],
        ),
      ),
    );
  }
}
