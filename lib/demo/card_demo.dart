import 'package:flutter/material.dart';
import '../model/post.dart';
import './post_show.dart';

class CardDemo extends StatefulWidget {
  @override
  _CardDemoState createState() => _CardDemoState();
}

class _CardDemoState extends State<CardDemo> {
  Color _favoriteColor = Colors.grey[300];
  int _favoriteIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (BuildContext context, int index) => Stack(
              children: posts
                  .map((post) => Card(
                        elevation: 0.0,
                        margin: EdgeInsets.only(bottom: 36.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: Column(
                          children: <Widget>[
                            AspectRatio(
                              aspectRatio: 3 / 2,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0),
                                ),
                                child: Image.network(
                                  posts[index].imageUrl,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.only(
                                top: 6.0,
                                bottom: 2.0,
                                left: 16.0,
                              ),
                              leading: CircleAvatar(
                                backgroundImage:
                                    NetworkImage(posts[index].imageUrl),
                              ),
                              title: Text(posts[index].title),
                              subtitle: Text(posts[index].author),
                              trailing: IconButton(
                                icon: Icon(
                                  Icons.favorite,
                                  color: _favoriteColor,
                                  size: 20.0,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _favoriteColor = Colors.red[300];
                                  });
                                },
                              ),
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => PostShow(
                                          post: posts[index],
                                        )));
                              },
                            ),
                          ],
                        ),
                      ))
                  .toList(),
            ),
      ),
    );
  }
}