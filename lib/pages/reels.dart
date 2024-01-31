import 'package:flutter/material.dart';
import 'package:tiktoklikescroller/tiktoklikescroller.dart';
import 'package:faker/faker.dart';

class Reels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Reels",
        style: TextStyle(
          color: Colors.white,
          fontSize: 25, 
          fontWeight: FontWeight.bold,
          fontFamily: 'Billabong'
          ),
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.camera_alt_outlined, color: Colors.white,),
          ),
        ],
      ),
        body: TikTokStyleFullPageScroller(
          contentSize: 10,
          swipeVelocityThreshold: 2000,
          animationDuration: const Duration(milliseconds: 300),
          builder: (BuildContext context, int index) {
            return
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://picsum.photos/seed/${index+453}/200/300"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 600,),
                        UsernameFollow(),
                        SizedBox(height:10,),
                        Desc(),
                        SizedBox(height: 8,),
                        BottomSong()
                      ],
                    ),
                    SizedBox(width: 80),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Icon(Icons.favorite, color: Colors.white,size: 30,),
                              SizedBox(height: 5,),
                              Text(" 80",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Billabong'
                                  ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          child: Column(
                            children: [
                              Icon(Icons.comment, color: Colors.white,size: 30,),
                              SizedBox(height: 5,),
                              Text(" 1.5k",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Billabong'
                                  ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          child: Column(
                            children: [
                              Icon(Icons.share_sharp, color: Colors.white,size: 30,),
                              SizedBox(height: 5,),
                              Text(" 200",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Billabong'
                                  ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          child: Icon(Icons.more_vert, color: Colors.white,size: 30,),
                        ),
                        SizedBox(height: 20),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            image: DecorationImage(
                              image: NetworkImage("https://picsum.photos/seed/321/200/300"),
                              fit: BoxFit.cover
                            )
                          )
                        )
                      ],
                    )
                  ],
                )
              )
            );
          },
        ),
      );
  }
}

class BottomSong extends StatelessWidget {
  const BottomSong({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[800]
          ),
          child: Row(
            children: [
              Icon(Icons.music_note, color: Colors.white,size: 12,),
              Text("Song Name - Artist Name",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Billabong'
                  ),
              ),
            ],
          ),
        ),
        SizedBox(width: 10,),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[800]
          ),
          child: Row(
            children: [
              Icon(Icons.person, color: Colors.white,size: 12,),
              Text("Username",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Billabong'
                  ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class Desc extends StatelessWidget {
  const Desc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text("Lorem ipsum dolor sit amet", 
      style: TextStyle(
        color: Colors.white,
        fontSize: 15,
        ),
    );
  }
}

class UsernameFollow extends StatelessWidget {
  const UsernameFollow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          child: CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage("https://picsum.photos/seed/156/200/300"),
            child: Container(
              margin: EdgeInsets.only(top: 30, left: 30),
              child: CircleAvatar(
                radius: 10,
                backgroundColor: Colors.blue,
                child: Icon(Icons.add, color: Colors.white, size: 10,),
              ),
            )
          ),
        ),
        Text("  ${faker.internet.userName()}",
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.bold,
          fontFamily: 'Billabong'
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue, width: 4),
            borderRadius: BorderRadius.circular(10),
            color: Colors.blue
          ),
          margin: EdgeInsets.only(left: 10),
          child: Text("Follow",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
              fontFamily: 'Billabong'
              ),
          )
        )
      ],
    );
  }
}