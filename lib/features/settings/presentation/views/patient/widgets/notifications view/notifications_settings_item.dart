import 'package:flutter/material.dart';
import 'package:sehamate/core/utils/extensions.dart';

class NotificationsSettingsItem extends StatefulWidget {
  final String title;
  final Function(bool value) onChanged;
  const NotificationsSettingsItem({
    super.key,
    required this.title,
    required this.onChanged,
  });

  @override
  State<NotificationsSettingsItem> createState() => _NotificationsSettingsItemState();
}

class _NotificationsSettingsItemState extends State<NotificationsSettingsItem> {
  bool isEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.title,
            style: context.texts.titleSmall!.copyWith(color: Colors.black),
          ),
          Switch(
            activeTrackColor: context.colors.primary,
            inactiveTrackColor: Colors.grey,
            value: isEnabled,
            onChanged: (value) {
              isEnabled = !isEnabled;
              setState(() {});
              widget.onChanged(value);
            },
          ),
        ],
      ),
    );
  }
}
