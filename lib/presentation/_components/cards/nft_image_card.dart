import 'package:flutter/material.dart';
import 'package:thestream/domain/model/nft_card_model.dart';
import 'package:thestream/presentation/_resources/color_manager.dart';
import 'package:thestream/presentation/_resources/font_manager.dart';
import 'package:thestream/presentation/_resources/string_manager.dart';
import 'package:thestream/presentation/_resources/styles_manager.dart';
import 'package:thestream/presentation/_resources/value_manager.dart';

class NFTImageCard extends StatefulWidget {
  final NftCardModel nftCardModel;
  const NFTImageCard({Key? key, required this.nftCardModel}) : super(key: key);

  @override
  State<NFTImageCard> createState() => _NFTImageCardState();
}

class _NFTImageCardState extends State<NFTImageCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSize.s30),
      ),
      child: Container(
          width: AppSize.of(context).w70,
          decoration: BoxDecoration(
            color: ColorManager.background,
            borderRadius: BorderRadius.circular(AppSize.s30),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppSize.s350,
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
              Padding(
                padding: const EdgeInsets.only(left: AppPadding.p12, right: AppPadding.p12),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: SizedBox(
                        child: Text(AppString.silentWave,
                            style: StylesManager.getSemiBoldStyle(
                                color: ColorManager.largeText, fontSize: FontSize.s20)),
                      ),
                    ),
                    const SizedBox(width: AppSize.s12),
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: AppSize.s80,
                        height: AppSize.s40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(AppSize.s30),
                          border: Border.all(
                            color: ColorManager.largeText
                          )
                        ),
                        child: Center(
                          child: Text(
                            AppString.toEth(2.3),
                            style: StylesManager.getSemiBoldStyle(
                                color: ColorManager.largeText, fontSize: FontSize.s16),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: AppPadding.p12, right: AppPadding.p12),
               child: Row(
                 children: [
                  Text(
                      AppString.highestBid,
                      style: StylesManager.getRegularStyle(
                          color: ColorManager.largeText, fontSize: FontSize.s16),
                    ),
                   Text(
                      AppString.toEth(widget.nftCardModel.highestBid ?? 0),
                      style: StylesManager.getSemiBoldStyle(
                          color: ColorManager.largeText, fontSize: FontSize.s16),
                    ),
                 ],
               ),
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
