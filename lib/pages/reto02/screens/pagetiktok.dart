import 'package:flutter/material.dart';
import 'package:sesion_03/pages/reto02/tiktokwidget.dart';
import 'package:tiktoklikescroller/tiktoklikescroller.dart';


class ScrollTiktok extends StatefulWidget {
  const ScrollTiktok({super.key});

  @override
  State<ScrollTiktok> createState() => _ScrollTiktokState();
}

class _ScrollTiktokState extends State<ScrollTiktok> {
  late Controller controller;
  final List<dynamic> data = [
    {
      'img':'https://i.pinimg.com/736x/1b/34/33/1b34337e28034bb2f842d2db41a45068.jpg',
      'user':'https://cdn.pixabay.com/photo/2015/11/26/00/14/woman-1063100_960_720.jpg',
      'title': 'User0236558',
      'subtitle':
          'La suerte depende de tu día ☕',
      'like':'300',
      'comment':'19',
      'mark':'39',
      'share':'94',
      'music':'Rompe - Daddy Yankee'
    },
    {
      'img':'https://i.pinimg.com/564x/2f/d1/bd/2fd1bd672d4b8057de9e190bf3db17f6.jpg',
      'user':'https://cdn.pixabay.com/photo/2017/02/06/10/54/sad-2042536_960_720.jpg',
      'title': 'User3652358',
      'subtitle':
          'Si van a derribarte, se trata de levantarte😇😇',
      'like':'800',
      'comment':'169K',
      'mark':'239',
      'share':'944',
      'music':'Provenza - Karol G'
    },
    {
      'img':'https://i.pinimg.com/564x/aa/8a/d1/aa8ad10b0fa7346fd691ec0d84494a11.jpg',
      'user':'https://cdn.pixabay.com/photo/2016/11/29/20/22/girl-1871104_960_720.jpg',
      'title': 'User0236558',
      'subtitle':
          'Los gatos cambian el mundo🐱💖🐯',
      'like':'300k',
      'comment':'519',
      'mark':'390K',
      'share':'754',
      'music':'Ovy On The Drums - Karol G'
    },
    {
      'img':'https://i.pinimg.com/750x/be/b1/c9/beb1c9e56bf29c17d756ff46bc61c4e2.jpg',
      'user':'https://cdn.pixabay.com/photo/2015/01/12/10/45/man-597178_960_720.jpg',
      'title': 'User3652358',
      'subtitle':
          'El optimista ve oportunidades en cada dificultad❤️',
      'like':'800k',
      'comment':'269k',
      'mark':'639',
      'share':'384',
      'music':'Sobrio - Maluma'
    },
    {
      'img':'https://i.pinimg.com/750x/0b/ba/23/0bba239202d50e3fdc40d3952cf99263.jpg',
      'user':'https://cdn.pixabay.com/photo/2015/11/26/00/14/woman-1063100_960_720.jpg',
      'title': 'User0236558',
      'subtitle':
          'No importa lo que te diga la gente 🐍 siempre se tú.',
      'like':'200k',
      'comment':'369',
      'mark':'79',
      'share':'84',
      'music':'Creme - Karol G & Maluma'
    },
    {
      'img':'https://i.pinimg.com/564x/cf/be/0d/cfbe0dcc10cc33628c7bf299839b54f9.jpg',
      'user':'https://cdn.pixabay.com/photo/2017/02/06/10/54/sad-2042536_960_720.jpg',
      'title': 'User3652358',
      'subtitle':
          'Sé amable, porque toda persona está librando una gran batalla💪💪',
      'like':'378',
      'comment':'769',
      'mark':'632K',
      'share':'300',
      'music':'Mienteme - TINI || Maria'
    },
    {
      'img':'https://i.pinimg.com/564x/0c/87/37/0c8737d8bc88d4b843a45d0d31222b4c.jpg',
      'user':'https://cdn.pixabay.com/photo/2015/11/26/00/14/woman-1063100_960_720.jpg',
      'title': 'User0236558',
      'subtitle':
          'El momento en que tienes que seguir avanzando😝😁',
      'like':'300',
      'comment':'19',
      'mark':'39',
      'share':'94',
      'music':'Felices los 4 || Maluma'
    },
    {
      'img':'https://i.pinimg.com/564x/80/40/3d/80403d9c5d5f464186359598663c8112.jpg',
      'user':'https://cdn.pixabay.com/photo/2017/02/06/10/54/sad-2042536_960_720.jpg',
      'title': 'User3652358',
      'subtitle':
          'El pesimista ve dificultades en cada oportunidad.🙏',
      'like':'600',
      'comment':'369K',
      'mark':'489',
      'share':'544',
      'music':'Lary Over - Luis Figueroa'
    },
    
    
  ];

  Controller? testingController;

  @override
  void initState() {
  controller = testingController ?? Controller()
  ..addListener((event) {
  _handleCallbackEvent(event.direction, event.success);
  });
  super.initState();
  }

  void _handleCallbackEvent(ScrollDirection direction, ScrollSuccess success,
      {int? currentIndex}) {
    print(
        "Scroll callback received with data: {direction: $direction, success: $success and index: ${currentIndex ?? 'not given'}}");
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TikTokStyleFullPageScroller(
        contentSize: data.length, 
        swipePositionThreshold:0.2 ,
        swipeVelocityThreshold: 2000,
        animationDuration: const Duration(milliseconds: 400),
        controller: controller,
        builder: (BuildContext contex, int index){
          final dato = data[index];
          return TiktokWidget(
              img: dato['img'],
              user: dato['user'],
              title: dato['title'],
              subtitle: dato['subtitle'],
              like: dato['like'],
              comment: dato['comment'],
              mark: dato['mark'],
              share: dato['share'],
              music: dato['music'],
          );
        }
        ),
    );
  }
}