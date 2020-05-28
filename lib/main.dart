import 'package:portfolio/utils/select_player.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en'), Locale('pt')],
        path: 'assets/translations',
        fallbackLocale: Locale('en'),
        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Pixel',
      ),
      home: SelectPlayer(),
    );
  }
}
