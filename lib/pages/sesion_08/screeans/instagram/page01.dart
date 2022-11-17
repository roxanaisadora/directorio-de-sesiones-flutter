import 'package:flutter/material.dart';
import 'package:sesion_03/pages/sesion_08/widgets/pageinsta.dart';

class HomePage01Insta extends StatelessWidget {
  const HomePage01Insta({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    final List<dynamic> data = [
      {
      'img':'https://i.pinimg.com/originals/08/4a/a9/084aa99a1f17b3cc6f838f302a6903f2.gif',
      'user':'https://cdn.pixabay.com/photo/2015/11/26/00/14/woman-1063100_960_720.jpg',
      'title': 'User0236558',
      'subtitle':
          'La suerte depende de tu día ☕',
      'like':'300',
      'comment':'19',
      'music':'Rompe - Daddy Yankee',
      'persona':'8'
    },
    {
      'img':'https://i.pinimg.com/originals/b2/3a/7e/b23a7e549c2087aa9e1442748589a6be.gif',
      'user':'https://cdn.pixabay.com/photo/2017/02/06/10/54/sad-2042536_960_720.jpg',
      'title': 'User3652358',
      'subtitle':
          'Si van a derribarte, se trata de levantarte😇😇',
      'like':'800',
      'comment':'169K',
      'music':'Provenza - Karol G',
      'persona':'20'
    },
    {
      'img':'https://i.pinimg.com/originals/e6/29/49/e6294964e26db35f05e41e25e689b19d.gif',
      'user':'https://cdn.pixabay.com/photo/2016/11/29/20/22/girl-1871104_960_720.jpg',
      'title': 'User0236558',
      'subtitle':
          'Los gatos cambian el mundo🐱💖🐯',
      'like':'300k',
      'comment':'519',
      'music':'Ovy On The Drums|Karol G',
      'persona':'10'
    },
    {
      'img':'https://i.pinimg.com/originals/34/cb/71/34cb713f392a1c97fece3bb374fb3ba9.gif',
      'user':'https://cdn.pixabay.com/photo/2015/01/12/10/45/man-597178_960_720.jpg',
      'title': 'User3652358',
      'subtitle':
          'El optimista ve oportunidades en cada dificultad❤️',
      'like':'800k',
      'comment':'269k',
      'music':'Sobrio - Maluma',
      'persona':'39'
    },
    {
      'img':'https://i.pinimg.com/originals/b1/94/ab/b194ab7572ce483e5643b0cf605c06b9.gif',
      'user':'https://cdn.pixabay.com/photo/2015/11/26/00/14/woman-1063100_960_720.jpg',
      'title': 'User0236558',
      'subtitle':
          'No importa lo que te diga la gente 🐍 siempre se tú.',
      'like':'200k',
      'comment':'369',
      'music':'Creme - Karol G & Maluma',
      'persona':'40'
    },
    {
      'img':'https://i.pinimg.com/originals/f8/9e/8a/f89e8a6925dbdc1fbd76ce507a2ed7a9.gif',
      'user':'https://cdn.pixabay.com/photo/2017/02/06/10/54/sad-2042536_960_720.jpg',
      'title': 'User3652358',
      'subtitle':
          'Sé amable, porque toda persona está librando una gran batalla💪💪',
      'like':'378',
      'comment':'769',
      'music':'Mienteme - TINI || Maria',
      'persona':'3'
    },
    {
      'img':'https://i.pinimg.com/originals/ec/68/0d/ec680dcb8e71e35a32785e9f3a29a433.gif',
      'user':'https://cdn.pixabay.com/photo/2015/11/26/00/14/woman-1063100_960_720.jpg',
      'title': 'User0236558',
      'subtitle':
          'El momento en que tienes que seguir avanzando😝😁',
      'like':'300',
      'comment':'19',
      'music':'Felices los 4 || Maluma',
      'persona':'80'
    },
    {
      'img':'https://i.pinimg.com/originals/e7/26/21/e726216664522f176d6bf627bc74410a.gif',
      'user':'https://cdn.pixabay.com/photo/2017/02/06/10/54/sad-2042536_960_720.jpg',
      'title': 'User3652358',
      'subtitle':
          'El pesimista ve dificultades en cada oportunidad.🙏',
      'like':'600',
      'comment':'369K',
      'music':'Lary Over - Luis Figueroa',
      'persona':'48'
    },
    ];
    
    return Scaffold(
      body: SafeArea(child: 
      Stack(children: [
          Stack(
            children: [
              PageView.builder(
                itemCount: data.length,
                scrollDirection: Axis.vertical,
                controller: controller,
                itemBuilder: ((context, index) {
                  final datos = data[index];
                  return InstagramPage(
                      img: datos['img'],
                      user: datos['user'],
                      username: datos['title'],
                      msn: datos['subtitle'],
                      music: datos['music'],
                      like: datos['like'],
                      comment: datos['comment'],
                      numperson: datos['persona'],
                  );
                }),
              )
            ],
          ),

        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Reels', style: TextStyle(color: Colors.white, fontSize: 30),),
              
              IconButton(icon: const Icon(Icons.camera_alt, color: Colors.white,size: 30,),onPressed: () {},),
            ],
          ),
        )
      ],)),
    );
  }
}

