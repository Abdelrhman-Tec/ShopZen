import 'package:flutter/material.dart';
import 'package:my_app/core/utils/app_colors.dart';
import 'package:my_app/generated/l10n.dart';

class TermsConditionWidget extends StatefulWidget {
  const TermsConditionWidget({super.key});

  @override
  State<TermsConditionWidget> createState() => _TermsConditionWidgetState();
}

class _TermsConditionWidgetState extends State<TermsConditionWidget> {
  bool checkBox = true;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            checkColor: AppColors.myWhiteColor,
            activeColor: AppColors.primaryColor,
            value: checkBox,
            onChanged: (value) {
              setState(() {
                checkBox = value!;
              });
            }),
        Text.rich(
          TextSpan(
            text: S.of(context).authAgree,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
            children: [
              TextSpan(
                text: S.of(context).authTermsCondition,
                style: TextStyle(
                  color: AppColors.primaryColor,
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
