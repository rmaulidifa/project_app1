import 'package:project_app1/detailFurniture.dart';
import 'package:flutter/material.dart';
import 'package:project_app1/Furniture.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 
  final List<Furniture> furniture = [
    Furniture(
        'Chair',
        'Ikea Production',
        'Description Chair : '
            'A chair is a type of seat, typically designed for one person and consisting of one or more legs,'
            'a flat seat and a back-rest. They may be made of wood, metal, or synthetic materials,'
            'and may be padded or upholstered in various colors and fabrics. Chairs vary in design. An armchair has armrests fixed to the seat;'
            'a recliner is upholstered and features a mechanism that lowers the chairs back and raises into place a footrest;'
            'a rocking chair has legs fixed to two long curved slats; and a wheelchair has wheels fixed to an axis under the seat.',
        'https://images.unsplash.com/photo-1517705008128-361805f42e86?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGNoYWlyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
        'Author: Lusti Shafira'),
    Furniture(
        'Table',
        'Fabelio | Furnishing Happiness',
        'Description Table : '
            'A table is an arrangement of information or data, typically in rows and columns,'
            'or possibly in a more complex structure. Tables are widely used in communication, research, and data analysis.'
            'Tables appear in print media, handwritten notes, computer software, architectural ornamentation, traffic signs,'
            'and many other places. The precise conventions and terminology for describing tables vary depending on the context.'
            'Further, tables differ significantly in variety, structure, flexibility, notation, representation and use.'
            'Information or data conveyed in table form is said to be in tabular format (adjective). In books and technical articles,'
            'tables are typically presented apart from the main text in numbered and captioned floating blocks.',
        'https://images.unsplash.com/photo-1530018607912-eff2daa1bac4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8dGFibGV8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
        'Author: Nadia Putri'),
    Furniture(
        'Kitchen',
        'Informa | Innovative Furnishing',
        'Description Kitchen : '
            'A kitchen is a room or part of a room used for cooking and food preparation in a dwelling or in a commercial establishment.'
            'A modern middle-class residential kitchen is typically equipped with a stove, a sink with hot and cold running water,'
            'a refrigerator, and worktops and kitchen cabinets arranged according to a modular design. Many households have a microwave oven,'
            'a dishwasher, and other electric appliances. The main functions of a kitchen are to store, prepare and cook food'
            '(and to complete related tasks such as dishwashing). The room or area may also be used for dining (or small meals such as breakfast),'
            'entertaining and laundry. The design and construction of kitchens is a huge market all over the world.',
        'https://images.unsplash.com/photo-1556912167-f556f1f39fdf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8a2l0Y2hlbiUyMHNldHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60',
        'Author: Renisa Maulidifa'),
    Furniture(
        'Bathroom',
        'Olympic Furniture',
        'Description Bathroom : '
            'A bathroom or washroom is a room, typically in a home or other residential building, that contains either a bathtub or a shower (or both).'
            'The inclusion of a wash basin is common. In some parts of the world e.g. India, a toilet is typically included in the bathroom;'
            'in others, the toilet is typically given a dedicated room separate from the one allocated for personal hygiene activities.'
            'In North American English the word bathroom is sometimes used to refer to any room in a residence that contains a toilet,'
            'regardless of the inclusion of a bath or shower.',
        'https://images.unsplash.com/photo-1629079447777-1e605162dc8d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGJhdGhyb29tfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
        'Author: Carissa Belva'),
    Furniture(
        'Bedroom',
        'Atria | Inspiring Living',
        'Description Bedroom : '
            'A bedroom or bedchamber is a room situated within a residential or accommodation unit characterised by its usage for sleeping activity.'
            'A typical western bedroom contains as bedroom furniture one or two beds (ranging from a crib for an infant, a single or twin bed for a toddler,'
            'child, teenager, or single adult to bigger sizes like a full, double, queen, king or California king [eastern or waterbed size for a couple]),'
            'a clothes closet, and bedside table and dressing table, both of which usually contain drawers. Except in bungalows, ranch style homes, or one-storey motels,'
            'bedrooms are usually on one of the floors of a dwelling that is above ground level.',
        'https://images.unsplash.com/photo-1571508601891-ca5e7a713859?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjF8fGJlZHJvb218ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
        'Author: Shafika Azzahrah'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Furniture'),
        actions: [
          IconButton(
            icon: new Icon(Icons.person, color: Colors.white),
            //Menangani kejadian saat menu home diklik
            onPressed: () {
              // FlutterToast.showToast("Menu Home");
            },)
        ],
        // backgroundColor: Color.fromARGB(255, 13, 81, 30),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Colors.green, Colors.blue])),
        ),
      ),

      body: Column(
        children: [
          Container(
            height: 140,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
             itemCount: furniture.length,
             itemBuilder: (context, index) 
             {
               return new GestureDetector(
                    onTap: () {
                      Navigator.push(
                        
                          context,
                          MaterialPageRoute(
                              builder: (context) => detailfurniture(
                                         furniture: furniture[index],
                              )));
                    },
                    child: new Card(
                      margin: EdgeInsets.fromLTRB(24, 8, 24, 8),
                      elevation: 5,
                      child: new Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(4),
                                  child: Image.network(
                                    '${furniture[index].gambar}',
                                    width: 100,

                                  ),
                                  
                                ),
                                Text('${furniture[index].nama}',
                              )
                              ],
                            ),
                          ),
                
                          
                        ],
                      ),
                    ),
                  );
                }),
          ),
        
      Expanded(
        child: ListView.builder(
            itemCount: furniture.length,
            itemBuilder: (context, index) {
              return new GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => detailfurniture(
                                furniture: furniture[index],
                              )));
                },
                child: new Card(
                  child: new Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.network(
                          '${furniture[index].gambar}',
                          width: 200,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Text(
                                '${furniture[index].nama}',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                            ),
                            Text('${furniture[index].brand}'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    ]));
    //    drawer: Drawer(
    //     // Add a ListView to the drawer. This ensures the user can scroll
    //     // through the options in the drawer if there isn't enough vertical
    //     // space to fit everything.
    //     child: ListView(
    //       // Important: Remove any padding from the ListView.
    //       padding: EdgeInsets.zero,
    //       children: [
    //         const DrawerHeader(
    //           decoration: BoxDecoration(
    //             color: Colors.blue,
    //           ),
    //           child: Text('Drawer Header'),
    //         ),
    //         ListTile(
    //           title: const Text('Detail'),
    //           onTap: () {
    //             Navigator.pop(context);
    //           },
    //         ),
    //         ListTile(
    //           title: const Text('Log Out'),
    //           onTap: () {
    //             Navigator.pop(context);
    //           },
    //         ),
    //       ],
    //     ),
    //   ),
    //    bottomNavigationBar: BottomNavigationBar(
    //     items: const <BottomNavigationBarItem>[
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.home),
    //         label : ('Home'),
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.dashboard),
    //         label: ('Dashboard'),
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.person),
    //         label: ('Account'),
    //       ),
    //     ],
    //     // currentIndex: _selectedNavbar,
    //     selectedItemColor: Colors.green,
    //     unselectedItemColor: Colors.grey,
    //     showUnselectedLabels: true,
    //     // onTap: _changeSelectedNavBar,
    //   ),
    // );
  }
}
