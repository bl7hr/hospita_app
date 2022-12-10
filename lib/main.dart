import 'package:flutter/material.dart';
import 'package:raight_code_task1/featuers/profile/screens/pages/service_providers.dart';

import 'featuers/profile/screens/pages/patient.dart';
import 'featuers/profile/screens/pages/patient_fillter.dart';
import 'featuers/profile/screens/pages/patients.dart';
import 'featuers/profile/screens/pages/service_provider_fillter.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      home: const ServiceProviders(),
    );
  }
}
