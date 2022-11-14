import 'package:flutter/material.dart';

import '../../main.dart';

class Home05 extends StatelessWidget {
  const Home05({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: SizedBox(
            child: Image.network(
              'https://mir-s3-cdn-cf.behance.net/projects/404/c697f587154819.Y3JvcCwxMzc2LDEwNzcsMjY1LDA.png',
            )),
        elevation: 20,
        leading: IconButton(
          icon: const Icon(Icons.home),
          tooltip: 'Menu',
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> const MyApp(),
                  ),);
          },
        ),
      backgroundColor: const Color.fromARGB(255, 35, 5, 85).withOpacity(0.8)
      ),
      body: Container(
         decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/fondo_2.jpg'),
          fit: BoxFit.cover)
          ),
          child: Column(
        children: [
          Expanded(
            child: SizedBox(
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 110,
                      height: 110,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(100.0),
                          ),
                        image: DecorationImage(image: AssetImage('assets/foto.jpg'),
                        fit: BoxFit.cover
                        )
                      ),
                    )
                  ],
                )
              ),
          ),
          Expanded(
            flex: 2,
            child: SizedBox(
              width: double.infinity,
                child:Padding(padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    // ignore: prefer_const_constructors
                    Expanded(
                      child: SizedBox(
                        height: double.infinity,
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const[
                                  Text('Edad: ',style: TextStyle(
                                    color: Color.fromARGB(255, 10, 10, 10), fontSize: 18,
                                    fontWeight: FontWeight.bold),
                                    ),
                                  Text('29 ',style: TextStyle(color: Color.fromARGB(255, 10, 10, 10), 
                              fontSize: 16),),
                                ] ),
                          )
                        ),
  
                    Expanded(
                      flex: 2,
                      child: SizedBox(
                        height: double.infinity,
                          child:SingleChildScrollView(
                            child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                            
                              Row(
                                children: const[
                                  Text('Nombres: ',style: TextStyle(
                                    color: Color.fromARGB(255, 10, 10, 10), fontSize: 18,
                                    fontWeight: FontWeight.bold),
                                    ),
                                  Text('Roxana Isadora ',style: TextStyle(color: Color.fromARGB(255, 10, 10, 10), 
                              fontSize: 16),),
                                ] ),
                              const SizedBox( height: 20,),

                              Row(
                                children: const[
                                  Text('Apellido Paterno: ',style: TextStyle(color: Color.fromARGB(255, 10, 10, 10), 
                                  fontSize: 18,
                                    fontWeight: FontWeight.bold),),
                                  Text('Garcia ',style: TextStyle(color: Color.fromARGB(255, 10, 10, 10), 
                              fontSize: 16),),
                                ] ),
                              const SizedBox( height: 20,),

                              Row(
                                children: const[
                                  Text('Apellido Materno: ',style: TextStyle(color: Color.fromARGB(255, 10, 10, 10), 
                                fontSize: 18,
                                    fontWeight: FontWeight.bold),),
                                  Text('Aviles ',style: TextStyle(color: Color.fromARGB(255, 10, 10, 10), 
                              fontSize: 16),),
                                ] ),
                              const SizedBox( height: 20,),
                              Row(
                                children: const[
                                  Text('País: ',style: TextStyle(color: Color.fromARGB(255, 10, 10, 10), 
                                fontSize: 18,
                                    fontWeight: FontWeight.bold),),
                                  Text('Perú',style: TextStyle(color: Color.fromARGB(255, 10, 10, 10), 
                              fontSize: 16),),
                                ] ),
                              const SizedBox( height: 20,),

                              Row(
                                children: const[
                                  Text('Departamento: ',style: TextStyle(color: Color.fromARGB(255, 10, 10, 10), 
                                fontSize: 18,
                                    fontWeight: FontWeight.bold),),
                                  Text('Lima',style: TextStyle(color: Color.fromARGB(255, 10, 10, 10), 
                              fontSize: 16),),
                                ] ),
                              const SizedBox( height: 20,),

                              
                              Row(
                                children: const[
                                  Text('Distrito',style: TextStyle(color: Color.fromARGB(255, 10, 10, 10), 
                                fontSize: 18,
                                    fontWeight: FontWeight.bold),),
                                  Text('Villa Maria Del Triunfo',style: TextStyle(color: Color.fromARGB(255, 10, 10, 10), 
                              fontSize: 16),),
                                ] ),
                              const SizedBox( height: 20,),
                              
                            
                            ],
                          ),
                          )
                        ),
                    ),
                  ],
                ),
              ),
          ),
          ),
        ],
      ),
      )
      

    );
  }
}