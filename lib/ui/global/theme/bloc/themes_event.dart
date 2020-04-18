import 'package:dynamicthemeapp/ui/global/theme/app_theme.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';


@immutable
abstract class ThemeEvent extends Equatable {
  final List props;
  ThemeEvent([this.props = const <dynamic> []]) : super();
}

class ThemeChange extends ThemeEvent {
  final AppTheme theme;
  ThemeChange({@required this.theme}) : super ([theme]);
}