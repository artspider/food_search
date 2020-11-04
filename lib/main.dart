import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'core/theme.dart';
import 'features/auth/presentation/provider/user_provider.dart';
import 'features/splashAndonBording/presentation/widgets/splash.dart';
import 'features/splashAndonBording/presentation/widgets/welcome.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider()),
      ],
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      title: 'Fast Food App',
      home: PageView(
        children: [
          Splash(),
          Welcome(),
        ],
      ),
      theme: foodTheme,
    );
  }
}
