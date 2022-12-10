import 'package:flutter/cupertino.dart';

import '../../../../core/resources/colors.dart';
import '../../../../core/resources/fonts.dart';
import '../../../../core/resources/sizes.dart';
import '../../../../core/resources/strings.dart';
import '../components/components.dart';

Widget reveiw(String firstLine,String lastLine,String img,double width){
  return Padding(
    padding: const EdgeInsets.only(left: SizesGeneral.size20,bottom: SizesGeneral.size7),
    child: Row(
      children: [

        Container(width:SizesGeneral.size60,height:SizesGeneral.size60,child: Image(image: AssetImage(img),)),
        SizedBox(width: SizesGeneral.size7,),
        Container(
          //  **********************************************************************************************************
          width: SizesGeneral.size250,
          height: SizesGeneral.size64,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(SizesGeneral.size12),color: ColorGeneral.containerIcon),
          child: Padding(
            padding: const EdgeInsets.all(SizesGeneral.size9),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    text(txt: firstLine,size: SizesGeneral.size14,clr: ColorGeneral.textveryGrey),
                    text(txt: StringsGeneral.date,size: SizesGeneral.size14,clr: ColorGeneral.textGrey),
                  ],
                ),
                text(txt: lastLine,size: SizesGeneral.size14*width/390,fontWeight: FontsGeneral.w700,textOverflow: TextOverflow.ellipsis)
              ],
            ),
          ),
        )
      ],
    ),
  );
}