import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Pages/show.dart';

import 'Pages/myhomepage.dart';
import 'bloc/cbuit.dart';
import 'bloc/state.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>Appcubit(),
      child: BlocConsumer<Appcubit,Appstates>(
        listener: (context,state){},
        builder: (context,state)=>MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Directionality(
              textDirection: TextDirection.rtl,
              child: MyHomePage()),
        ),
      )
    );
  }
}
