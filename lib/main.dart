import 'package:dynamicthemeapp/ui/global/theme/bloc/themes_bloc.dart';
import 'package:dynamicthemeapp/ui/global/theme/bloc/themes_state.dart';
import 'package:dynamicthemeapp/ui/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(),
      child: BlocBuilder <ThemeBloc, ThemeState>(
        builder: _buildWithTheme,
      ),
    );
  }

  Widget _buildWithTheme(BuildContext context, ThemeState state) {
    return MaterialApp(
      title: 'Themes App',
      debugShowCheckedModeBanner: false,
      theme: state.themeData,
      home: HomePage(),
    );
  }
}