

import 'package:flutter/material.dart';

class ScrollWidget extends StatefulWidget {
  const ScrollWidget({super.key});

  @override
  State<ScrollWidget> createState() => _ScrollWidgetState();
}

class _ScrollWidgetState extends State<ScrollWidget> {

  final List<int> imageIds =[1,2,3,4,5,6,7,8,9,10];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;


  @override
  void initState() {
  
    super.initState();
    scrollController.addListener((){
      if((scrollController.position.pixels + 500)>=scrollController.position.maxScrollExtent){
        fetchData();
      }
    });
  }

  Future fetchData() async{
    if(isLoading) return;

    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 3));

    add5();

    isLoading = false;
    setState(() {});

    if((scrollController.position.pixels + 100)>=scrollController.position.maxScrollExtent)return;

    scrollController.animateTo(scrollController.position.pixels + 120, duration: const Duration(milliseconds: 300), curve: Curves.fastOutSlowIn);
  }

  void add5(){
    final lastId = imageIds.last;
    imageIds.addAll([1,2,3,4,5].map((e) => lastId+e));
    setState(() {
    });
  }

  Future<void>onRefresh() async{
    await Future.delayed(const Duration(seconds: 2),
    );

    final lastId = imageIds.last;
    imageIds.clear();
    imageIds.add(lastId + 1);
    add5();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;


    return Scaffold(
      appBar: AppBar(
        title: const Text('Scroll infinity'),
        centerTitle: true,
      ),
      body:MediaQuery.removePadding
       (context: context,
       removeTop: true,
       removeBottom: true,
        child:Stack(
        children: [
          RefreshIndicator(
            color: Colors.amber,
            onRefresh: onRefresh,child:ListView.builder(
              controller: scrollController,
              itemCount: imageIds.length,
              itemBuilder: (BuildContext context, int index){
                return FadeInImage(
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                  placeholder: const AssetImage('assets/loading.gif'), 
                image: NetworkImage('https://picsum.photos/500/300?image=${imageIds[index]}'),
                );
              },
              ),
          ),
          
      ],
      ),
      )
    );
  }
}