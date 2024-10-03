import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final bool? loading;
  final String? title;
  final double? height, width;
  final VoidCallback? onPress;
  final String? textStyle;
  final Color? textColor, buttonColor;
  final Widget? text;

  final String? Text;

  const RoundButton({
    Key? key,
    this.loading,
    this.text,
    this.textStyle,
    this.title,
    this.width = 50,
    this.onPress,
    this.buttonColor,
    this.height,
    this.textColor,
    this.Text,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: buttonColor, borderRadius: BorderRadius.circular(50)),
        // child: loading
        //     ? Center(child: CircularProgressIndicator())
        //     : Center(
        //         child: Text(
        //           title!,
        //           style: Theme.of(context)
        //               .textTheme
        //               .titleMedium!
        //               .copyWith(color: Colors.white),
        //         ),
        //       ),
      ),
    );
  }
}
