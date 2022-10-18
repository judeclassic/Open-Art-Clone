import 'package:flutter/material.dart';
import 'package:thestream/domain/model/nft_card_model.dart';
import 'package:thestream/presentation/_components/buttons/border_button.dart';
import 'package:thestream/presentation/_components/cards/nft_image_card.dart';
import 'package:thestream/presentation/_components/cards/nft_small_card.dart';
import 'package:thestream/presentation/_components/sections/footer.dart';
import 'package:thestream/presentation/_resources/color_manager.dart';
import 'package:thestream/presentation/_resources/font_manager.dart';
import 'package:thestream/presentation/_resources/image_manager.dart';
import 'package:thestream/presentation/_resources/string_manager.dart';
import 'package:thestream/presentation/_resources/styles_manager.dart';
import 'package:thestream/presentation/_resources/value_manager.dart';
import 'package:thestream/presentation/home/_components/nft_card_with_bid.dart';
import 'package:thestream/presentation/home/_components/nft_card_with_bid_view.dart';
import 'package:thestream/presentation/home/_components/nft_card_with_price.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  NftCardModel createTestInstance(
      nftName, userIdentity, userName, double price) {
    return NftCardModel(
        nftImage: AppImages.dummy1,
        nftName: nftName,
        userIdentity: userIdentity,
        userImage: AppImages.dummy1,
        userName: userName,
        price: price);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(AppSize.of(context).w100, AppSize.s70),
        child: Padding(
          padding:  EdgeInsets.fromLTRB(AppSize.of(context).w4, AppPadding.p4,
            AppSize.of(context).w4, AppSize.s0),
          child: AppBar(
            leading: null,
            leadingWidth: AppSize.s0,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            title: Text(AppString.openNFT),
            actions: [
              Icon(
                Icons.menu,
                color: ColorManager.primaryText,
                size: FontSize.s38,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              const HomeHeaderSection(),
              const Padding(
                padding: EdgeInsets.all(AppPadding.p25),
                child: TextField(),
              ),
              const SizedBox(height: AppSize.s4),
              NFTViewCardWithBidView(
                  nftCardModel: createTestInstance(
                      'Silent Wave', 'creator', 'Jude Classic', 2)),
              const SizedBox(height: AppSize.s75),
              const LiveAuctionSection(),
              const SizedBox(height: AppSize.s52),
              ...List.generate(2, (index) {
                return NFTViewCardWithPrice(
                    nftCardModel: createTestInstance(
                        'Silent Wave', 'creator', 'Jude Classic', 2));
              }),
              ...List.generate(2, (index) {
                return NFTViewCardWithBid(
                    nftCardModel: createTestInstance(
                        'Silent Wave', 'creator', 'Jude Classic', 2));
              }),
              const HotBidSection(),
              const SizedBox(height: AppSize.s75),
              const HotCollectionSection(),
              const SizedBox(height: AppSize.s75),
              const FooterSection(),
              const DarkFooterSection()
            ],
          ),
      ),
    );
  }
}

class HomeHeaderSection extends StatelessWidget {
  const HomeHeaderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: AppSize.s30),
        SizedBox(
            child: Text(AppString.homeHeader1,
                style: StylesManager.getMediumStyle(
                    color: ColorManager.largeText, fontSize: FontSize.s20))),
        const SizedBox(height: AppSize.s20),
        SizedBox(
            child: Text(AppString.homeHeader2,
                style: StylesManager.getMediumStyle(
                    color: ColorManager.largeText, fontSize: FontSize.s38))),
        const SizedBox(height: AppSize.s20),
      ],
    );
  }
}

class LiveAuctionSection extends StatelessWidget {
  const LiveAuctionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(children: [
        SizedBox(
            height: AppSize.s12,
            child: CircleAvatar(
              backgroundColor: ColorManager.alertColor,
            )),
        Text(AppString.liveAuction,
            style: StylesManager.getSemiBoldStyle(
                color: ColorManager.largeText, fontSize: FontSize.s30))
      ]),
    );
  }
}

class HotBidSection extends StatefulWidget {
  const HotBidSection({Key? key}) : super(key: key);

  @override
  State<HotBidSection> createState() => _HotBidSectionState();
}

