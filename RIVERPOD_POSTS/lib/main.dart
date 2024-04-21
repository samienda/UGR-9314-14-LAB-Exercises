import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
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

final postProvider = FutureProvider<List<Post>>((ref) async {
  return fetchPost();
});

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

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final posts = ref.watch(postProvider);
    return Scaffold(
      body: Center(
        child: posts.when(
          data: (post) => ListView.builder(
            itemCount: post.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(post[index].title),
                subtitle: Text(post[index].body),
              );
            },
          ),
          loading: () => const CircularProgressIndicator(),
          error: (error, stackTrace) => Text(' $error'),
        ),
      ),
    );
  }
}
