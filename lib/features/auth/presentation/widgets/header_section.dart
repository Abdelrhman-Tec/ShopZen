import 'package:flutter/material.dart';

Widget headerSection(BuildContext context, {required String headerName}) {
  final size = MediaQuery.of(context).size;
  final width = size.width;
  return Column(
    children: [
      const SizedBox(height: 70),
      Text(
        headerName,
        style: TextStyle(
          fontSize: width * .09,
          fontWeight: FontWeight.w600,
        ),
      ),
    ],
  );
}
