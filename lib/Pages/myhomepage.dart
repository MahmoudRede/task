import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mafahomtask/Constants/palette.dart';
import 'package:flutter_mafahomtask/Constants/parameters.dart';
import 'package:flutter_mafahomtask/bloc/cbuit.dart';
import 'package:flutter_mafahomtask/bloc/state.dart';

import 'show.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<Appcubit,Appstates>(
            listener: (context,state){},
          builder: (context,state) =>
              Scaffold(
               appBar: AppBar(
               backgroundColor: Palette.APPBAR_COLOR,
                title: Text('خدمات طلابيه',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Palette.APPBAR_textCOLOR),),
                actions: [
                  IconButton(icon: Icon(Icons.search,color: Palette.APPBAR_IconsCOLOR,), onPressed: (){}),
                ],
          ),
                body: ListView.separated(
                   itemBuilder: (context,index)=>
                       InkWell(
                         onTap: (){
                           Navigator.of(context).push(MaterialPageRoute(builder: (_){
                             return Show('${Appcubit.get(context).images[index]}','${Appcubit.get(context).tools[index]}');
                           })
                           );
                         },
                         child: Container(
                          padding: EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Expanded(child: Text('${Appcubit.get(context).tools[index]}',
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Palette.ListViewTextColor),)),
                           Container(
                          height: FixedValues.heightContainerhome,
                          width: FixedValues.widthContainerhome,
                          margin: EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(
                                 scale: 60,
                                  image: NetworkImage('${Appcubit.get(context).images[index]}',),
                                   fit: BoxFit.cover,
                              )
                          ),
                      )

                    ],
                  ),
                ),
                       )

                          , separatorBuilder: (context,index)=>Container(
                        width: double.infinity,
                        height: 2,
                        color:  Palette.SeparatorColor,
                      ),
                       itemCount: Appcubit.get(context).images.length),
    )
    );
  }
}
