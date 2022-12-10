import 'package:flutter/material.dart';

import '../../../../core/resources/fonts.dart';
import '../../../../core/resources/sizes.dart';
import '../components/components.dart';

Widget subTitlesProfile(String txt){
  return Row
    (
    children: [
      Padding(
        padding: const EdgeInsets.only(left: SizesGeneral.size20,top: SizesGeneral.size7,bottom: SizesGeneral.size7),
        child: text(txt: txt,fontWeight: FontsGeneral.w700,size: SizesGeneral.size24),
      ),
    ],
  );
}