
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:raight_code_task1/core/resources/sizes.dart';

import '../../model/models.dart';
import 'myList.dart';
Widget listViewService(){
  return Container(
    child: Expanded(
      child: ListView.separated(
          shrinkWrap: true,
          reverse: false,
          itemBuilder:  (BuildContext context, int index)
          {
            return  myListTile(imgeUrl: contactList[index]["image"], fullName: contactList[index]["full_name"],contactIndex:index,
                firstIcon:contactList [index]["firstIcon"],secondIcon:contactList [index]["secondIcon"],thirdIcon:contactList [index]["thirdIcon"]   ,country: contactList[index]["country"]);
          } ,
          separatorBuilder: (BuildContext context, int index)=>Padding(
            padding: const EdgeInsets.only(right: 15,left: 65),
            child:SizedBox(height: SizesGeneral.size30,)
          ),
          itemCount:  contactList.length),
    ),
  );
}