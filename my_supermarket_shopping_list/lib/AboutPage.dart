import 'dart:ui';

import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: new AppBar(
        title: new Text(
          'About the Developer',
        ),
        backgroundColor: Color.fromRGBO(0, 0, 128, 1),
      ),
      body: SafeArea(
    child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[


          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 20.0, horizontal: 16.0
            ),

            //ProfilePhoto
            child: CircleAvatar(
            radius: 70.0,
            backgroundImage: AssetImage('images/orrin.jpeg'),
        ),
          ),

        //Name of developer.
        Text(
          'Orrin Reid',
          style: TextStyle(
            fontFamily: 'Courgette',
            fontSize: 40.0,
            fontWeight: FontWeight.bold
        ),
      ),

        //Profession.
        Text(
          'SOFTWARE DEVELOPER',
          style: TextStyle(
            fontFamily: 'SourceSansPro',
            fontSize: 20.0,
            letterSpacing: 2.5,
          ),
        ),

        //Divider line
        SizedBox(
          height:20.0,
          width: 190,
          child: Divider(
            color: Color.fromRGBO(0, 0, 128, 1),
          ),

        ),

        //Bio
            Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                        //Biography
                        Text(
                          'Bio',
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 128, 1),
                              fontFamily: 'Courgette',
                              fontSize: 22.0),
                        ),
                        SizedBox(
                          height:5.0,
                          width: 190,
                          child: Divider(
                            color: Color.fromRGBO(0, 0, 128, 1),
                          ),
                        ),

                        //Bio
                        ExpandableText(
                          'I am an aspiring software developer who is 21 years old. '
                              '\nCurrently I am a Senior attending the Northern Caribbean University Pursuing a Bsc. in Computer Information Systems.\n',
                          expandText: 'show more\n',
                          collapseText: 'show less\n',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'SourceSansPro',
                            color: Colors.black,
                            letterSpacing: 2.5,
                          ),
                        ),

                        //ProjectsList
                        Text(
                          'Projects',
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 128, 1),
                              fontFamily: 'Courgette',
                              fontSize: 22.0),
                        ),
                        SizedBox(
                          height:5.0,
                          width: 190,
                          child: Divider(
                            color: Color.fromRGBO(10, 36, 55, 1),
                          ),
                        ),
                        //Shoppie
                        ExpandableText(
                          'Shoppie - An e-commerce platform for local business owners and residents of Jamaica to buy and sell products. This platform was developed using PHP,JavaScript and Laravel. [2020] \n',
                          expandText: 'show more\n',
                          collapseText: 'show less\n',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'SourceSansPro',
                            color: Colors.black,
                            letterSpacing: 2.5,
                          ),
                        ),
                        //Online Cafeteria
                        ExpandableText(
                          'Sorenson Hall Online Cafeteria - An e-commerce platform focused on providing the students, faculty and guests of the Northern Caribbean University,  Mandeville campus witht eh ability to make online purchases of cafeteria items.'
                              'This application was developed using C#, ASP.NET CORE, MVC, Visual Studio and MySQL. \n.',
                          expandText: 'show more\n',
                          collapseText: 'show less\n',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'SourceSansPro',
                            color: Colors.black,
                            letterSpacing: 2.5,
                          ),
                        ),

                        //Skills
                        Text(
                          'Skills',
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 128, 1),
                              fontFamily: 'Courgette',
                              fontSize: 22.0),
                        ),
                        SizedBox(
                          height:5.0,
                          width: 190,
                          child: Divider(
                            color: Color.fromRGBO(0, 0, 128, 1),
                          ),
                        ),
                        //SkillsList
                        ExpandableText(
                        '•C++\n•C#\n•Java\n•JavaScript\n•PHP\n•Python\n•Dart\n•HTML & CSS\n•ASP.NET Core\n•MYSQL\n•Laravel\n•Flutter',
                          expandText: 'show more\n',
                          collapseText: 'show less\n',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'SourceSansPro',
                            letterSpacing: 2.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                //),
                ),
        ],
      ),

    ),
    ),
    );
  }
}


/*
_strikeThrough(thus.todoText, this.todoCheck): super();
Widget _widget(){
  if(todoCheck){
    todoText,
  style:TextStyle(
  decoration:TextDecoration.lineThrough,
  fontStyle: Fontstle.italic,
  fontSize:22.0,
  color: Colors. red[200],
  ),
  };
  else{
    return Text(
    todoText,
    style: TextStyle(
    fontSize:22.0
    )
    )
  }
}*/
