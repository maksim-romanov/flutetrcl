import 'package:flutter/material.dart';

class AppTheme {
  static final colorScheme = ColorScheme.light().copyWith(
    brightness: Brightness.light,
    //
    primary: Color(0xFF1A1A19),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFFFFFFF),
    onPrimaryContainer: Color(0xFF1A1A19),
    //
    secondary: Color(0xFFeeeeee),
    onSecondary: Color(0xFF1A1A19),
    // secondaryContainer: Color(0xFF66FFF9),
    // onSecondaryContainer: Color(0xFF000000),
    //
    // tertiary: Color(0xFF018786),
    // onTertiary: Color(0xFFFFFFFF),
    // tertiaryContainer: Color(0xFF5DF3EB),
    // onTertiaryContainer: Color(0xFF000000),
    // error: Color(0xFFB00020),
    // onError: Color(0xFFFFFFFF),
    // errorContainer: Color(0xFFFCD8DF),
    // onErrorContainer: Color(0xFF41000B),
    surface: Color(0xFFFFFFFF),
    onSurface: Color(0xFF1A1A19).withValues(alpha: .3),
    // surfaceContainerLowest: Color(0xFFF7F6F9),
    // surfaceContainerLow: Color(0xFFE7E0EC),
    // surfaceContainerHigh: Color(0xFFD0BCFF),
    // surfaceContainerHighest: Color(0xFFBB86FC),
    // onSurfaceVariant: Color(0xFF49454F),
    outline: Color(0xFF1A1A19),
    // outlineVariant: Color(0xFFD0C4DB),
    shadow: Color(0xFF000000),
    scrim: Color(0xFF000000),
    inverseSurface: Color(0xFF313033),
    onInverseSurface: Color(0xFFF4EFF4),
    // inversePrimary: Color(0xFFD0BCFF),
    // surfaceTint: Color(0xFF6200EE),
  );

  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    colorScheme: colorScheme,
    scaffoldBackgroundColor: colorScheme.surface,
    appBarTheme: AppBarTheme().copyWith(
      backgroundColor: colorScheme.primaryContainer,
      foregroundColor: colorScheme.onPrimaryContainer,
      elevation: 0,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: colorScheme.primaryContainer,
        foregroundColor: colorScheme.onPrimaryContainer,
      ),
    ),
    textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(foregroundColor: colorScheme.primaryContainer)),
    buttonTheme: ButtonThemeData(buttonColor: colorScheme.primary, textTheme: ButtonTextTheme.normal),
  );
}