class _HotBidSectionState extends State<HotBidSection> {
  NftCardModel createTestInstance(
      nftName, userIdentity, userName, double price) {
    return NftCardModel(
        nftImage: AppImages.dummy1,
        nftName: nftName,
        userIdentity: userIdentity,
        userImage: AppImages.dummy1,
        userName: userName,
        price: price
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: AppPadding.p18, right: AppPadding.p18),
          child: SizedBox(
              width: AppSize.of(context).w100,
              height: AppSize.s70,
              child: Row(children: [
                Icon(Icons.fireplace_outlined,
                    color: ColorManager.errorText, size: FontSize.s30),
                Text(
                  AppString.hotBid,
                  style: StylesManager.getSemiBoldStyle(
                      color: ColorManager.largeText, fontSize: FontSize.s28),
                ),
                const Expanded(
                  child: SizedBox(),
                ),
                Icon(Icons.keyboard_double_arrow_left,
                    color: ColorManager.largeText, size: FontSize.s30),
                const SizedBox(width: AppSize.s22,),
                Icon(Icons.keyboard_double_arrow_right,
                    color: ColorManager.largeText, size: FontSize.s30),
              ])),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            ...List.generate(7, (index) {
              return NFTImageCard(
                  nftCardModel: createTestInstance(
                      'Silent Wave', 'creator', 'Jude Classic', 2));
            })
          ]),
        ),
      ],
    );
  }
}

class HotCollectionSection extends StatefulWidget {
  const HotCollectionSection({ Key? key }) : super(key: key);

  @override
  State<HotCollectionSection> createState() => _HotCollectionSectionState();
}

class _HotCollectionSectionState extends State<HotCollectionSection> {
  NftCardModel createTestInstance(
      nftName, userIdentity, userName, double price) {
    return NftCardModel(
        nftImage: AppImages.dummy1,
        nftName: nftName,
        userIdentity: userIdentity,
        userImage: AppImages.dummy1,
        userName: userName,
        price: price);
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: AppPadding.p16, right: AppPadding.p16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              AppString.hotCollection,
              style: StylesManager.getSemiBoldStyle(
                  color: ColorManager.largeText, fontSize: FontSize.s28),
            ),
          ),
          const SizedBox(height: AppSize.s45),
          Row(
            children: [
              NFTSmallCard(nftCardModel: 
                createTestInstance(
                  'Silent Wave', 'creator', 'Jude Classic', 2)),
              const Expanded(
                child: SizedBox(),
              ),
              NFTSmallCard(nftCardModel:
                createTestInstance(
                  'Silent Wave', 'creator', 'Jude Classic', 2)),
            ],
          ),
          const SizedBox(height: AppSize.s12,),
          Row(
            children: [
              NFTSmallCard(nftCardModel: createTestInstance(
                      'Silent Wave', 'creator', 'Jude Classic', 2)),
              const Expanded(
                child: SizedBox(),
              ),
              NFTSmallCard(nftCardModel: createTestInstance(
                      'Silent Wave', 'creator', 'Jude Classic', 2)),
            ],
          ),
          const SizedBox(height: AppSize.s18),
          Padding(
            padding: const EdgeInsets.only(left: AppPadding.p12, right: AppPadding.p12),
            child: Row(
              children: [
                Expanded(
                  flex: 7,
                  child: SizedBox(
                    child: Text(AppString.silentWave,
                        style: StylesManager.getSemiBoldStyle(
                            color: ColorManager.largeText, fontSize: FontSize.s20)),
                  ),
                ),
                const SizedBox(width: AppSize.s12),
                Expanded(
                  flex: 3,
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
                        AppString.toItems(30),
                        style: StylesManager.getSemiBoldStyle(
                            color: ColorManager.largeText, fontSize: FontSize.s16),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: AppSize.s18),
          Padding(
            padding: const EdgeInsets.only(left: AppPadding.p12, right: AppPadding.p12),
            child: Row(
              children: [
                const RoundedAvater(AppImages.dummy1,),
                const SizedBox(width: AppSize.s12),
                Expanded(
                  flex: 5,
                  child: SizedBox(
                    child: Text(AppString.silentWave,
                        style: StylesManager.getSemiBoldStyle(
                            color: ColorManager.largeText, fontSize: FontSize.s16)),
                  ),
                ),
                const SizedBox(width: AppSize.s12),
                Expanded(
                  flex: 6,
                  child: Container(
                    width: AppSize.s80,
                    height: AppSize.s50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppSize.s10),
                      border: Border.all(
                        color: ColorManager.largeText
                      )
                    ),
                    child: Center(
                      child: SizedBox(
                        child: Row(
                          children: [
                            const Expanded(child: SizedBox()),
                            const Icon(Icons.heart_broken),
                            Text(
                              AppString.follow,
                              style: StylesManager.getLightStyle(
                                  color: ColorManager.largeText, fontSize: FontSize.s20),
                            ),
                            const Expanded(child: SizedBox()),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: AppSize.s60),
          BorderButton(
            AppString.viewMoreCollection,
            onTap: (){
              //ooo
            })
        ],
      ),
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
        child: const SizedBox(height: AppSize.s60, width: AppSize.s60),
      ),
    );
  }
}
