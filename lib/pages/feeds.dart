import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:faker/faker.dart';
import './message.dart';

class Feed extends StatefulWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {

@override 
  initState() { 
    super.initState(); 
  } 
  
  @override 
  Widget build(BuildContext context) {  
    return Scaffold(   
      backgroundColor: Colors.black,
      body: NestedScrollView( 
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) { 
          return [ 
              SliverAppBar( 
                backgroundColor: Colors.black,
                title: Container( 
                  child: Text("Instaclone", 
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25, 
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Billabong'
                    )
                  ), 
                ), 
                actions: [
                  IconButton(
                    onPressed: (){

                    },
                    icon: Icon(Icons.favorite_border_outlined, color: Colors.white,),
                  ),
                  IconButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Messages()));
                    },
                    icon: Icon(Icons.send_outlined, color: Colors.white,),
                  ),
                ],
                elevation: 10.0, 
                automaticallyImplyLeading: false, 
                expandedHeight:50, 
                floating: true, 
                snap: true, 
              ) 
          ]; 
        },
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              Container(
                child: FeedStory(),
              ),
              Container(
                child : FeedPost(),
              ),
            ],
          ),
        )
      ), 
    );
  }
}


class FeedPost extends StatelessWidget {
  var faker = new Faker();
  List <String> name = [];

  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < 50; i++) {
      name.add(faker.internet.userName());
    };

    return ListView.builder(
      itemCount: 50,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Container(
          color: Colors.black,
          height: 570,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: NetworkImage("https://picsum.photos/seed/${random.integer(999, min:100)}/200/300"),
                              fit: BoxFit.cover,
                            ),
                          )
                        ),
                        SizedBox(width: 10),
                        Text("${name[index]}",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ],
                    ),
                    Icon(Icons.more_vert, color: Colors.white,),
                  ],
                ),
              ),
              SizedBox(height:5),
              Container(
                height: 380,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://picsum.photos/seed/${random.integer(999, min:100)}/200/300"),
                      fit: BoxFit.cover,
                    ),
                  )
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                height: 50,
                child: Row(
                  children: [
                    Icon(Icons.favorite_border_outlined, color: Colors.white,),
                    SizedBox(width: 20),
                    Icon(Icons.chat_bubble_outline, color: Colors.white,),
                    SizedBox(width: 20),
                    Icon(Icons.send_outlined, color: Colors.white,),
                    SizedBox(width: 230),
                    Icon(Icons.bookmark_border_outlined, color: Colors.white,),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                width: 400,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Liked by ${random.integer(1000)} people",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    Text("${name[index]}", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 14),),
                    Text("${faker.lorem.words(10).join(" ")}",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

class FeedStory extends StatelessWidget {
  var faker = new Faker();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        itemBuilder: (context, index) {
          if(index == 0){
              return Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.red, width: 2),
                          image: DecorationImage(
                            image: NetworkImage("https://picsum.photos/seed/999/200/300"),
                            fit: BoxFit.cover,
                          ),
                        )
                      ),
                      SizedBox(height: 5),
                      Text("Your Story",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                      ),
                    ],
                  ),
                );
          }
          else {
            return Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.red, width: 2),
                      image: DecorationImage(
                        image: NetworkImage("https://picsum.photos/seed/${index+1}/200/300"),
                        fit: BoxFit.cover,
                      ),
                    )
                  ),
                  SizedBox(height: 5),
                  Text("${faker.person.firstName()}",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                  ),
                ],
              ),
            );
          }
        },
      ),  
    );
  }
}