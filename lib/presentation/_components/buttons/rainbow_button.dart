import 'package:flutter/material.dart';
import 'package:thestream/presentation/_resources/color_manager.dart';
import 'package:thestream/presentation/_resources/font_manager.dart';
import 'package:thestream/presentation/_resources/styles_manager.dart';
import 'package:thestream/presentation/_resources/value_manager.dart';

class RainBowButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const RainBowButton(this.text, {Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: AppSize.of(context).w100,
        height: AppSize.s64,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSize.s12),
            gradient: LinearGradient(
              colors: <Color>[
                ColorManager.topGradient,
                ColorManager.bottomGradient,
              ],
            )),
        child: Center(
          child: Text(text,
              style: StylesManager.getMediumStyle(
                  color: ColorManager.white, fontSize: FontSize.s20)),
        ),
      ),
    );
  }
}