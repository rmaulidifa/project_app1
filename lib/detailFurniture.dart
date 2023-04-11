import 'package:flutter/material.dart';
import 'package:project_app1/Furniture.dart';

class detailfurniture extends StatelessWidget {
  final Furniture furniture;

  const detailfurniture({Key? key, required this.furniture}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    furniture.nama,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  furniture.brand,
                  style: TextStyle(
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.orange,
          ),
          const Text('1000'),
        ],
      ),
    );

    Column ButtonColumn(Color color, IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Color color = Theme.of(context).primaryColor;
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ButtonColumn(color, Icons.comment, 'COMMENT'),
        ButtonColumn(color, Icons.thumb_up, 'LIKED'),
        ButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget descSection = Container( //membuat widget baru yang digunakan untuk mengatur tampilan deskripsi
      padding: EdgeInsets.all(16),
      child: Text(
        furniture.deskripsi,
        style: Theme.of(context).textTheme.bodyText1,
        softWrap: true,
        textAlign: TextAlign.justify,
      ),
    );

    Widget authorSection = Container(
      padding: EdgeInsets.all(16),
      child: Text(
        furniture.author,
        style: Theme.of(context).textTheme.bodyText1,
        softWrap: true,
        textAlign: TextAlign.center,
      ),
    );
//scaffold adalah
    return Scaffold(
      appBar: AppBar(
        title: Text(furniture.nama),
        // backgroundColor: Color.fromARGB(255, 13, 81, 30),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Colors.green, Colors.blue])),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Image.network(
            furniture.gambar,
            width: 500,
            height: 400,
            fit: BoxFit.cover,
          ),
          titleSection,
          buttonSection,
          descSection,
          authorSection,
        ],
      ),
    );
  }
}
