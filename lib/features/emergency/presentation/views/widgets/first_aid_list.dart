import 'package:flutter/material.dart';
import 'first_aid_item.dart';

class FirstAidList extends StatelessWidget {
  const FirstAidList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return FirstAidItem();
      },
    );
  }
}
