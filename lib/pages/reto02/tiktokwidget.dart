import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TiktokWidget extends StatelessWidget {
  final String? img;
  final String? user;
  final String? title;
  final String? subtitle;
  final String? like;
  final String? comment;
  final String? mark;
  final String? share;
  final String? music;

  const TiktokWidget({super.key, this.img, this.user, this.title, this.subtitle,this.like, this.comment, this.mark, this.share, this.music});

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('$img'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:30, right: 8, left: 8, bottom: 10),
                child: Row(
                  children: [
                    IconButton(icon: const Icon(Icons.tv, color: Colors.white,size: 30,),onPressed: () {},),
                    Expanded(child: Container(height: 5,)),
                    IconButton(icon: const Icon(Icons.search,color: Colors.white, size: 35,),onPressed: () {},)
                  ],
                ),
              ),
              Expanded(child: Row(
                children: [
                  Expanded(flex:4,child: Column(
                    children: [
                      Expanded(flex:3,child: Container(color:Colors.transparent)),
                      Expanded(child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top:20, bottom: 5, right: 30, left: 18),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('$title',style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold,),textAlign: TextAlign.start,),
                                const SizedBox(height: 10),
                                Expanded(child: SizedBox(width: 260, child: Text('$subtitle',style: const TextStyle(color: Colors.white,fontSize:17)),),),
                                const SizedBox(height: 10,),
                                Row(
                                  children:[
                                    const Icon(Icons.music_note,color: Colors.white,),
                                    Text('$music',style: const TextStyle(color: Colors.white,fontSize:17)),
                                  ],
                                ),
                                const SizedBox(height: 10),
                              ],
                            ),
                          )
                        ],
                      ))
                    ],
                  )),
                  Expanded(child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      MaterialButton(
                            child: Container(
                              decoration:  BoxDecoration(
                              border: Border.all(width: 1, color: Colors.white),
                              borderRadius: BorderRadius.circular(100),
            ),
                              child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    
                    child:Image.network(
                      '$user',
                      width: 50,
                      height: 50,
                      fit:BoxFit.fill  
                      ) ,
                      ),
                            ),
                      onPressed: () {}),

                      const SizedBox(height: 10,),
                      IconButton(icon: const Icon(Icons.favorite,color: Colors.white, size: 35,),onPressed: () {},),
                      Text('$like',style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold,)),
                      const SizedBox(height: 10,),
                      
                      IconButton(icon: const FaIcon(FontAwesomeIcons.commentDots, color: Colors.white, size: 35),onPressed: () {},),
                      Text('$comment',style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold,)),
                      const SizedBox(height: 10,),

                      IconButton(icon: const Icon(Icons.bookmark,color: Colors.white, size: 35,),onPressed: () {},),
                       Text('$mark',style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold,)),
                       const SizedBox(height: 10,),
                      
                       IconButton(icon: const Icon(Icons.share,color: Colors.white, size: 35,),onPressed: () {},),
                       Text('$share',style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold,)),
                       const SizedBox(height: 18,),

                      MaterialButton(
                            child: SizedBox(
                              height: 50,
                              width: 50,
                              child: Image.asset(
                                'assets/disc.gif',
                                width: 40,
                                height: 40,
                                fit:BoxFit.fill  
                                ) ,
                            ),
                      onPressed: () {}),
                      const SizedBox(height: 10,),
                    ],
                  )),
                  
                ],
              ),),
              
              Container(
                color: Colors.black,

                child: Padding(
                  padding: const EdgeInsets.only(top:5, right: 8, left: 8, bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          IconButton(icon: const Icon(Icons.home,color: Colors.white, size: 25,),onPressed: () {},),
                          const Text('Inicio',style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(icon: const FaIcon(FontAwesomeIcons.users, color: Colors.white, size: 20),onPressed: () {},),
                          const Text('Amigos', style: TextStyle(color: Colors.white),),
                        ],
                      ),
                      MaterialButton(
                        child: SizedBox(
                          height: 45,
                          width: 63,
                          child: Image.asset(
                      'assets/add_tiktok.png',
                      width: 50,
                      height: 50,
                      fit:BoxFit.fill  
                      ) ,
                        ),
                        onPressed: (){},),
                       Column(
                        children: [
                          IconButton(icon: const Icon(Icons.insert_comment,color: Colors.white, size: 25,),onPressed: () {},),
                          const Text('Bandeja',style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(icon: const FaIcon(FontAwesomeIcons.user, color: Colors.white, size: 20),onPressed: () {},),
                          const Text('Perfil', style: TextStyle(color: Colors.white),),
                        ],
                      ), 
                    ],
                  ),
                ),
              ),
            ],
          ),
          );


  }
}