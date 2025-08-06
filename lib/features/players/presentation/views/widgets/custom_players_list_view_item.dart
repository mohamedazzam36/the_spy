import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_styles.dart';

class CustomPlayerListViewItem extends StatelessWidget {
  const CustomPlayerListViewItem({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(0),
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            Text(
              text,
              style: Styles.styleSemiBold24(
                context,
              ).copyWith(color: Colors.black),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete,
                color: Colors.red,
                size: 36,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
