import 'package:dynamicthemeapp/ui/global/theme/app_theme.dart';
import 'package:dynamicthemeapp/ui/global/theme/bloc/themes_bloc.dart';
import 'package:dynamicthemeapp/ui/global/theme/bloc/themes_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PreferencePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferences'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount:  AppTheme.values.length,
        itemBuilder: (context, index) {
          final itemAppTheme = AppTheme.values[index];

          return Card(
            color: appThemeData[itemAppTheme].primaryColor,
            child: ListTile(
              title: Text(
                itemAppTheme.toString(),
                style: appThemeData[itemAppTheme].textTheme.bodyText1,
              ),
              onTap: () {
                BlocProvider.of<ThemeBloc>(context).add(ThemeChange(theme: itemAppTheme));
              },
            ),
          );
        },
      ),
    );
  }
}