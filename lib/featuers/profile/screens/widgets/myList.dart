import 'package:flutter/material.dart';

import '../../../../core/resources/colors.dart';
import '../../../../core/resources/fonts.dart';
import '../../../../core/resources/icons.dart';
import '../../../../core/resources/sizes.dart';
import '../../../../core/resources/strings.dart';
import '../components/components.dart';

Widget myListTile({required String imgeUrl,required String fullName,required String country,
  required var firstIcon,required var secondIcon,required var thirdIcon ,required int contactIndex}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      // const SizedBox(width: SizesGeneral.size37,),
      Container(
          width: SizesGeneral.size120,
          height:SizesGeneral.size120 ,
          child: Image(image: AssetImage(imgeUrl))),
      Container(
        width: SizesGeneral.size160,
        height: SizesGeneral.size100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [
            text(txt:fullName,size: SizesGeneral.size20,fontWeight: FontsGeneral.w400),
            text(txt:country,size: SizesGeneral.size14,fontWeight: FontsGeneral.w400,clr: ColorGeneral.textGrey),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(width:23,height:22,child: Image(image: AssetImage(firstIcon))),
                const SizedBox(width: 8,),
                Container(width:18.1,height:23,child: Image(image: AssetImage(secondIcon))),
                const SizedBox(width: 8,),
                Container(width:19,height:19,child: Image(image: AssetImage(thirdIcon))),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(IconGeneral.star,size: SizesGeneral.size10,color: ColorGeneral.buttonBlue,),
                Icon(IconGeneral.star,size: SizesGeneral.size10,color: ColorGeneral.buttonBlue,),
                Icon(IconGeneral.star,size: SizesGeneral.size10,color: ColorGeneral.buttonBlue,),
                Icon(IconGeneral.star,size: SizesGeneral.size10,color: ColorGeneral.iconGrey),
                Icon(IconGeneral.star,size: SizesGeneral.size10,color: ColorGeneral.iconGrey)
              ],
            ),
            text(txt: StringsGeneral.seemore,clr: ColorGeneral.pink,size: SizesGeneral.size10)
          ],
        ),
      )
    ],
  );
}