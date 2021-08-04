import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mafahomtask/Constants/palette.dart';
import 'package:flutter_mafahomtask/Constants/parameters.dart';
import 'package:flutter_mafahomtask/bloc/cbuit.dart';
import 'package:flutter_mafahomtask/bloc/state.dart';


class Show extends StatelessWidget {
  String image;
  String text;

  Show(this.image,this.text);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Appcubit,Appstates>(
      builder: (context,state)=>Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Palette.APPBAR_IconsCOLOR,
          ),

          backgroundColor: Palette.APPBAR_COLOR,
          actions: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 20, 0),
              child: Text('خدمات طلابيه',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Palette.ListViewTextColor),),
            ),

          ],

        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(15),
                width: double.infinity,
                height: FixedValues.heightContainershow,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: NetworkImage('$image'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.fromLTRB(0, 20, 30, 0),
                child: Text(text,style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold,color: Palette.ScaffoldTextColor),),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(30, 20, 30, 10),
                child: Row(
                  children: [
                    Text('30P',style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold,color: Palette.ListViewTextColor),),
                    SizedBox(width: 115,),
                    Expanded(
                      child: Container(
                        child: Row(
                          children: [
                            Container(
                              width: FixedValues.widthContainershow,
                              child: RaisedButton(
                                  color: Palette.Buttom_COLOR,
                                  child: Text('+',style: TextStyle(color: Palette.TextButtom_COLOR,fontWeight: FontWeight.bold),),
                                  onPressed: (){
                                    Appcubit.get(context).add();
                                    print('${Appcubit.get(context).value}');


                                  }),
                            ),
                            SizedBox(width: 20,),
                            Text('${Appcubit.get(context).value}',style: TextStyle(color:Palette.ScaffoldTextColor,fontWeight: FontWeight.bold,fontSize: 20),),
                            SizedBox(width: 20,),
                            Container(
                              width: FixedValues.widthContainershow,
                              child: RaisedButton(
                                  color: Palette.Buttom_COLOR,
                                  child: Text('-',style: TextStyle(color: Palette.TextButtom_COLOR,fontWeight: FontWeight.bold,fontSize: 20),),
                                  onPressed: (){
                                    Appcubit.get(context).sub();
                                    print('${Appcubit.get(context).value}');
                                  }),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 25,),
              Container(
                height: FixedValues.heightContainerButtom,
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                width: double.infinity,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Text('اضافه',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Palette.TextButtom_COLOR)),
                  color: Palette.Buttom_COLOR,
                  onPressed: (){},
                ),
              )
            ],
          ),
        ),
      ),
      listener: (context,state){},
    );
  }
}
