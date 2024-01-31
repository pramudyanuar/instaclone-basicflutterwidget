import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('New Post',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold
          )
        ),
        leading: IconButton(
          icon: Icon(Icons.close,
          color: Colors.white,
          ),
          onPressed: () {
            
          },
        ),
        actions: [
          TextButton(
            onPressed: () {
              
            },
            child: Text('Next',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 16,
              fontWeight: FontWeight.bold
              )
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Photoselected(),
            FilterPicture(),
            Galleryphoto()
          ],
        ),
      ),
    );
  }
}

class Galleryphoto extends StatelessWidget {
  const Galleryphoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        itemCount: 50,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
        ),
        itemBuilder: (context,index){
          return Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://picsum.photos/id/${random.integer(999, min:100)}/200/300"),
                fit: BoxFit.cover,
              ),
            ),
          );
        }
      ),
    );
  }
}

class FilterPicture extends StatelessWidget {
  const FilterPicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.grey[900],
      child: Row(
        children: [
          SizedBox(width: 10,),
          Text("Latest",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold
            )
          ),
          Icon(Icons.keyboard_arrow_down,
          color: Colors.white,
          ),
          SizedBox(width: 220),
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.circular(50)
            ),
            child: Icon(Icons.layers,
            color: Colors.white,
            ),
          ),
          SizedBox(width: 20,),
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.circular(50)
            ),
            child: Icon(Icons.camera_alt_outlined,
            color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}

class Photoselected extends StatelessWidget {
  const Photoselected({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
      Container(
        height: 400,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://picsum.photos/seed/${random.integer(999, min:100)}/200/300"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.5),
          borderRadius: BorderRadius.circular(50)
        ),
        child: Icon(
          Icons.aspect_ratio_rounded, 
          color: Colors.white, 
          size: 40,
      ),
      )
      ]
    );
  }
}