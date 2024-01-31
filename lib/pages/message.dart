import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

class Messages extends StatelessWidget {
  const Messages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: Text("Messages",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontFamily: 'Billabong'
            )
        ),
        actions: [
          IconButton(
            onPressed: (){
            },
            icon: Icon(Icons.camera_alt_sharp, color: Colors.white,),
          ),
          IconButton(
            onPressed: (){
            },
            icon: Icon(Icons.note_alt, color: Colors.white,),
          ),
        ],
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Searchbar(),
                  Text("Filter", style: TextStyle(color: Colors.blue)),
                ],
              ),
            ),
            SizedBox(height: 10),
            Notes(),
            SizedBox( height: 5 ),
            FilterChat(),
            SizedBox( height: 5 ),
            Chat()
          ],
        ),
      )
    );
  }
}


class Chat extends StatelessWidget {
  final fakerFa = Faker(provider: FakerDataProviderFa());

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: 20,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage("https://picsum.photos/seed/${index+1}/200/300"),
          ),
          title: Text("${faker.internet.userName()}",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
          ),
          subtitle: Text("${faker.lorem.words(2).join(' ')}",
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
          ),
            trailing: Icon(Icons.camera_alt_sharp, color: Colors.white),
        );
      },
    );
  }
}


class Searchbar extends StatelessWidget {
  const Searchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(10)
      ),
      height: 40,
      width: MediaQuery.of(context).size.width * 0.8,
      child: ElevatedButton(
        onPressed: (){
          print("pressed");
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey[800],
          elevation: 0,
          shadowColor: Colors.transparent
        ),
        child: Row(
          children: [
            Icon(Icons.search, color: Colors.white,),
            SizedBox(width: 10),
            Text("Search", style: TextStyle(color: Colors.white),)
          ],
        ),
      )
    );
  }
}

class Notes extends StatelessWidget {
  const Notes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        itemBuilder: (context, index) {
          if(index == 0){
            return Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 25),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage("https://picsum.photos/seed/932/200/300"),
                          fit: BoxFit.cover,
                        ),
                      )
                    ),
                    Container(
                      height: 30,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.grey[600],
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text("add notes",
                      style: TextStyle(
                        fontSize: 12
                      ),
                      textAlign: TextAlign.center,
                      )
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15, right: 38),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[600],
                        radius: 10,
                      )
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 38, right: 20),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[600],
                        radius: 5,
                      )
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Text("Your Notes",
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
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 25),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage("https://picsum.photos/seed/${index+121}/200/300"),
                          fit: BoxFit.cover,
                        ),
                      )
                    ),
                    Container(
                      height: 30,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.grey[600],
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text("${faker.lorem.words(1).join()}",
                      style: TextStyle(
                        fontSize: 12
                      ),
                      textAlign: TextAlign.center,
                      )
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15, right: 38),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[600],
                        radius: 10,
                      )
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 38, right: 20),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[600],
                        radius: 5,
                      )
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Text("${faker.person.lastName()}",
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

class FilterChat extends StatelessWidget {
  const FilterChat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.grey[800],
            ),
            child: Row(
              children: [
                SizedBox(width: 10),
                CircleAvatar(
                  backgroundColor: Colors.blue[600],
                  radius: 3,
                ),
                SizedBox(width: 10),
                Text("Category ${index+1}",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
                ),
                SizedBox(width: 10),
              ]
            )
          );
        },
      ),  
    );
  }
}