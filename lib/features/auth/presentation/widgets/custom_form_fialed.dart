import 'package:flutter/material.dart';
import 'package:my_app/core/utils/app_colors.dart';

class CustomTextFormFialed extends StatefulWidget {
  final String? labelText;
  final String hintText;
  final IconData? icon;
  final bool showVisibility;
  final Function(String)? onChanged;
  final TextEditingController? controller;

  const CustomTextFormFialed({
    super.key,
    this.labelText,
    required this.hintText,
    required this.showVisibility,
    this.icon,
    this.controller,
    this.onChanged,
  });

  @override
  State<CustomTextFormFialed> createState() => _CustomTextFormFialedState();
}

class _CustomTextFormFialedState extends State<CustomTextFormFialed> {
  late bool isObscure;

  @override
  void initState() {
    super.initState();
    isObscure = widget.showVisibility; // يبدأ true لو فيه زر إظهار/إخفاء
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.labelText != null && widget.labelText!.isNotEmpty)
          Text(
            widget.labelText!,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        const SizedBox(height: 8),
        TextFormField(
          controller: widget.controller,
          onChanged: widget.onChanged,
          obscureText: isObscure,
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: TextStyle(color: AppColors.myGeryColor),
            prefixIcon: widget.icon != null ? Icon(widget.icon) : null,
            suffixIcon: widget.showVisibility
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        isObscure = !isObscure;
                      });
                    },
                    icon: Icon(
                      isObscure
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                    ),
                  )
                : null,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColors.primaryColor),
            ),
          ),
        ),
      ],
    );
  }
}
