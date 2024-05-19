import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vote_uac_joseph/blocs/President/president_bloc.dart';
import 'package:vote_uac_joseph/blocs/bulletin/bulletin_bloc.dart';
import 'package:vote_uac_joseph/screens/login_screen.dart';
import 'package:vote_uac_joseph/screens/main_screen.dart';
import 'package:vote_uac_joseph/screens/vote_president_screen.dart';
import 'package:vote_uac_joseph/screens/vote_vice_president_screen.dart';

import 'blocs/VicePresident/vice_president_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PresidentBloc()..add(LoadPresidentEvent()),
        ),
        BlocProvider(
          create: (context) =>
              VicePresidentBloc()..add(LoadVicePresidentEvent()),
        ),
        BlocProvider(
          create: (context) => BulletinBloc()..add(LoadBulletinEvent()),
        ),
      ],
      child: MaterialApp(
        title: 'Vote UAC',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const LoginScreen(),
        routes: {
          "vote_president": (context) => const VotePresidentScreen(),
          "vote_vice_president": (context) => const VoteVicePresidentScreen(),
          "main_screen": (context) => const MainScreen(),
        },
      ),
    );
  }
}
