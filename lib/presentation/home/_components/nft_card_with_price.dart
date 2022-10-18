import 'package:flutter/material.dart';
import 'package:thestream/domain/model/nft_card_model.dart';
import 'package:thestream/presentation/_components/cards/nft_view_card.dart';
import 'package:thestream/presentation/_resources/color_manager.dart';
import 'package:thestream/presentation/_resources/value_manager.dart';

class NFTViewCardWithPrice extends StatefulWidget {
  final NftCardModel nftCardModel;
  const NFTViewCardWithPrice({Key? key, required this.nftCardModel}) : super(key: key);

  @override
  State<NFTViewCardWithPrice> createState() => _NFTViewCardWithPriceState();
}

class _NFTViewCardWithPriceState extends State<NFTViewCardWithPrice> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      NFTViewCard(nftCardModel: widget.nftCardModel),
      const SizedBox(
        height: AppSize.s20,
      ),
      const RoundedPriceBar(
        price: '2.0ETH',
      ),
      const SizedBox(height: AppSize.s30,)
    ]);
  }
}

class RoundedPriceBar extends StatelessWidget {
  final String price;
  const RoundedPriceBar({Key? key, required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: AppPadding.p18, right: AppPadding.p18),
      height: AppSize.s75,
      width: AppSize.of(context).w100,
      decoration:
          BoxDecoration(
            borderRadius: BorderRadius.circular(AppSize.s37),
            color: ColorManager.cardBackround,));
  }
}
