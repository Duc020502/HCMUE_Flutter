import 'package:app_qlsv/resources/widgets/Danh_sachsv.dart';
import 'package:app_qlsv/resources/widgets/Them_sinhvien.dart';
import 'package:app_qlsv/resources/widgets/admin.dart';
import 'package:app_qlsv/resources/widgets/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'bloc/ds_bloc.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp( const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: "Raleway"
        ),

        home: const admin(),
        //TxsSinhVien(),
      // const Splashscreen()
    );
  }
}


