
import 'package:flutter/cupertino.dart';

import '../../../../core/resources/colors.dart';
import '../../../../core/resources/sizes.dart';

Widget blueIcon(String path){
  return Container(
    width: SizesGeneral.size50,
    height: SizesGeneral.size50,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(SizesGeneral.size15),color: ColorGeneral.containerIcon),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image(image: AssetImage(path),),
    ),
  );
}
