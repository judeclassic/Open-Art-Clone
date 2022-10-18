import 'package:flutter/material.dart';
import 'package:thestream/domain/model/nft_card_model.dart';
import 'package:thestream/presentation/_resources/color_manager.dart';
import 'package:thestream/presentation/_resources/font_manager.dart';
import 'package:thestream/presentation/_resources/image_manager.dart';
import 'package:thestream/presentation/_resources/string_manager.dart';
import 'package:thestream/presentation/_resources/styles_manager.dart';
import 'package:thestream/presentation/_resources/value_manager.dart';

class NFTViewCard extends StatefulWidget {
  final NftCardModel nftCardModel;
  const NFTViewCard({Key? key, required this.nftCardModel}) : super(key: key);

  @override
  State<NFTViewCard> createState() => _NFTViewCardState();
}

class _NFTViewCardState extends State<NFTViewCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSize.s30),
      ),
      child: Container(
          padding: const EdgeInsets.all(AppPadding.p12),
          width: AppSize.of(context).w92,
          decoration: BoxDecoration(
            color: ColorManager.cardBackround,
            borderRadius: BorderRadius.circular(AppSize.s30),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppSize.s450,
                decoration: BoxDecoration(
                    color: ColorManager.cardBackround,
                    borderRadius: BorderRadius.circular(AppSize.s20),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        widget.nftCardModel.nftImage,
                      ),
                    )),
              ),
              const SizedBox(height: AppSize.s18),
              SizedBox(
                child: Text(AppString.silentWave,
                    style: StylesManager.getSemiBoldStyle(
                        color: ColorManager.largeText, fontSize: FontSize.s20)),
              ),
              const SizedBox(height: AppSize.s4),
              SizedBox(
                child: ListTile(
                    leading: const RoundedAvater(AppImages.dummy1),
                    title: Text(widget.nftCardModel.userName,
                        style: StylesManager.getSemiBoldStyle(
                            color: ColorManager.largeText,
                            fontSize: FontSize.s16)),
                    subtitle: Text(widget.nftCardModel.userIdentity,
                      style: StylesManager.getRegularStyle(
                        color: ColorManager.largeText,
                        fontSize: FontSize.s16))),
              )
            ],
          )),
    );
  }
}

class RoundedAvater extends StatelessWidget {
  final String image;
  const RoundedAvater(this.image, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: CircleAvatar(
        backgroundColor: ColorManager.primary,
      ),
    );
  }
}
