import 'package:flutter/material.dart';
import 'package:sesion_03/pages/sesion_07/widgets/pantilla02.dart';
import 'package:tiktoklikescroller/tiktoklikescroller.dart';


class ScrollScrean07activity extends StatefulWidget {
  const ScrollScrean07activity({super.key});

  @override
  State<ScrollScrean07activity> createState() => _ScrollScrean07activityState();
}

class _ScrollScrean07activityState extends State<ScrollScrean07activity> {
  late Controller controller;
  final List<dynamic> data = [
    {
      'img':
          'https://imagenes.20minutos.es/files/image_990_v3/uploads/imagenes/2022/10/05/one-piece-film-red.jpeg',
      'title': 'One piece',
      'content':
          'Una historia épica de piratas, donde narra la historia de "Monkey D. Luffy" quien cuado tenia 7 años, comió accidentalmente una "Akuma no mi"(Futa del diablo) la cual le dio poderes de goma....'
    },
    {
      'img':
          'https://akamai.sscdn.co/uploadfile/letras/fotos/4/c/c/1/4cc11a26c62db7905bf2c1b4bf01033a.jpg',
      'title': 'Black clover',
      'content':
          'La historia de Black Clover nos pone en la piel de un joven llamado Asta, el cual ¡no puede usar magia! Por suerte, Asta recibe el grimorio trébol de cinco hojas, que le otorga el poder de la anti-magia. ¿Puede alguien carente de magia convertirse en el Rey Hechicero?...'
    },
    {
      'img':
          'https://1.bp.blogspot.com/-tUOmqxU3ckQ/XJJOK6CXFGI/AAAAAAAAT3Q/yW34O7esPgExcSeWg5a3NPg5qHqhhBRKQCLcBGAs/s1600/Tensei-shitara-Slime-Datta-Ken.jpg',
      'title': 'Tensei shitara Slime Datta Ken',
      'content':
          'Satoru Mikami es un hombre de 37 años que tiene un trabajo que no le gusta, sin salida y que no es feliz con la vida que lleva, ha reencarnado en un mundo de magia y espada...'
    },
    {
      'img':
          'https://www.egames.news/__export/1649629093912/sites/debate/img/2022/04/10/family.jpg_554688468.jpg',
      'title': 'Spy x Family',
      'content':
          'Twilight adopta la identidad del psiquiatra Loid Forger y comienza a buscar miembros para su familia, pero Anya, la hija que adopta, resulta tener la capacidad para leer las mentes a los demás, mientras que su esposa, Yor, es una asesina. Todos mantendrán estos en secreto, pero comenzarán una vida juntos en la que deberán ocultarse sus identidades unos a otros.'
    },
    {
      'img':
          'https://i.pinimg.com/originals/04/6a/af/046aaf5f2fea21896247a3921c1ff72e.jpg',
      'title': 'Naruto',
      'content':
          'Naruto, un aprendiz de ninja de la Aldea Oculta de Konoha es un chico travieso que desea llegar a ser el Hokage. La forma de actuar y la determinación de Naruto demuestran a los demás que puede llegar muy lejos, y el recelo de los otros chicos se va disipando. Naruto y sus compañeros Sakura y Sasuke, junto a su maestro Kakashi tendrán que enfrentarse a una serie de combates... '
    },
    {
      'img':
          'https://i0.wp.com/www.animegeek.com/wp-content/uploads/2022/10/Reincarnated-as-a-Sword-Season-2-release-date-Tensei-shitara-Ken-Deshita-Season-2-Anime.jpg?resize=780%2C439&ssl=1',
      'title': 'Tensei shitara Ken Deshita',
      'content':
          'El héroe se diferencia del protagonista habitual de historias isekai por el hecho de que se reencarna en una espada. Comienza su búsqueda apareciendo en medio de un bosque plagado de bestias, y se encuentra con una chica herida que huye frenéticamente por su vida...'
    },
    {
      'img':
          'https://images2.alphacoders.com/117/1176263.png',
      'title': 'Mairimashita! Iruma-kun',
      'content':
          'Suzuki Iruma ha sido vendido al demonio por sus padres irresponsables a cambio de dinero. Sorprendentemente, lo siguiente que sabe es que está viviendo con el demonio y ha sido transferido a una escuela en el Mundo Demonio ...'
    },
    {
      'img':
          'https://somoskudasai.com/wp-content/uploads/2022/09/143500283dfcda2f97a0507decc96e75-1.jpg',
      'title': 'Kage no Jitsuryokusha ni Naritakute!',
      'content':
          'Él aspira a convertirse en la mente maestra detrás de todo, moviendo los hilos y haciendo que sus maquinaciones impulsen toda la historia. ¡Mostrará la verdadera eminencia de la sombra!, recluta a miembros de su (falsa) organización “Shadow Garden”...'
    }
    
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
      appBar: AppBar(
        title: const Text('Catalogo Anime'),
        backgroundColor:const Color.fromARGB(255, 201, 14, 148),
        centerTitle: true,
      ),
      body: TikTokStyleFullPageScroller(
        contentSize: data.length, 
        swipePositionThreshold:0.2 ,
        swipeVelocityThreshold: 2000,
        animationDuration: const Duration(milliseconds: 400),
        controller: controller,
        builder: (BuildContext contex, int index){
          final dato = data[index];
          return Plantilla02(
              img: dato['img'],
              title: dato['title'],
              content: dato['content'],
          );
        }
        ),
    );
  }
}