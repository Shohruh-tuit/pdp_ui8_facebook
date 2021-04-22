import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: Text(
          "Facebook",
          style: TextStyle(
            color: Colors.blueAccent,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.grey[400],
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.camera_alt),
            color: Colors.grey[400],
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: [
          // # post create
          Container(
            height: 120,
            color: Colors.black,
            padding: EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/images/user_5.jpeg"),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          height: 46,
                          padding: EdgeInsets.only(left: 15, right: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            border: Border.all(
                              width: 1,
                              color: Colors.grey[500],
                            ),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "What's on your mind?",
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                color: Colors.grey[700],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.video_call,
                              color: Colors.red,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Live",
                              style: TextStyle(color: Colors.grey[400]),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 1,
                        color: Colors.grey[300],
                        margin: EdgeInsets.only(top: 14, bottom: 14),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.photo,
                              color: Colors.green,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Photo",
                              style: TextStyle(
                                color: Colors.grey[400],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 1,
                        color: Colors.grey[400],
                        margin: EdgeInsets.only(top: 14, bottom: 14),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.red,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Chek in",
                              style: TextStyle(
                                color: Colors.grey[400],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // # post stories
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.only(top: 10, bottom: 10),
            height: 200,
            color: Colors.black,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: 10),
                makeStory(
                  storyImage: "assets/images/story_5.jpeg",
                  userImage: "assets/images/user_5.jpeg",
                  userName: "User five",
                ),
                makeStory(
                  storyImage: "assets/images/story_4.jpeg",
                  userImage: "assets/images/user_4.jpeg",
                  userName: "User four",
                ),
                makeStory(
                  storyImage: "assets/images/story_3.jpeg",
                  userImage: "assets/images/user_3.jpeg",
                  userName: "User three",
                ),
                makeStory(
                  storyImage: "assets/images/story_2.jpeg",
                  userImage: "assets/images/user_2.jpeg",
                  userName: "User two",
                ),
                makeStory(
                  storyImage: "assets/images/story_1.jpeg",
                  userImage: "assets/images/user_1.jpeg",
                  userName: "User one",
                ),
              ],
            ),
          ),

          // #post feed
          makeFeed(
            userName: "User two",
            userImage: "assets/images/user_2.jpeg",
            feedTime: "1 hr ago",
            feedText:
                "All the Lorem Ipsum generators on the Internet tend to repeat predefined",
            feedImage: "assets/images/story_2.jpeg",
            feedImage2: "assets/images/story_1.jpeg",
          ),
          makeFeed(
            userName: "User one",
            userImage: "assets/images/user_1.jpeg",
            feedTime: "1 hr ago",
            feedText:
                "All the Lorem Ipsum generators on the Internet tend to repeat predefined",
            feedImage: "assets/images/story_1.jpeg",
            feedImage2: "assets/images/story_2.jpeg",
          ),
          makeFeed(
            userName: "User three",
            userImage: "assets/images/user_3.jpeg",
            feedTime: "1 hr ago",
            feedText:
                "All the Lorem Ipsum generators on the Internet tend to repeat predefined",
            feedImage: "assets/images/story_3.jpeg",
            feedImage2: "assets/images/story_1.jpeg",
          ),
          makeFeed(
            userName: "User four",
            userImage: "assets/images/user_4.jpeg",
            feedTime: "1 hr ago",
            feedText:
                "All the Lorem Ipsum generators on the Internet tend to repeat predefined",
            feedImage: "assets/images/story_4.jpeg",
            feedImage2: "assets/images/story_1.jpeg",
          ),
          makeFeed(
            userName: "User five",
            userImage: "assets/images/user_5.jpeg",
            feedTime: "1 hr ago",
            feedText:
                "All the Lorem Ipsum generators on the Internet tend to repeat predefined",
            feedImage: "assets/images/story_5.jpeg",
            feedImage2: "assets/images/story_1.jpeg",
          ),
        ],
      ),
    );
  }

  Widget makeStory({storyImage, userImage, userName}) {
    return AspectRatio(
      aspectRatio: 1.3 / 2,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image:
              DecorationImage(image: AssetImage(storyImage), fit: BoxFit.cover),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.4),
                Colors.black.withOpacity(.1),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 5),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blue, width: 2),
                  image: DecorationImage(
                    image: AssetImage(userImage),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  userName,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget makeFeed(
      {userName, userImage, feedTime, feedText, feedImage, feedImage2}) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // padding: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                SizedBox(height: 10),

                // #Feed top
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(userImage),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              userName,
                              style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 3),
                            Text(
                              feedTime,
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            )
                          ],
                        )
                      ],
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.more_horiz_outlined,
                        size: 30,
                        color: Colors.grey[400],
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
                SizedBox(height: 10),

                // #Feed comment
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10, left: 5),
                  child: Text(
                    feedText,
                    style: TextStyle(color: Colors.grey[400], height: 1.5),
                  ),
                ),

                // #Feed image
                Container(
                  height: 240,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Image(
                            image: AssetImage(feedImage),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 4),
                      Expanded(
                        child: Container(
                          child: Image(
                            image: AssetImage(feedImage2),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 10),

                // #Feed bottom
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10, bottom: 10),
                      padding: EdgeInsets.only(right: 10),

                      // #like
                      child: Row(
                        children: [
                          makeLike(),
                          Transform.translate(
                            offset: Offset(-5, 0),
                            child: makeLove(),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Text(
                              "2.5K",
                              style: TextStyle(
                                color: Colors.grey[400],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10, bottom: 10),
                      child: Text(
                        "400 Comments",
                        style: TextStyle(color: Colors.grey[400]),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),

          // #like,comments,share
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              makeLikeButton(isActive: true),
              makeCommentButton(),
              makeShareButton(),
            ],
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget makeLikeButton({bool isActive}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.thumb_up,
              color: isActive ? Colors.blue : Colors.grey,
              size: 22,
            ),
            SizedBox(width: 5),
            Text(
              "Like",
              style: TextStyle(
                  color: isActive ? Colors.blue : Colors.grey, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }

  Widget makeCommentButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.chat,
              color: Colors.grey,
              size: 22,
            ),
            SizedBox(width: 5),
            Text(
              "Comment",
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }

  Widget makeShareButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.share,
              color: Colors.grey,
              size: 22,
            ),
            SizedBox(width: 5),
            Text(
              "share",
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }

  Widget makeLike() {
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white),
      ),
      child: Icon(
        Icons.thumb_up,
        size: 13,
        color: Colors.white,
      ),
    );
  }

  Widget makeLove() {
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white),
      ),
      child: Icon(
        Icons.favorite,
        size: 13,
        color: Colors.white,
      ),
    );
  }
}
