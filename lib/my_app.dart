import 'package:commerce_app/core/app/connectivity.dart';
import 'package:commerce_app/core/presentation/screens/no_network_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    // استدعاء الدالة في initState
    ConnectivityController.instance.init();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (_, value, __) {
        if (value) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Shopping App',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: const Scaffold(
              backgroundColor: Colors.red,
              body: Center(
                child: Text("hhhhhhhhhhhhhhhhh"),
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
