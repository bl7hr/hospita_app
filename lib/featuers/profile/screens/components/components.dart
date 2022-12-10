import 'package:flutter/material.dart';
import 'package:raight_code_task1/core/resources/colors.dart';
import 'package:raight_code_task1/core/resources/fonts.dart';
import 'package:raight_code_task1/core/resources/sizes.dart';
import 'package:raight_code_task1/core/resources/strings.dart';

import '../../../../core/resources/icons.dart';



Widget appbarIcon(var onPress){
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(SizesGeneral.size10),
            color: ColorGeneral.containerIcon,),
          width: SizesGeneral.size50,
          height: SizesGeneral.size50,
          child: MaterialButton(onPressed: onPress,
              child: Icon(Icons.arrow_back_ios,color: ColorGeneral.black,))),
    ],
  );
}
//text field for srearch *****************************search
Widget textFild({
  double height=SizesGeneral.size40,
  double width=SizesGeneral.size218,
}){
  return SizedBox(
    height: height,
    width: width,
    child: TextField(

      decoration: InputDecoration(
        fillColor: ColorGeneral.seacrhGrey,
        filled: true,
        labelText: StringsGeneral.search ,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide.none),
        suffixIcon: Icon (IconGeneral.search,color: ColorGeneral.black,),
        //   contentPadding: EdgeInsets.all(4),
      ),),
  );
}
// defult text ************************text
Widget text({
  required String txt,
  double size=SizesGeneral.size20,
  FontWeight fontWeight=FontsGeneral.normal,
  Color clr=ColorGeneral.black,
  TextOverflow textOverflow=TextOverflow.visible,
})=>Text('$txt',style:TextStyle(fontWeight: fontWeight,fontSize: size,color: clr,overflow: textOverflow) ,);
List chipColor=[true,false,false];
//chip**********************************chip
Widget chip({
  double height=SizesGeneral.size50,
  double width=SizesGeneral.size150,
  required String txt,
  Color clr =ColorGeneral.chipUnselected,
  var onpress,
})=>Container(
  height: height,
  width: width,

  decoration: BoxDecoration(borderRadius: BorderRadius.circular(SizesGeneral.size50),color: clr,
      border: Border.all(color: ColorGeneral.black)
  ),
  child: MaterialButton(onPressed: onpress,
    child: text(txt: txt,size: SizesGeneral.size14),),
);

//button************************************button
Widget  defultButton({required String txt, double width=SizesGeneral.size250,var press,}){
  return Container(
    width: width,
    height: SizesGeneral.size50,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(SizesGeneral.size15),color: ColorGeneral.buttonBlue),
    child: MaterialButton(
        onPressed: press,
        child: text(txt: txt,clr: ColorGeneral.white,size: SizesGeneral.size16)
    ),
  );
}
//***************
//
Widget containerProfile(String firstLine,String lastLine){
  return Container(
    width: SizesGeneral.size153,
    height: SizesGeneral.size75,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(SizesGeneral.size15),color: ColorGeneral.containerIcon),
    child: Padding(
      padding: const EdgeInsets.all(SizesGeneral.size9),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          text(txt: firstLine,size: SizesGeneral.size14,clr: ColorGeneral.textGrey),
          text(txt: lastLine,size: SizesGeneral.size16,fontWeight: FontsGeneral.w700)
        ],
      ),
    ),
  );
}