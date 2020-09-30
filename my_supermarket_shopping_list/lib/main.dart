import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './AboutPage.dart';

void main() {
  runApp( MaterialApp(
    theme: ThemeData(
      accentColor: Color.fromRGBO(0, 0, 128, 1),
    ),
      home: MyShoppinglist(

      ),
  ));
}

//Shopping List
class MyShoppinglist extends StatefulWidget {
  @override
  _MyShoppinglistState createState() => _MyShoppinglistState();
}

class _MyShoppinglistState extends State<MyShoppinglist> {

  //Variables
  List item = List();
  String input = "";

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
                  'Shopping List'
              ),
          ),
          backgroundColor: Color.fromRGBO(0, 0, 128, 1),
        ),
      floatingActionButton: FloatingActionButton(onPressed:
        () {

        //Section to enter item
          // ignore: non_constant_identifier_names
          showDialog(context: context, builder:(BuildContext){
            return AlertDialog(
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8)),
              title: Text("Add item"),
              content: TextField(
                onChanged: (String value) {
                  input= value;
                },
              ),
              actions: <Widget>[
                FlatButton(
                    onPressed: () {
                  setState(() {
                    item.add(input);
                  });

                  Navigator.of(context).pop();
            },
                    child: Text ("Add")),
              ],
            );
          });
        },

        //Add Item button
          child:
          Icon(
              Icons.add,
              color: Colors.white
          ),
        ),

          //Item List
      body: ListView.builder(
            itemCount: item.length,
            itemBuilder: (BuildContext context, int index){
              return Card(
                  elevation: 4,
                  margin: EdgeInsets.all(8.0
                  ),
                  shape: RoundedRectangleBorder(borderRadius:
                  BorderRadius.circular(16
                  ),
                  ),
                  child: ListTile(
                    trailing: IconButton(
                        icon:
                        Icon(
                            Icons.delete,
                            color: Colors.red
                        ), onPressed: () {
                      setState(() {
                        item.removeAt(index);
                      });
                    }),
                    title: Text(item[index]),
                  ),
                );
              //StrikeThrough(item),
        }
          ),

        //Menu
        drawer: new Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Material(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        child: Padding(padding: EdgeInsets.all(8.0),
                          child: Image.asset(
                            'clipboard-with-a-list.png', width: 80,height:80,
                          ),)
                      ),
                      Padding(padding: EdgeInsets.all(8.0),
                        child: Text('My Supermarket Shopping List Menu',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                  /*child: */
                decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 0, 128, 1),
                ),
              ),
              CustomListTile(),
            ],
          ),
        ),

      //Items List

      //Floating action button

      );
  }

  button({FloatingActionButton child}) {}
}

//Custom Tile
class CustomListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey
          ),
        ),
      ),
      child: InkWell(
          splashColor: Color.fromRGBO(0, 0, 128, 1),
        onTap: ()=>
        {
          Navigator.of(context).pop(),
        Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => AboutPage()),
      )
        },
        child: Container(
          height:40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
          Row(
            children: <Widget>[
              Icon (Icons.supervisor_account),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
                child: Text('About the Developer', style: TextStyle(
                   fontSize: 16.0,
                ),
                ),
              ),
            ],
          ),
          Icon(Icons.arrow_right)
            ]
      ),
        )
      ),
    );
  }
}


