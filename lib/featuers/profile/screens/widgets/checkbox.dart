import 'package:flutter/material.dart';

import '../../../../core/resources/sizes.dart';
import '../components/components.dart';

Widget chickBox({required String txt,required Widget checkBox})
{
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      const SizedBox(width: SizesGeneral.size18,),
      Container(

        width: 29,
        height: 29,
        child: Transform.scale(
            scale: 1.6,
            child: checkBox
        ),
      ),
      const SizedBox(width: SizesGeneral.size13,),
      text(txt: txt),

    ],
  );
}