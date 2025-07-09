  import 'package:flutter/material.dart';
import 'package:my_app/generated/l10n.dart';
Widget buildOrDivider(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    return Row(
      children: [
        const Expanded(
          child: Divider(thickness: 1, color: Colors.grey),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .04),
          child: Text(
            S.of(context).or,
            style: TextStyle(
              color: Colors.grey[600],
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const Expanded(
          child: Divider(thickness: 1, color: Colors.grey),
        ),
      ],
    );
  }