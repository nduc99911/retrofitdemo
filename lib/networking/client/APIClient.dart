import 'dart:io';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart' as http;
import 'package:retrofitdemo/networking/model/post.dart';
import 'package:retrofitdemo/networking/model/response/get_comment.dart';
import 'package:retrofitdemo/networking/model/response/get_user.dart';
import 'package:retrofitdemo/networking/model/response/get_users.dart';
import 'package:retrofitdemo/networking/model/response/post_user.dart';
import 'package:retrofitdemo/networking/model/user.dart';

part 'APIClient.g.dart';

const key =
    'Bearer 04460cd3f3fbe5d529965a2e85009fcfb0e010faa592e53b16b2196be71cb046';

@RestApi(baseUrl: "https://jsonplaceholder.typicode.com/")
abstract class APIClient {
  factory APIClient(Dio dio, {String baseUrl}) = _APIClient;

  //=====GET=====//
  @GET('/users')
  Future<GetUserResponseData> getUser();

//get using path /user/{id}
  @GET('/users/{id}')
  Future<GetUserResponse> getUserWithId(@Path("id") int id);

  //get using @query  /comment?post_id=11
  @GET('/comments')
  Future<GetCommentsResponse> getPostComments(@Query("post_id") int postId);

//comments?post_id=5&email=nduc99911@gmail.com
  @GET('/comments')
  Future<GetCommentsResponse> getPostCommentWithQueryMap(
    @Queries() Map<String, dynamic> queries,
  );

  //===POST====//
  @POST("/users")
  @http.Headers(<String, dynamic>{
    HttpHeaders.authorizationHeader: key,
  })
  Future<GetUserResponse> createUser(@Body() User user);

//TEST POST
  @http.POST("/posts")
  Future<PostUser> PostUsers(@Body() PostUser user);

  //PUT//
  @PUT("/users/{id}")
  @http.Headers(<String, dynamic>{
    HttpHeaders.authorizationHeader: key,
  })
  Future<GetUserResponse> createUser1(@Body() User user);
}
