import 'dart:convert';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:thestream/presentation/_components/buttons/border_button.dart';
import 'package:thestream/presentation/_components/buttons/rainbow_button.dart';
import 'package:thestream/presentation/_resources/color_manager.dart';
import 'package:thestream/presentation/_resources/font_manager.dart';
import 'package:thestream/presentation/_resources/string_manager.dart';
import 'package:thestream/presentation/_resources/styles_manager.dart';
import 'package:thestream/presentation/_resources/value_manager.dart';
import 'package:http/http.dart' as http;

class FooterSection extends StatefulWidget {
  const FooterSection({Key? key}) : super(key: key);

  @override
  State<FooterSection> createState() => _FooterSectionState();
}

class _FooterSectionState extends State<FooterSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding:
            const EdgeInsets.only(left: AppPadding.p18, right: AppPadding.p18),
        child: Column(
          children: [
            const SizedBox(height: AppSize.s50),
            Row(children: [
              const Expanded(child: SizedBox()),
              Text(AppString.openNFT,
                  style: StylesManager.getLightStyle(
                      color: ColorManager.largeText, fontSize: FontSize.s38)),
              const Expanded(child: SizedBox()),
            ]),
            Row(children: [
              const Expanded(child: SizedBox()),
              Text(AppString.the,
                  style: StylesManager.getExtraLightStyle(
                      color: ColorManager.largeText, fontSize: FontSize.s30)),
              Text(AppString.newWord,
                  style: StylesManager.getLightStyle(
                      color: ColorManager.largeText, fontSize: FontSize.s30)),
              Text(AppString.creative,
                  style: StylesManager.getRegularStyle(
                      color: ColorManager.largeText, fontSize: FontSize.s30)),
              Text(AppString.economy,
                  style: StylesManager.getBoldStyle(
                      color: ColorManager.largeText, fontSize: FontSize.s30)),
              const Expanded(child: SizedBox()),
            ]),
            const SizedBox(height: AppSize.s14),
            RainBowButton(AppString.earnNow, onTap: () {}),
            const SizedBox(height: AppSize.s14),
            BorderButton(AppString.discoverMore, onTap: () {
              test();
            }),
            const SizedBox(height: AppSize.s100),
          ],
        ));
  }

  Future<void> test() async {
    FilePickerResult? crewImage =
        await FilePicker.platform.pickFiles(allowMultiple: true);

    if (crewImage != null) {
      var headers = {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Imp1c3RjbGFzc2ljQGdtYWlsLmNvbSIsImlkIjoiNjJhNWI4ODAzNzBhNWQ3ZGZlZGNlMzFlIiwiaWF0IjoxNjU1MjE1ODI1LCJleHAiOjE2NTUyMTk0MjV9.ghfM0dDVU7kawI1pojOkP_zfzWjT-crr6jNYCByt-NI'
      };
      var request = http.MultipartRequest(
          'POST', Uri.parse('https://thi-app.herokuapp.com/v1/api/vendor/signup'));
      request.fields.addAll({
        'name': 'Jude Dickson',
        'email': 'justclassic114@gmailss.com11',
        'phone': '07011111118182',
        'address': 'No 14, Secret of Darkar,',
        'password': '123456',
        'id': '62a5b880370a5d7dfedce31e',
        'primary_service': 'dancing',
        'place_of_training': 'tarkar',
        'service_years': '25',
        'crew_size': '7',
        'state': 'Benin',
        'city': 'Sinua',
        'description': 'we dance for fun'
      });

      for (int i = 0; i < crewImage.paths.length; i++) {
        if (crewImage.paths[i] != null) {
          request.files.add(await http.MultipartFile.fromPath(
              'crew_image', crewImage.paths[i]!));
        }
      }

      if (crewImage.paths[0] != null) {
        request.files.add(await http.MultipartFile.fromPath(
            'license', crewImage.paths[0]!));
      }

      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        // Map<String, dynamic> data = await response.stream.bytesToString();
      } else {
        print(await response.stream.bytesToString());
      }
    } else {
      print('no result');
    }
  }
}

class DarkFooterSection extends StatelessWidget {
  const DarkFooterSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: ColorManager.footerColor,
        child: Column(
          children: [
            const SizedBox(height: AppSize.s14),
            Padding(
              padding: const EdgeInsets.all(AppPadding.p22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Text(AppString.instagram,
                              style: StylesManager.getRegularStyle(
                                  color: ColorManager.white,
                                  fontSize: FontSize.s17)),
                        ),
                        const SizedBox(height: AppSize.s14),
                        GestureDetector(
                          onTap: () {},
                          child: Text(AppString.twiter,
                              style: StylesManager.getRegularStyle(
                                  color: ColorManager.white,
                                  fontSize: FontSize.s17)),
                        ),
                        const SizedBox(height: AppSize.s14),
                        GestureDetector(
                          onTap: () {},
                          child: Text(AppString.discord,
                              style: StylesManager.getRegularStyle(
                                  color: ColorManager.white,
                                  fontSize: FontSize.s17)),
                        ),
                        const SizedBox(height: AppSize.s14),
                        GestureDetector(
                          onTap: () {},
                          child: Text(AppString.blog,
                              style: StylesManager.getRegularStyle(
                                  color: ColorManager.white,
                                  fontSize: FontSize.s17)),
                        ),
                        const SizedBox(height: AppSize.s14),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Text(AppString.about,
                              style: StylesManager.getRegularStyle(
                                  color: ColorManager.white,
                                  fontSize: FontSize.s17)),
                        ),
                        const SizedBox(height: AppSize.s14),
                        GestureDetector(
                          onTap: () {},
                          child: Text(AppString.communityGuidelines,
                              style: StylesManager.getRegularStyle(
                                  color: ColorManager.white,
                                  fontSize: FontSize.s17)),
                        ),
                        const SizedBox(height: AppSize.s14),
                        GestureDetector(
                          onTap: () {},
                          child: Text(AppString.termsOfService,
                              style: StylesManager.getRegularStyle(
                                  color: ColorManager.white,
                                  fontSize: FontSize.s17)),
                        ),
                        const SizedBox(height: AppSize.s14),
                        GestureDetector(
                          onTap: () {},
                          child: Text(AppString.privacy,
                              style: StylesManager.getRegularStyle(
                                  color: ColorManager.white,
                                  fontSize: FontSize.s17)),
                        ),
                        const SizedBox(height: AppSize.s14),
                        GestureDetector(
                          onTap: () {},
                          child: Text(AppString.careers,
                              style: StylesManager.getRegularStyle(
                                  color: ColorManager.white,
                                  fontSize: FontSize.s17)),
                        ),
                        const SizedBox(height: AppSize.s14),
                        GestureDetector(
                          onTap: () {},
                          child: Text(AppString.help,
                              style: StylesManager.getRegularStyle(
                                  color: ColorManager.white,
                                  fontSize: FontSize.s17)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Divider(thickness: AppSize.s1_5, color: ColorManager.white),
            Padding(
                padding: const EdgeInsets.all(AppPadding.p30),
                child: Row(children: [
                  Icon(Icons.copyright,
                      color: ColorManager.white, size: FontSize.s12),
                  const SizedBox(width: AppSize.s4),
                  Text(AppString.d2021Openart,
                      style: StylesManager.getRegularStyle(
                          color: ColorManager.white, fontSize: FontSize.s14)),
                ]))
          ],
        ));
  }
}
