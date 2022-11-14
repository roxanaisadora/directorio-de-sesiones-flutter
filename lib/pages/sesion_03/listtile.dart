import 'package:flutter/material.dart';

class ListTileDemo extends StatelessWidget {
  const ListTileDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text('Directorio'),
        backgroundColor:const  Color.fromARGB(255, 10, 201, 39).withOpacity(0.8),
      ),
      body: Center(child: ListView(
        children: const [
          Card(
            child: ListTile(
              title: Text('Ana Maria Lertora Medina'),
              leading: SizedBox(
              child: FadeInImage(
              placeholder: AssetImage('assets/loading.gif'),
              image: NetworkImage(
                  'https://cdn.pixabay.com/photo/2015/11/26/00/14/woman-1063100_960_720.jpg')
            )
              ),
              subtitle: Text('936563965'),
              trailing: Icon(Icons.phone_android),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Jessica Maria Andrade'),
              leading: SizedBox(
              child: FadeInImage(
              placeholder: AssetImage('assets/loading.gif'),
              image: NetworkImage(
                  'https://cdn.pixabay.com/photo/2016/11/29/20/22/girl-1871104_960_720.jpg')
            )
              ),
              subtitle: Text('962583658'),
              trailing: Icon(Icons.phone_android),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Karina Salazar'),
              leading: SizedBox(
              child: FadeInImage(
              placeholder: AssetImage('assets/loading.gif'),
              image: NetworkImage(
                  'https://cdn.pixabay.com/photo/2017/02/06/10/54/sad-2042536_960_720.jpg')
            )
              ),
              subtitle: Text('912547896'),
              trailing: Icon(Icons.phone_android),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Pedro Rios Mendoza'),
              leading: SizedBox(
              child: FadeInImage(
              placeholder: AssetImage('assets/loading.gif'),
              image: NetworkImage(
                  'https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358_960_720.jpg')
            )
              ),
              subtitle: Text('985478965'),
              trailing: Icon(Icons.phone_android),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Michel Portola'),
              leading: SizedBox(
              child: FadeInImage(
              placeholder: AssetImage('assets/loading.gif'),
              image: NetworkImage(
                  'https://cdn.pixabay.com/photo/2015/01/12/10/45/man-597178_960_720.jpg')
            )
              ),
              subtitle: Text('965874563'),
              trailing: Icon(Icons.phone_android),
            ),
          ),
        ],
      ),)
    );
  }
}
