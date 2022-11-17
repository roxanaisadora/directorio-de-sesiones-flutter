
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InstagramPage extends StatelessWidget {
  final String? img;
  final String? username;
  final String? user;
  final String? msn;
  final String? like;
  final String? comment;
  final String? music;
  final String? numperson;
  

  const InstagramPage({super.key, this.img, this.username, this.user, this.msn, this.like, this.comment, this.music, this.numperson});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.network('$img',fit: BoxFit.fill),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size.zero, // Set this
                                padding: EdgeInsets.zero, // and this
                              ),
                              child: Container(
                                decoration:  BoxDecoration(
                                border: Border.all(width: 1, color: Colors.white),
                                borderRadius: BorderRadius.circular(100)),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child:Image.network(
                                    '$user',
                                    width: 35,
                                    height: 35,
                                    fit:BoxFit.fill  
                                    ) ,
                                    ),
                              ),onPressed: () {}
                            ),

                            SizedBox(
                            height: 30,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10, left: 10, top:5),
                              child: Text('$username', style: const TextStyle(color: Colors.white, fontSize:14,fontWeight: FontWeight.bold ),),
                            ),
                            ),

                            MaterialButton(
                              shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        side: const BorderSide(
                                              color: Colors.white, 
                                              width: 2.0,
                                          ),
                                        ),
                              child:const Padding(
                                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                                child: Text('Seguir',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ),
                        onPressed: () {}),

                          ],
                          
                        ),
                        SizedBox(height: 50,width:290,child: Padding(padding: const EdgeInsets.all(8.0),child: Text('$msn', style: const TextStyle(color: Colors.white),),),),
                        const SizedBox(height: 8,),
                        Row(
                          children:[
                          InkWell(
                            onTap: () {},
                            child: Container(
                            height: 26,
                            width: 190,
                            decoration: BoxDecoration(
                                border: Border.all(width: 2, color: Colors.white),
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.white,
                                ),
                                child: Row(children: [
                                  const Icon(Icons.music_note, color: Colors.black,),
                                  Text('$music',
                                    style: const TextStyle(color: Colors.black, fontSize: 13),
                                  ),
                                ],),
                                ),
                          ),

                            const Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: FaIcon(FontAwesomeIcons.user, color: Colors.white, size: 15,),
                            ),
                            Padding(padding: const EdgeInsets.only(left:1), child: Text(' $numperson', style: const TextStyle(color: Colors.white, fontSize: 15),),),
                            const Padding(padding: EdgeInsets.only(left:3), child: Text('personas', style: TextStyle(color: Colors.white, fontSize: 15),),),
                            
                          ],
                          
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                          Column(
                            children: [
                              InkWell(
                                  child: const FaIcon(FontAwesomeIcons.heart, color: Colors.white),
                                  onTap: () {},
                              ),
                              Text('$like', style: const TextStyle(color: Colors.white, fontSize:16,fontWeight: FontWeight.bold ),),],
                          ),

                          const SizedBox(height: 18,),

                           Column(
                            children: [
                              InkWell(
                                  child: const FaIcon(FontAwesomeIcons.comment, color: Colors.white),
                                  onTap: () {},
                              ),
                            Text('$comment', style: const TextStyle(color: Colors.white, fontSize:16,fontWeight: FontWeight.bold ),),
                            ],
                            ),

                          const SizedBox(height: 10,),
                           IconButton(icon: const FaIcon(FontAwesomeIcons.locationArrow, color: Colors.white),onPressed: (){}),

                           IconButton(icon: const FaIcon(FontAwesomeIcons.ellipsisVertical, color: Colors.white),onPressed: (){}),
                          const SizedBox(height: 10,),
                          Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.white),
                              borderRadius: BorderRadius.circular(5.0),
                              image: DecorationImage(
                                image: NetworkImage(
                                  '$user',
                                ),
                                fit: BoxFit.cover,
                              ),
                              ),
                              child: MaterialButton(onPressed: (){}),
                              ),
                              
                      ],
                    )
                  ],
                ),
              )
      ],
    );
  }
}
