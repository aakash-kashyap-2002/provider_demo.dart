import 'package:flutter/material.dart';
import 'package:learning_provider_app/homepage.dart';
import 'package:learning_provider_app/provider/list_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NumberListProvider()),
      ],
      child: MaterialApp(
        title: 'Provider Demo',
        debugShowCheckedModeBanner: false,
        darkTheme: ThemeData.dark(useMaterial3: true),
        home: const Homepage(),
      ),
    );
  }
}
