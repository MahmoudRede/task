import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mafahomtask/bloc/state.dart';

class Appcubit extends Cubit<Appstates>{
  Appcubit() : super(init());

  static Appcubit get(context)=> BlocProvider.of(context);

  List images=[
    'https://manaraa.com/images/posts/26f44fb4-8624-4b80-a3c0-bc93854a1316.jpg',
    'https://www.sayidaty.net/sites/default/files/pictures/June/1362351/2021/books-584.jpg',
    'https://mostaql.hsoubcdn.com/uploads/474433-K3uGt-1537204521-Image-1.jpg',
    'https://i.pinimg.com/564x/a0/03/41/a003413179000ec1f966278e2a1f080f.jpg',
    'https://resumesmag.com/wp-content/uploads/edd/2018/09/Bilingo-01-Bilingual-English-Arabic-Resume-Template.jpg',
    'https://www.arageek.com/wp-content/uploads/2021/04/encyclopedia-%D8%AA%D8%B5%D9%85%D9%8A%D9%85-%D8%A7%D9%84%D8%B5%D9%88%D8%B1.jpg',
    'https://www.alhayatp.net/upload/02-2020/article/5e3b3bcfa2571.png',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSD8qsJMcVZJtFir81Uok-GBCAK-sd-O2E9Ww&usqp=CAU',
    'https://cdn.salla.sa/BK2iWR5H5FftQWmpI4cWZt2qVDRkHrcsJbZdidA3.png',
    'https://www.alhafiz.com/Binding/image/binding/Spiral-Binding/SPIRAL-BINDING--2.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxLaBVNYCWGeJ2JhP12H_2l7dDiFiQwR_7Dj_Y-vNvK-HJfuJph8ONaptF2vIIDxJD674&usqp=CAU',
  ];

  List tools=[
    'بحوث',
    'تلخيص كتب',
    'عروض بوربيونت',
    'خرائط ذكيه',
    'سيره ذاتيه',
    'تصميم صور',
    'ترجمه',
    'طباعه',
    'تجيلد فاخر',
    'تجليد بلاستيك',
    'تجليد سلك',
  ];
  var value=1;

  void add(){
    value=value+1;
    emit(addvalue());
  }

  void sub(){
    value--;
    emit(subvalue());
  }

}