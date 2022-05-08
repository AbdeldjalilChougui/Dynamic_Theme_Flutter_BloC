import 'dart:async';
import 'package:bloc/bloc.dart';
import '../app_theme.dart';
import 'themes_event.dart';
import 'themes_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  @override
  // TODO: implement initialState
  ThemeState get initialState => ThemeState(themeData: appThemeData[AppTheme.GreenLight]);

  @override
  Stream<ThemeState> mapEventToState(ThemeEvent event) async* {
    if (event is ThemeChange) {
      yield ThemeState(themeData: appThemeData[event.theme]);
    }
  }
}