import 'package:commerce_app/core/app/connectivity.dart';
import 'package:commerce_app/core/presentation/screens/no_network_screen.dart';
import 'package:commerce_app/core/routes/app_router.dart';
import 'package:commerce_app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    
    ConnectivityController.instance.init();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (_, value, __) {
        if (value) {
          return ScreenUtilInit(
            designSize: const Size(375, 812),
            minTextAdapt: true,
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Shopping App',
              theme: themeDark(),
              // ThemeData(
              //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              //   useMaterial3: true,
              // ),
              onGenerateRoute: AppRouter.onGenerateRoute,
              // initialRoute: ,
              home: const Scaffold(
                backgroundColor: Colors.red,
                body: Center(
                  child: Text('hhhhhhhhhhhhhhhhh'),
                ),
              ),
            ),
          );
        } else {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Shopping App',
            home: NoNetworkScreen(),
          );
        }
      },
    );
  }
}
