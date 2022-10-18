// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:thestream/domain/model/nft_card_model.dart';

import 'package:thestream/presentation/_components/buttons/border_button.dart';
import 'package:thestream/presentation/_components/buttons/rainbow_button.dart';
import 'package:thestream/presentation/_components/cards/nft_view_card.dart';
import 'package:thestream/presentation/_resources/color_manager.dart';
import 'package:thestream/presentation/_resources/font_manager.dart';
import 'package:thestream/presentation/_resources/string_manager.dart';
import 'package:thestream/presentation/_resources/styles_manager.dart';
import 'package:thestream/presentation/_resources/value_manager.dart';

class NFTViewCardWithBidView extends StatefulWidget {
  final NftCardModel nftCardModel;
  
  const NFTViewCardWithBidView({
    Key? key,
    required this.nftCardModel,
  }) : super(key: key);

  @override
  State<NFTViewCardWithBidView> createState() => _NFTViewCardWithBidViewState();
}

class _NFTViewCardWithBidViewState extends State<NFTViewCardWithBidView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: AppPadding.p18, right: AppPadding.p18),
      child: Column(children: [
        NFTViewCard(nftCardModel: widget.nftCardModel,),
        const SizedBox(height: AppSize.s14),
        SizedBox(
            child: Row(children: [
          Text(AppString.reservedPrice,
              style: StylesManager.getRegularStyle(
                  color: ColorManager.largeText, fontSize: FontSize.s16)),
          const SizedBox(width: AppSize.s4),
          Text('2.00 ${AppString.eth}',
              style: StylesManager.getMediumStyle(
                  color: ColorManager.largeText, fontSize: FontSize.s22)),
          const SizedBox(width: AppSize.s12),
          Text('\$2,683.73',
              style: StylesManager.getMediumStyle(
                  color: ColorManager.lightText, fontSize: FontSize.s16)),
        ])),
        const SizedBox(height: AppSize.s14),
        RainBowButton('Place Bid', onTap: () {}),
        const SizedBox(height: AppSize.s14),
        BorderButton('View Artwork', onTap: () {}),
      ]),
    );
  }
}