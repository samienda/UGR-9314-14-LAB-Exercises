import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(BlocProvider(
    create: (BuildContext context) => PostBloc(),
    child: const MyApp(),
  ));
}

class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userId: json['userId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      body: json['body'] as String,
    );
  }
}

Future<List<Post>> fetchPost() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

  if (response.statusCode == 200) {
    final List<dynamic> body = jsonDecode(response.body);
    return body.map((dynamic item) => Post.fromJson(item)).toList();
  } else {
    throw 'Failed to load post';
  }
}

class PostEvent {}

class FetchPost extends PostEvent {}

class PostBloc extends Bloc<PostEvent, List<Post>> {
  PostBloc() : super([]) {
    on<FetchPost>((event, emit) async {
      emit(await fetchPost());
    });
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<PostBloc, List<Post>>(
        builder: (context, postList) {
          if (postList.isEmpty) {
            BlocProvider.of<PostBloc>(context).add(FetchPost());
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
            itemCount: postList.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(postList[index].title),
                subtitle: Text(postList[index].body),
              );
            },
          );
        },
      ),
    );
  }
}
