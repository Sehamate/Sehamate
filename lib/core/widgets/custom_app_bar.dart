import 'package:flutter/material.dart';
import 'package:sehamate/core/utils/extensions.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool? canBack;
  const CustomAppBar({
    super.key,
    required this.title,
    this.canBack = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: double.maxFinite,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            context.colors.primary,
            context.colors.primary,
            Color(0xff5A1DC2),
          ],
        ),
      ),
      child: SafeArea(
        child: Row(
          children: [
            if (canBack!)
              GestureDetector(
                onTap: () {
                  context.router.pop();
                },
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      size: 20,
                      color: context.colors.primary,
                    ),
                  ),
                ),
              ),
            if (canBack!) Spacer(),
            Text(
              title,
              style: context.texts.titleMedium,
            ),
            if (canBack!) Spacer(),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(200);
}
