import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  const CustomButton(
      {Key? key,
      this.borderRadius,
      this.buttonColor,
      this.borderColor,
      required this.buttonText,
      this.textColor,
      required this.onTap})
      : super(key: key);
  final VoidCallback onTap;
  final String buttonText;
  final Color? borderColor;
  final Color? buttonColor;
  final Color? textColor;
  final double? borderRadius;

  @override
  CustomButtonState createState() => CustomButtonState();
}

class CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 10),
      decoration: BoxDecoration(
          color: widget.buttonColor,
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 0),
          border: Border.all(color: widget.borderColor ?? Colors.white)),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: widget.onTap,
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 0),
          child: Container(
              padding: const EdgeInsets.all(10),
              child: Center(
                  child: Text(
                widget.buttonText,
                style: TextStyle(color: widget.textColor, fontSize: 16),
              ))),
        ),
      ),
    );
  }
}
