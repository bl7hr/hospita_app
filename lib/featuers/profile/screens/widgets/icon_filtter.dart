import 'package:flutter/material.dart';

import '../../../../core/resources/colors.dart';
import '../../../../core/resources/sizes.dart';

Widget iconFillter(){
  return Padding(
    padding: const EdgeInsets.all(SizesGeneral.size8),
    child: Container(
      width: SizesGeneral.size56,
      height: SizesGeneral.size56,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(SizesGeneral.size15,),
          color: ColorGeneral.backgContinerIcon),
      child:Padding(
        padding: const EdgeInsets.all(SizesGeneral.size18),
        child: Image(image: AssetImage("icons/list.png"),),
      ),
    ),
  );
}