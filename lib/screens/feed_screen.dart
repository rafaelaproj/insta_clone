import 'package:flutter/material.dart';
import 'package:insta_clone/models/posts_model.dart';
import 'package:insta_clone/screens/view_post_screen.dart';

class FeedScreen extends StatefulWidget {
  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  Widget _buildPost(int index) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Container(
        width: double.infinity,
        height: 560.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
        ),
        //child: Column(
        child: SingleChildScrollView(
          //physics: AlwaysScrollableScrollPhysics(),
          child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(0, 2),
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        child: ClipOval(
                          child: Image(
                            width: 50.0,
                            height: 50.0,
                            image: NetworkImage(posts[index].profilePhotoUri),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    title: Text(
                      posts[0].name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      posts[0].created,
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.more_vert),
                      color: Colors.black, 
                      onPressed: () {}
                    ),
                  ),
                  InkWell(
                    onTap: () {
                       Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (_) => ViewPostScreen(post: posts[index],),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      width: double.infinity,
                      height: 400.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            offset: Offset(0, 5),
                            blurRadius: 8.0,
                          ),
                        ],
                        image: DecorationImage(
                          image: NetworkImage(posts[index].photoUri),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.favorite_border),
                              iconSize: 30.0,
                              onPressed: () {}
                            ),
                            Text(
                              posts[index].likes.toString(),
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 20.0),
                        Row(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.chat),
                              iconSize: 30.0,
                              onPressed: () {
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(
                                    builder: (_) => ViewPostScreen(post: posts[index],),
                                  ),
                                );
                              },
                            ),
                            Text(
                              '350',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                   ),
                  IconButton(
                    icon: Icon(Icons.bookmark_border), 
                    iconSize: 30.0,
                    onPressed: () {}
                  ),
                ],
              ),
            ),
          ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDF0F6),
      body: ListView(
        physics: AlwaysScrollableScrollPhysics(),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Insta Clone', 
                  style: TextStyle(
                    fontFamily: "Billabong",
                    fontSize: 32.0,
                  ),
                ),
                SizedBox(width: 16.0),
                Container(
                  width: 35.0,
                  child: IconButton(
                    icon: Icon(Icons.send),
                    iconSize: 30.0,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 100.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: stories.length + 1,
              itemBuilder: (BuildContext context, int index) {
                if(index == 0) {
                  return SizedBox(width: 10.0);
                }
                return Container(
                  margin: EdgeInsets.all(10.0),
                  width: 60.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        offset: Offset(0, 2),
                        blurRadius: 6.0,
                      ),
                    ]
                  ),
                  child: CircleAvatar(
                    child: ClipOval(
                      child: Image(
                        width: 60.0,
                        height: 60.0,
                        image: NetworkImage(stories[index - 1]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          _buildPost(0),
          _buildPost(1),
          _buildPost(2),
          _buildPost(3),
          _buildPost(4),
          _buildPost(5),
          _buildPost(6),
          _buildPost(7),
          _buildPost(8),
          _buildPost(9),
          _buildPost(10),
          _buildPost(11),
          _buildPost(12),
          _buildPost(13),
          _buildPost(14),
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.dashboard,
                size: 30.0,
                color: Colors.grey,
              ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 30.0,
                color: Colors.grey,
              ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 5.0,
                  vertical: 10.0,
                ),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusDirectional.circular(30.0),
                  ),
                  color: Colors.orange,
                  onPressed: () {},
                  child: Icon(
                    Icons.add, 
                    size: 35.0,
                    color: Colors.white,
                  ),
                ),
              ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
                size: 30.0,
                color: Colors.grey,
              ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                size: 30.0,
                color: Colors.grey,
              ),
              title: Text(''),
            ),
          ],
        ),
      ),
    );
  }
}