import 'package:flutter/material.dart';
import 'package:raight_code_task1/core/resources/colors.dart';
import 'package:raight_code_task1/core/resources/fonts.dart';
import 'package:raight_code_task1/core/resources/sizes.dart';
import 'package:raight_code_task1/core/resources/strings.dart';

import '../../../../combonents/combonent.dart';
import '../../model/models.dart';
import '../components/components.dart';
import '../widgets/checkbox.dart';
import 'service_providers.dart';


class ServiceProviderFillter extends StatefulWidget {
  const ServiceProviderFillter({Key? key}) : super(key: key);

  @override
  State<ServiceProviderFillter> createState() => _ServiceProviderFillterState();
}


class _ServiceProviderFillterState extends State<ServiceProviderFillter> {
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorGeneral.background,

        body: Padding(
          padding: const EdgeInsets.all(SizesGeneral.size20),
          child: Column(

            children: [
              appbarIcon((){Navigator.pop(context);}),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [

                      const SizedBox(height:SizesGeneral.size34,),
                      text(txt: StringsGeneral.titleService,size: SizesGeneral.size24,fontWeight: FontsGeneral.bold),
                      text(txt: StringsGeneral.pleaseDetermineYourCriteria,size: SizesGeneral.size14,clr: ColorGeneral.textGrey),
                     const SizedBox(height:SizesGeneral.size42,),
                      //first fillter search
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          text(txt: StringsGeneral.city),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //text box for search
                              textFild(),
                              SizedBox(height: SizesGeneral.size10,),
                              Row(
                                children: [
                                  chip(
                                      width: SizesGeneral.size100,
                                      height: SizesGeneral.size40,
                                      txt: StringsGeneral.gaziantep),
                                  SizedBox(width: SizesGeneral.size5,),
                                  chip(
                                      width: SizesGeneral.size75,
                                      height: SizesGeneral.size40,
                                      txt: StringsGeneral.adana),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height:SizesGeneral.size10,),
                      //second fillter search
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          text(txt: StringsGeneral.district),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //text box for search
                              textFild(),
                              SizedBox(height: SizesGeneral.size8,),
                              chip(
                                  width: SizesGeneral.size75,
                                  height: SizesGeneral.size40,
                                  txt: StringsGeneral.any)
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height:SizesGeneral.size28,),
                      //checlbox**********************************
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          text(txt: StringsGeneral.serviceType),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //text box for search
                            chickBox(txt: StringsGeneral.home,checkBox: Checkbox(value: homeChecked, onChanged: (oncheck){
                              setState((){
                                homeChecked=!homeChecked;
                              });
                            },
                              shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(3.0))),
                              activeColor: ColorGeneral.pink,side: BorderSide(color: ColorGeneral.pink,width: 2),),),
                              const SizedBox(height: SizesGeneral.size10,),
                              chickBox(txt: StringsGeneral.center,checkBox: Checkbox(value: centerChecked, onChanged: (oncheck){
                                setState((){
                                  centerChecked=!centerChecked;
                                });
                              },
                                shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(3.0))),
                                activeColor: ColorGeneral.pink,side: BorderSide(color: ColorGeneral.pink,width: 2),),),
                              const SizedBox(height: SizesGeneral.size10,),
                            chickBox(txt: StringsGeneral.online,checkBox: Checkbox(value: onlineChecked, onChanged: (oncheck){
                              setState((){
                                onlineChecked=!onlineChecked;
                              });
                            },
                              shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(3.0))),
                              activeColor: ColorGeneral.pink,side: BorderSide(color: ColorGeneral.pink,width: 2),),),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height:SizesGeneral.size28,),
                      //button**********************************
                      defultButton(txt:StringsGeneral.applay,press: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>ServiceProviders()));}),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }



}
