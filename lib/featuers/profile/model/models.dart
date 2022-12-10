import 'package:flutter/material.dart';
import 'package:raight_code_task1/combonents/combonent.dart';
import 'package:raight_code_task1/core/resources/colors.dart';
import 'package:raight_code_task1/core/resources/fonts.dart';
import 'package:raight_code_task1/core/resources/icons.dart';
import 'package:raight_code_task1/core/resources/sizes.dart';
import 'package:raight_code_task1/core/resources/strings.dart';

import '../screens/components/components.dart';


bool homeChecked=false;
bool onlineChecked=false;
bool centerChecked=false;



List<Map<String,dynamic>> contactList=[
  {"image":StringsGeneral.thomas,
    "full_name":StringsGeneral.thomasMagnum,
    "firstIcon":IconGeneral.home,
    "secondIcon":StringsGeneral.hospital,
    "thirdIcon":IconGeneral.action,
    "country":StringsGeneral.istanbul
  },
  {"image":StringsGeneral.aprilPath,
    "full_name":StringsGeneral.aprilCurtis,
    "firstIcon":IconGeneral.home,
    "secondIcon":StringsGeneral.hospital,
    "thirdIcon":IconGeneral.action,
    "country":StringsGeneral.gaziantep
  },
  {"image":StringsGeneral.peter,
    "full_name":StringsGeneral.peterThornton,
    "firstIcon":IconGeneral.home,
    "secondIcon":StringsGeneral.hospital,
    "thirdIcon":IconGeneral.action,
    "country":StringsGeneral.adana
  },
  {"image":StringsGeneral.devon,
    "full_name":StringsGeneral.devonMiles,
    "firstIcon":IconGeneral.home,
    "secondIcon":StringsGeneral.hospital,
    "thirdIcon":IconGeneral.action,
    "country":StringsGeneral.mersin
  },
];



List<Map<String,dynamic>> patientList=[
  {"image":StringsGeneral.willieImg,
    "full_name":StringsGeneral.willieTanner,
    "firstIcon":IconGeneral.home,
    "secondIcon":StringsGeneral.hospital,
    "thirdIcon":IconGeneral.action,
    "country":StringsGeneral.istanbul
  },
  {"image":StringsGeneral.doriImg,
    "full_name":StringsGeneral.doriDoreau,
    "firstIcon":IconGeneral.home,
    "secondIcon":StringsGeneral.hospital,
    "thirdIcon":IconGeneral.action,
    "country":StringsGeneral.gaziantep
  },
  {"image":StringsGeneral.angusImg,
    "full_name":StringsGeneral.angusMacGyver,
    "firstIcon":IconGeneral.home,
    "secondIcon":StringsGeneral.hospital,
    "thirdIcon":IconGeneral.action,
    "country":StringsGeneral.adana
  },
  {"image":StringsGeneral.rickImg,
    "full_name":StringsGeneral.rickImg,
    "firstIcon":IconGeneral.home,
    "secondIcon":StringsGeneral.hospital,
    "thirdIcon":IconGeneral.action,
    "country":StringsGeneral.mersin
  },
];