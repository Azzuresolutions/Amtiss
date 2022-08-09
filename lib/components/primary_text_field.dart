import 'package:amtiss/components/components.dart';
import 'package:flutter/material.dart';

class PrimaryTextField extends StatelessWidget {
  final String labelText;
  final String? hintText;
  final bool obscureText;
  final ValueChanged<String>? onChanged;
  final bool withTogglePasswordIcon;
  final VoidCallback? onPasswordIconPresssed;
  final Widget? prefixIcon;
  final Color? bgColor;
  final bool? withoutLabel;
  final double radius;
  const PrimaryTextField({
    Key? key,
    required this.labelText,
    this.obscureText = false,
    this.onChanged,
    this.withTogglePasswordIcon = false,
    this.onPasswordIconPresssed,
    this.prefixIcon,
    this.bgColor,
    this.hintText,
    this.withoutLabel = false,
    this.radius = 10,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey.withOpacity(0.2),
        width: 1,
      ),
      borderRadius: BorderRadius.circular(radius),
    );
    return Visibility(
      visible: !(withoutLabel ?? true),
      replacement: _buildForm(border),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          H3Atm(
            labelText,
          ),
          SizedBox(
            height: 6,
          ),
          _buildForm(border),
        ],
      ),
    );
  }

  Widget _buildForm(OutlineInputBorder border) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: bgColor,
      ),
      child: TextFormField(
        onChanged: onChanged,
        obscureText: obscureText,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          hintText: hintText,
          suffixIcon: Visibility(
            visible: withTogglePasswordIcon,
            child: IconButton(
              icon:
                  Icon(!obscureText ? Icons.visibility : Icons.visibility_off),
              onPressed: onPasswordIconPresssed,
            ),
          ),
          enabledBorder: border,
          border: border,
        ),
      ),
    );
  }
}
