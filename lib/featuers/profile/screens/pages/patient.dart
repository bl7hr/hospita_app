import 'package:flutter/material.dart';
import 'package:raight_code_task1/core/resources/icons.dart';

import '../../../../combonents/combonent.dart';
import '../../../../core/resources/colors.dart';
import '../../../../core/resources/fonts.dart';
import '../../../../core/resources/sizes.dart';
import '../../../../core/resources/strings.dart';
import '../components/components.dart';
import '../widgets/blue_icon.dart';
import '../widgets/review.dart';
import '../widgets/sub_titles_profile.dart';


class Patient extends StatefulWidget {

  const Patient({Key? key}) : super(key: key);

  @override
  State<Patient> createState() => _ServiceProviderState();
}

class _ServiceProviderState extends State<Patient> {
  @override
  Size getsize(){
    return MediaQuery.of(context).size;
  }

  Widget build(BuildContext context) {
    var width=getsize().width/390;
    return SafeArea(child:
    Scaffold
      (

      body: Column(
        children: [
          Container(
            child: Column (
              children: [
                Padding(
                  padding: const EdgeInsets.all(SizesGeneral.size20),
                  child: appbarIcon((){Navigator.pop(context);}),
                ),
                const SizedBox(height:SizesGeneral.size12,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SizedBox(width: SizesGeneral.size5,),
                    text(txt: '5.0',size: 15),
                    Icon(IconGeneral.star,color: ColorGeneral.pink,size: SizesGeneral.size16,),
                    Center(child: Container(width:SizesGeneral.size125,height:SizesGeneral.size125,child: Image(image: AssetImage(StringsGeneral.doriDoreauimg))))
                    ,Icon(IconGeneral.location,color: ColorGeneral.pink,size: SizesGeneral.size18,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: SizesGeneral.size16,),
                        text(txt: StringsGeneral.gaziantep,size: SizesGeneral.size16),
                        text(txt: StringsGeneral.sahinbey,size: SizesGeneral.size14,clr: ColorGeneral.textGrey),
                      ],
                    )
                  ],
                ),
                SizedBox(height: SizesGeneral.size11,),
                text(txt: StringsGeneral.michaelKnight,size:SizesGeneral.size24,fontWeight: FontsGeneral.w700 ),
                text(txt: StringsGeneral.englishArabic,size:SizesGeneral.size14 ,clr: ColorGeneral.textGrey),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    blueIcon(IconGeneral.blueHome),
                    SizedBox(width: SizesGeneral.size20,),
                    blueIcon(IconGeneral.blueHospital),
                    SizedBox(width: SizesGeneral.size20,),
                    blueIcon(IconGeneral.blueAction),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: SizesGeneral.size3,),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  subTitlesProfile(StringsGeneral.info),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: SizesGeneral.size20,),
                        containerProfile(StringsGeneral.individualSession, StringsGeneral.ten),
                        const SizedBox(width: SizesGeneral.size17,),
                        containerProfile(StringsGeneral.groupSession, StringsGeneral.five),
                      ],
                    ),
                  ),
                  subTitlesProfile(StringsGeneral.diseases),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: SizesGeneral.size20,),
                        chip(txt: StringsGeneral.soreness),
                        const SizedBox(width: SizesGeneral.size12,),
                        chip(txt: StringsGeneral.neckPain),
                        const SizedBox(width: SizesGeneral.size12,),
                        chip(txt: StringsGeneral.neckPain),
                      ],
                    ),
                  ),

                  const SizedBox(height: SizesGeneral.size7,),
                  Center(child: defultButton(press:(){},width:SizesGeneral.size350*0.92,txt: StringsGeneral.contact))
                  ,subTitlesProfile(StringsGeneral.reviews),
                  reveiw(StringsGeneral.tonyDanza,StringsGeneral.firstReview,StringsGeneral.secomdimgReview,getsize().width),

                  reveiw(StringsGeneral.nameSurname,StringsGeneral.secondReview,StringsGeneral.firstimgReview,getsize().width)
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }

}
