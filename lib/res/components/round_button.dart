import 'package:flutter/material.dart';
import 'package:inshorts_news_demo_app/res/colors/app_color.dart';

class RoundButtonWidget extends StatelessWidget {
  const RoundButtonWidget(
      {super.key,
      this.buttonColor = AppColor.buttonBg1Light,
      this.textColor = AppColor.buttonFg1Light,
      this.borderColor = AppColor.border1,
      required this.title,
      required this.onPress,
      this.isPressed = false,
      this.width = 60,
      this.height = 50,
      this.fontSize = 18,
      this.loading = false});

  final bool loading;
  final String title;
  final double height, width, fontSize;
  final VoidCallback onPress;
  final bool isPressed;
  final Color textColor, buttonColor, borderColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: buttonColor,
            border: Border.all(color: borderColor)),
        child: loading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Center(
                child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: textColor, fontSize: fontSize),
                ),
              ),
      ),
    );
  }
}
