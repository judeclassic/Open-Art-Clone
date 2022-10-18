import 'package:flutter/material.dart';
import 'package:thestream/domain/model/nft_card_model.dart';
import 'package:thestream/presentation/_resources/color_manager.dart';
import 'package:thestream/presentation/_resources/value_manager.dart';

class NFTSmallCard extends StatelessWidget {
  final NftCardModel nftCardModel;
  const NFTSmallCard({Key? key, required this.nftCardModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.s240,
      width: AppSize.of(context).w45,
      decoration: BoxDecoration(
          color: ColorManager.cardBackround,
          borderRadius: BorderRadius.circular(AppSize.s20),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              nftCardModel.nftImage,
            ),
          )),
    );
  }
}
