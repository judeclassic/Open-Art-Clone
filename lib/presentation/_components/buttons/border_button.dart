import 'package:flutter/material.dart';
import 'package:thestream/presentation/_resources/color_manager.dart';
import 'package:thestream/presentation/_resources/font_manager.dart';
import 'package:thestream/presentation/_resources/styles_manager.dart';
import 'package:thestream/presentation/_resources/value_manager.dart';

class BorderButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const BorderButton(this.text, {Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: AppSize.of(context).w100,
        height: AppSize.s64,
        padding: const EdgeInsets.all(AppPadding.p1_5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.s14),
          gradient: LinearGradient(
            colors: <Color>[
              ColorManager.topGradient,
              ColorManager.bottomGradient,
            ],
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSize.s12),
            color: ColorManager.background,
          ),
          child: Center(
            child: Text(text,
                style: StylesManager.getMediumStyle(
                    color: ColorManager.largeText, fontSize: FontSize.s20)),
          ),
        ),
      ),
    );
  }
}