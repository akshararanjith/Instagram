import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/widgets.dart';

class MyFlutterApp {
  MyFlutterApp._();

  static const _kFontFam = 'MyFlutterApp';
  static const String? _kFontPkg = null;

  static const IconData home = IconData(0xe800, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData search = IconData(0xe801, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData account_circle = IconData(0xe802, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData youtube_play = IconData(0xf16a, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData plus_squared_alt = IconData(0xf196, fontFamily: _kFontFam, fontPackage: _kFontPkg);
}

class Instagram extends StatefulWidget {
  const Instagram({super.key});

  @override
  State<Instagram> createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  List<Map<String,dynamic>> story=[
    {'image':'images/Emma.jpg', 'id':'Your Story'},
    {'image':'images/Harry.jpg', 'id':'harry.potter'},
    {'image':'images/ron.jpg', 'id':'ron_weasly'},
    {'image':'images/snape.jpg', 'id':'severus.snape'},
    {'image':'images/avengr1.jpeg', 'id':'avengers'},
    {'image':'images/cinder.jpg', 'id':'cinder_ella'},
    {'image':'images/friends1.jpg', 'id':'f.r.i.e.n.d.s'},
  ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            actions: [
              Container(
                margin: EdgeInsets.only(right: 22),
                child: Icon(
                  Icons.heart_broken_outlined,
                  size: 27,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 22),
                child: Icon(
                  Icons.send,
                  size: 27,
                  color:Colors.white,
                ),
              ),
            ],
            title: Text(
              'Instagram',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'DancingScript',
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 100,
                  child: ListView.builder(scrollDirection: Axis.horizontal,itemBuilder: (context,index){
                    return Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          height:80,
                          width: 80,
                          child: ClipOval(
                            child: Image(
                              image:  AssetImage(story[index]['image']),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Text(
                          '${story[index]['id']}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12
                          ),
                        ),
                      ],
                    );
                  }, itemCount: story.length,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top:15,left:20),
                      height: 30,
                      width: 30,
                      child: ClipOval(
                        child: Image(
                          image: AssetImage('images/friends1.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      margin:EdgeInsets.only(left:15,top:10),
                      child: Text(
                        'f.r.i.e.n.d.s',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 250,
                      width: 420,
                      child: Image(
                        image: AssetImage('images/friends2.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 8,top: 10),
                      child: Icon(
                        Icons.heart_broken,
                        color: Colors.red,
                        size: 28,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20,top: 11),
                      child: Icon(
                        Icons.mode_comment_outlined,
                        color: Colors.white,
                        size: 26,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20,top: 11),
                      child: Icon(
                        Icons.send_outlined,
                        color: Colors.white,
                        size: 26,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 260,top: 10),
                      child: Icon(
                        Icons.bookmark_border_sharp,
                        color: Colors.white,
                        size: 28,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top:15,left:10),
                      height: 20,
                      width: 20,
                      child: ClipOval(
                        child: Image(
                          image: AssetImage('images/matle.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      margin:EdgeInsets.only(left:10,top:15),
                      child: Text(
                        'Liked by mleblanc and 655,485 others',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 13),
                      child: Text(
                        'f.r.i.e.n.d.s',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Text(
                        'You can not take these guys anywhere. #FRIENDS',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15,top: 5),
                      child: Text(
                        'View all 7,544 comments',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15,top: 3),
                      child: Text(
                        'January 3, 2023',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top:15,left:20),
                      height: 30,
                      width: 30,
                      child: ClipOval(
                        child: Image(
                          image: AssetImage('images/avengr1.jpeg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      margin:EdgeInsets.only(left:15,top:10),
                      child: Text(
                        'avengers and marvel',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 250,
                      width: 420,
                      child: Image(
                        image: AssetImage('images/avengr2.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 8,top: 10),
                      child: Icon(
                        Icons.heart_broken,
                        color: Colors.red,
                        size: 28,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20,top: 11),
                      child: Icon(
                        Icons.mode_comment_outlined,
                        color: Colors.white,
                        size: 26,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20,top: 11),
                      child: Icon(
                        Icons.send_outlined,
                        color: Colors.white,
                        size: 26,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 260,top: 10),
                      child: Icon(
                        Icons.bookmark_border_sharp,
                        color: Colors.white,
                        size: 28,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin:EdgeInsets.only(left:15,top:15),
                      child: Text(
                        '131,868 likes',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Text(
                        'marvelstudios',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Text(
                        'Rudolph coud never.',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15,top: 20),
                      child: Text(
                        'This holiday season, see Santa and your favorite Marvel Super',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Text(
                        'Heros take flight in LEGO Marvel Avengers: Code Red, now',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Text(
                        'streaming on @DisneyPlus.',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15,top: 5),
                      child: Text(
                        'View all 131 comments',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15,top: 3),
                      child: Text(
                        'December 5, 2023',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top:15,left:20),
                      height: 30,
                      width: 30,
                      child: ClipOval(
                        child: Image(
                          image: AssetImage('images/cinder.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      margin:EdgeInsets.only(left:15,top:10),
                      child: Text(
                        'disneycinderella',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 250,
                      width: 420,
                      child: Image(
                        image: AssetImage('images/cinderella1.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 8,top: 10),
                      child: Icon(
                        Icons.heart_broken,
                        color: Colors.red,
                        size: 28,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20,top: 11),
                      child: Icon(
                        Icons.mode_comment_outlined,
                        color: Colors.white,
                        size: 26,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20,top: 11),
                      child: Icon(
                        Icons.send_outlined,
                        color: Colors.white,
                        size: 26,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 260,top: 10),
                      child: Icon(
                        Icons.bookmark_border_sharp,
                        color: Colors.white,
                        size: 28,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin:EdgeInsets.only(left:15,top:15),
                      child: Text(
                        '27,069 likes',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Text(
                        'disneycinderella',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Text(
                        'May the clock never strike 12. #Cinderella',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15,top: 5),
                      child: Text(
                        'View all 2878 comments',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15,top: 3),
                      child: Text(
                        'November 9, 2022',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top:15,left:20),
                      height: 30,
                      width: 30,
                      child: ClipOval(
                        child: Image(
                          image: AssetImage('images/malf2.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      margin:EdgeInsets.only(left:15,top:10),
                      child: Text(
                        'angelinajolie',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 250,
                      width: 420,
                      child: Image(
                        image: AssetImage('images/malf1.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 8,top: 10),
                      child: Icon(
                        Icons.heart_broken,
                        color: Colors.red,
                        size: 28,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20,top: 11),
                      child: Icon(
                        Icons.mode_comment_outlined,
                        color: Colors.white,
                        size: 26,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20,top: 11),
                      child: Icon(
                        Icons.send_outlined,
                        color: Colors.white,
                        size: 26,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 260,top: 10),
                      child: Icon(
                        Icons.bookmark_border_sharp,
                        color: Colors.white,
                        size: 28,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top:15,left:10),
                      height: 20,
                      width: 20,
                      child: ClipOval(
                        child: Image(
                          image: AssetImage('images/malf4.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      margin:EdgeInsets.only(left:10,top:15),
                      child: Text(
                        'Liked by disneymaleficent and 985,485 others',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 13),
                      child: Text(
                        'angelinajolie',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Text(
                        'Well, well. Disneys #Maleficent: Mistress of',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Text(
                        'Evil is on Digital and Bu-ray TODAY',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15,top: 5),
                      child: Text(
                        'View all 9,544 comments',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15,top: 3),
                      child: Text(
                        'January 27, 2022',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top:15,left:20),
                      height: 30,
                      width: 30,
                      child: ClipOval(
                        child: Image(
                          image: AssetImage('images/strng1.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      margin:EdgeInsets.only(left:15,top:10),
                      child: Text(
                        'strangerthingstv',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 250,
                      width: 420,
                      child: Image(
                        image: AssetImage('images/strng2.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 8,top: 10),
                      child: Icon(
                        Icons.heart_broken,
                        color: Colors.red,
                        size: 28,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20,top: 11),
                      child: Icon(
                        Icons.mode_comment_outlined,
                        color: Colors.white,
                        size: 26,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20,top: 11),
                      child: Icon(
                        Icons.send_outlined,
                        color: Colors.white,
                        size: 26,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 260,top: 10),
                      child: Icon(
                        Icons.bookmark_border_sharp,
                        color: Colors.white,
                        size: 28,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top:15,left:10),
                      height: 20,
                      width: 20,
                      child: ClipOval(
                        child: Image(
                          image: AssetImage('images/strng3.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      margin:EdgeInsets.only(left:10,top:15),
                      child: Text(
                        'Liked by stonstage and 785,485 others',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 13),
                      child: Text(
                        'strangerthingstv',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Text(
                        'time to hit rewind. We are taking aook back',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Text(
                        'on our time in Hawkins #strangerthings5',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15,top: 5),
                      child: Text(
                        'View all 10,544 comments',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15,top: 3),
                      child: Text(
                        'January 27, 2024',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ),
                    )
                  ],
                ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(top:15,left:20),
              height: 30,
              width: 30,
              child: ClipOval(
                child: Image(
                  image: AssetImage('images/bridg1.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              margin:EdgeInsets.only(left:15,top:10),
              child: Text(
                'netflix',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500
                ),
              ),
            ),
          ],
        ),
            Row(
            children: [
              Container(
              margin: EdgeInsets.only(top: 10),
              height: 250,
              width: 420,
              child: Image(
                image: AssetImage('images/bridg2.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
                Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 8,top: 10),
              child: Icon(
                Icons.heart_broken,
                color: Colors.red,
                size: 28,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20,top: 11),
              child: Icon(
                Icons.mode_comment_outlined,
                color: Colors.white,
                size: 26,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20,top: 11),
              child: Icon(
                Icons.send_outlined,
                color: Colors.white,
                size: 26,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 260,top: 10),
              child: Icon(
                Icons.bookmark_border_sharp,
                color: Colors.white,
                size: 28,
              ),
            )
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(top:15,left:10),
              height: 20,
              width: 20,
              child: ClipOval(
                child: Image(
                  image: AssetImage('images/bridg1.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              margin:EdgeInsets.only(left:10,top:15),
              child: Text(
                'Liked by bridgertonnetflix and 455,485 others',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400
                ),
              ),
            ),
          ],
        ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Text(
                        'featherington story is one that can not be missed.',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 13),
              child: Text(
                'netflix',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 5),
              child: Text(
                'every mirror tells atory.. and miss penelope',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 15,top: 5),
              child: Text(
                'View all 17,544 comments',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
            )
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 15,top: 3),
              child: Text(
                'February 3, 2024',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
            )
          ],
        ),
                Column(
                  children: [
                    Container(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(MyFlutterApp.home,color: Colors.white,size: 30,),
                          Icon(MyFlutterApp.search,color: Colors.white,size: 30,),
                          Icon(MyFlutterApp.plus_squared_alt,color: Colors.white,size: 30,),
                          Icon(MyFlutterApp.youtube_play,color: Colors.white,size: 30,),
                          Icon(MyFlutterApp.account_circle,color: Colors.white,size: 30,),

                        ],
                      ),
                    ),
                  ],
                )

          ],
            ),
          ),
        ),
      ),
    );
  }
}
