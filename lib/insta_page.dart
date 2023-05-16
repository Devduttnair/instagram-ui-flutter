import 'package:flutter/material.dart';

class InstaPage extends StatefulWidget {
  const InstaPage({Key? key}) : super(key: key);

  @override
  State<InstaPage> createState() => _InstaPageState();
}

class _InstaPageState extends State<InstaPage> {
  List<IconData> iconList = [Icons.account_circle_outlined];
  List<String> imageList = ['https://i5.walmartimages.com/asr/f72a707b-0368-4f8a-a2ca-5eb840da4f2b_1.beadca3c003400c0e00ebd4e565f965f.jpeg'];
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Instagram',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.only(left: 140),
              child: Icon(
                Icons.favorite_border,
                size: 30,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Icon(
                Icons.messenger,
                size: 30,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: iconList.length,
        itemBuilder: (context, index) {
          return SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10,top: 20),
                      child: Icon(
                        Icons.account_circle_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7,vertical: 20),
                      child: Text("wecodelife",style: TextStyle(color: Colors.white,fontSize: 20),),
                    ),

                  ],
                ),
                (Image.network(imageList [index],width: 650,height:450,)),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 16),
                    child: Icon(Icons.favorite,color: Colors.white,),),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 30,vertical: 16),
                      child: Icon(Icons.comment,color: Colors.white,),),
                    Padding(padding: EdgeInsets.only(left: 230),
                      child: Icon(Icons.save,color: Colors.white,),),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 0),
                      child: Text('Liked by athul__peter__ and 18 others ',style: TextStyle(color: Colors.white),),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                    child: Text('wecodelife',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 5,vertical: 8),
            child: Text('Are you a aspiring software engineer?\n'
                'We will guide you to the top!',style: TextStyle(color: Colors.white)
            ))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 70),
                  child: BottomNavigationBar( items:  <BottomNavigationBarItem>[
                    BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home',
                    ),
                    BottomNavigationBarItem(icon: Icon(Icons.search),label: 'search',
                    ),
                    BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined),label: 'add_photo',
                    ),
                    BottomNavigationBarItem(icon: Icon(Icons.video_collection_outlined),label: 'add_video',
                    ),
                    BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: 'account',
                    ),
                  ],

                    selectedItemColor: Colors.grey,
                    unselectedItemColor: Colors.grey,

                  ),
                ),
              ],
              
            ),
          );
        },
      ),
    );
 }
}
