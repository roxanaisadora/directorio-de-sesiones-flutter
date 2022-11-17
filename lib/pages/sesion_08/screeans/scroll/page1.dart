import 'package:flutter/material.dart';

class HomePage01Tik extends StatelessWidget {
  const HomePage01Tik({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    final List<dynamic> data = [
      {'img':'https://i.pinimg.com/736x/1b/34/33/1b34337e28034bb2f842d2db41a45068.jpg',
        'username':'Prueba1'
      },
      {'img':'https://i.pinimg.com/564x/2f/d1/bd/2fd1bd672d4b8057de9e190bf3db17f6.jpg',
        'username':'Prueba2'
      },
      {'img':'https://i.pinimg.com/564x/aa/8a/d1/aa8ad10b0fa7346fd691ec0d84494a11.jpg',
        'username':'Prueba3'
      },
      {'img':'https://i.pinimg.com/750x/be/b1/c9/beb1c9e56bf29c17d756ff46bc61c4e2.jpg',
        'username':'Prueba4'
      }
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
                  return TikTokPage(
                      img: datos['img'],
                      username: datos['username'],
                  );

                }),

              )
            ],
          ),



        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(icon: const Icon(Icons.tv, color: Colors.white,size: 30,),onPressed: () {},),
            SizedBox(
              width: 120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const[
                      Text('Siguiendo'),Text('Para ti')
                ],
              ),
            ),
            IconButton(icon: const Icon(Icons.search, color: Colors.white,size: 30,),onPressed: () {},),
          ],
        )
      ],)),
    );
  }
}

class TikTokPage extends StatelessWidget {
  final String? img;
  final String? username;
  const TikTokPage({super.key, this.img, this.username});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network('$img',fit: BoxFit.cover),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children:[
                          Text('$username', style: const TextStyle(color: Colors.white),),
                          const Icon(Icons.verified, color: Colors.blue,)
                        ],
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        child:Image.network('https://cdn.pixabay.com/photo/2017/02/06/10/54/sad-2042536_960_720.jpg'),),
                        Column(
                          children: const[Icon(Icons.favorite), Text('25')],
                        ),
                         Column(
                          children: const[Icon(Icons.message), Text('25')],
                        ),
                         Column(
                          children: const[Icon(Icons.bookmark), Text('25')],
                        ),
                         Column(
                          children: const[Icon(Icons.share), Text('25')],
                        ),
                    ],
                  )
                ],
              )
      ],
    );
  }
}

