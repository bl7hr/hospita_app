import 'package:flutter/material.dart';

import '../../../../combonents/combonent.dart';
import '../../../../core/resources/colors.dart';
import '../../../../core/resources/fonts.dart';
import '../../../../core/resources/sizes.dart';
import '../../../../core/resources/strings.dart';
import '../../model/models.dart';
import '../components/components.dart';
import '../widgets/list_service.dart';



class ServiceProviders extends StatelessWidget {
  const ServiceProviders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(backgroundColor: ColorGeneral.background,

    body: Column(
    children: [
    const SizedBox(height:SizesGeneral.size54,),
    text(txt: StringsGeneral.titleService,size: SizesGeneral.size24,fontWeight: FontsGeneral.bold),
    text(txt: StringsGeneral.pleaseDetermineYourCriteria,size: SizesGeneral.size14,clr: ColorGeneral.textGrey),
    const SizedBox(height:SizesGeneral.size5,),
      Row(children: [
        const SizedBox(width: SizesGeneral.size20,),

        textFild(
            height: SizesGeneral.size56,
            width: SizesGeneral.size286
        ),
      ],
      ),
      const SizedBox(height: SizesGeneral.size8,),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            const SizedBox(width: SizesGeneral.size20,),
            chip(txt: StringsGeneral.any,width: SizesGeneral.size80),
            const SizedBox(width: SizesGeneral.size9,),
            chip(txt: StringsGeneral.sports,),
            const SizedBox(width: SizesGeneral.size9,),
            chip(txt: StringsGeneral.orthopedics,),
          ],
        ),
      ),
      const SizedBox(height: 37,),
      listViewService(),
      ]
    )
    )
    );
  }
}
