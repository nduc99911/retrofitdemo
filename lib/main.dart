import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:retrofit/retrofit.dart';
import 'package:retrofitdemo/networking/client/APIClient.dart';
import 'package:retrofitdemo/networking/model/post.dart';
import 'package:retrofitdemo/networking/model/response/get_users.dart';
import 'package:retrofitdemo/networking/model/user.dart';

import 'networking/model/response/get_comment.dart';
import 'networking/model/response/get_user.dart';
import 'networking/model/response/post_user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: Post());
  }
}

FutureBuilder<GetUserResponseData> _getUser(BuildContext context) {
  final client = APIClient(Dio(BaseOptions(contentType: "application/json")));
  return FutureBuilder<GetUserResponseData>(
    future: client.getUser(),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done) {
        final GetUserResponseData? userData = snapshot.data;
        return ListView.builder(
          itemCount: userData!.data!.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 4,
              child: Text('${userData.data![index].email}'),
            );
          },
        );
      } else {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
    },
  );
}

//get user by id
FutureBuilder<GetUserResponse> _getUserById(BuildContext context) {
  final client = APIClient(Dio(BaseOptions(contentType: "application/json")));
  return FutureBuilder<GetUserResponse>(
    future: client.getUserWithId(1325),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done) {
        final GetUserResponse? userData = snapshot.data;
        return ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Card(
              elevation: 4,
              child: Text('${userData!.data.email}'),
            );
          },
        );
      } else {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
    },
  );
}

//get comment
FutureBuilder<GetCommentsResponse> _getComment(BuildContext context) {
  final client = APIClient(Dio(BaseOptions(contentType: "application/json")));
  return FutureBuilder<GetCommentsResponse>(
    future: client.getPostComments(1325),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done) {
        final GetCommentsResponse? userData = snapshot.data;
        return ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Card(
              elevation: 4,
              child: Text('${userData!.data![index].name}'),
            );
          },
        );
      } else {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
    },
  );
}

//get comment query
FutureBuilder<GetCommentsResponse> _getCommentQuery(BuildContext context) {
  final client = APIClient(Dio(BaseOptions(contentType: "application/json")));
  Map<String, dynamic> map = {"post_id": "5", "name": "Gurdev Gandhi LLD"};
  return FutureBuilder<GetCommentsResponse>(
    future: client.getPostCommentWithQueryMap(map),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done) {
        final GetCommentsResponse? userData = snapshot.data;
        return ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Card(
              elevation: 4,
              child: Text('${userData!.data![index].email}'),
            );
          },
        );
      } else {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
    },
  );
}

//post
class Post extends StatefulWidget {
  const Post({Key? key}) : super(key: key);

  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          RaisedButton(onPressed: () async {
            // setState(() {
            //   check = true;
            // });
            try {
              final client =
                  APIClient(Dio(BaseOptions(contentType: "application/json")));
              await client.PostUsers(new PostUser(1, 1, "ok", "ok"))
                  .then((value) => print(value.toJson()));
            } catch (e) {
              print(e);
            }
          }),
          // check
          //     ? _Post(context)
          //     : SizedBox(
          //         height: 100,
          //         child: Text('data'),
          //       )
        ],
      ),
    );
  }
}

// FutureBuilder<PostUserData> _Post(BuildContext context) {
//   final client = APIClient(Dio(BaseOptions(contentType: "application/json")));
//   return FutureBuilder<PostUserData>(
//     future: client.PostUsers(PostUser(1, 1, "ok", "ok")),
//     builder: (context, snapshot) {
//       if (snapshot.connectionState == ConnectionState.done) {
//         final PostUserData? userData = snapshot.data;
//         print('ok');
//         return Text('${userData!.data.body}');
//       } else {
//         return Center(
//           child: CircularProgressIndicator(),
//         );
//       }
//     },
//   );
// }
