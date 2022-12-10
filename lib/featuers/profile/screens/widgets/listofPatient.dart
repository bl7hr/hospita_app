
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:raight_code_task1/core/resources/sizes.dart';

import '../../model/models.dart';
import 'myList.dart';

Widget listViewPatient(){
  return Container(
    child: Expanded(
      child: ListView.separated(
          shrinkWrap: true,
          reverse: false,
          itemBuilder:  (BuildContext context, int index)
          {
            return  myListTile(imgeUrl: patientList[index]["image"], fullName: patientList[index]["full_name"],contactIndex:index,
                firstIcon:patientList [index]["firstIcon"],secondIcon:patientList [index]["secondIcon"],thirdIcon:patientList [index]["thirdIcon"]   ,country: patientList[index]["country"]);
          } ,
          separatorBuilder: (BuildContext context, int index)=>Padding(
            padding: const EdgeInsets.only(right: 15,left: 65),
            child: SizedBox(height: SizesGeneral.size30,)
          ),
          itemCount:  patientList.length),
    ),
  );
}